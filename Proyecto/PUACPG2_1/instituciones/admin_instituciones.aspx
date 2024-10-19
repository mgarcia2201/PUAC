<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="admin_instituciones.aspx.cs" Inherits="instituciones_admin_instituciones" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/admin_instituciones.css" rel="stylesheet" />

 <style>
       
        .btn-danger {
            background-color: red;
            color: white;
        }
    </style>

    <div class="form-container">  
        <h1>Instituciones</h1>  
        <form id="institutionForm">  
             <div class="form-group OpUserList">  
                <label for="status">Institución</label>  
                <select id="opInst" onchange="DatosInst()">  
                    <option value="" disabled selected>Seleccione una institución</option>  
                    <asp:repeater id="RepDataInst" runat="server">
                         <itemtemplate> 
                            <option value='<%# Eval("id_institucion") %>'><%# Eval("nombre") %></option>
                        </itemtemplate>
                    </asp:repeater>
                </select>  
            </div> 

            <div class="form-group">  
                <label for="name">Nombre:</label>  
                <input type="text" id="name" name="name" required>  
            </div>  

            <div class="form-group">  
                <label for="status">Tipo de Institución:</label>  
                <select id="opTipoInst">  
                    <option value="" disabled selected>Seleccione un tipo</option>  
                    <asp:repeater id="RepDataTipoInst" runat="server">
                         <itemtemplate> 
                            <option value='<%# Eval("id_tipo_empresa") %>'><%# Eval("tipo_empresa") %></option>
                        </itemtemplate>
                    </asp:repeater>
                </select>  
            </div>  

            <div class="form-group">  
                <label for="location">Ubicación:</label>  
                <input type="text" id="location" name="location" required>  
            </div>  

            <div class="form-group">  
                <label for="description">Descripción:</label>  
                <textarea id="description" name="description" rows="4" required></textarea>  
            </div>  

            <div class="form-group">  
                <label for="contact">Contacto:</label>  
                <input type="text" id="contact" name="contact" required>  
            </div>  

            <%--<div class="form-group">  
                <label for="social">Red Social:</label>  
                <input type="url" id="social" name="social" required>  
            </div>  --%>

            <div class="form-group">  
                <label for="bankName">Nombre del Banco:</label>  
                <input type="text" id="bankName" name="bankName" required>  
            </div>  

            <div class="form-group">  
                <label for="accountType">Tipo de Cuenta:</label>  
                <select id="accountType" name="accountType" required>  
                    <option value="" disabled selected>Seleccione un tipo de cuenta</option>  
                    <option value="1">Monetaria</option>  
                    <option value="2">Ahorro</option>  
                </select>  
            </div>  

            <div class="form-group">  
                <label for="accountNumber">No. de Cuenta:</label>  
                <input type="text" id="accountNumber" name="accountNumber" required>  
            </div>  

            <div class="button-group">  
                <button type="submit" onclick ="guardarEmp()">Guardar</button>  
                <button type="button" id="updateButton" onclick ="ActualizarEmp()">Actualizar</button>  
                <button type="button" class="btn-danger" onclick ="EliminarEmp()">Eliminar</button>  
            </div>  
        </form>  
    </div>  

    <script>  
       $(document).ready(function() {
            Permisos();
       });

        function guardarEmp() {

             var institucion = $("#opInst").val();
             var nombre = $("#name").val();
             var TipoInst = $("#opTipoInst").val();
             var ubicacion = $("#location").val();
             var descripcion = $("#description").val();
             var contacto = $("#contact").val();
             var Nbanco = $("#bankName").val();
             var TipoCuenta = $("#accountType").val();
             var NoCuenta = $("#accountNumber").val();

            if (nombre != "" && TipoInst != "" && ubicacion != "" && descripcion != "" && contacto != "" && Nbanco != "" && TipoCuenta != "" && NoCuenta != "") {

                 var datos_enviados = {
                     'nombre': nombre,
                     'TipoInst': TipoInst,
                     'ubicacion': ubicacion,
                     'descripcion': descripcion,
                     'contacto': contacto,
                     'Nbanco': Nbanco,
                     'TipoCuenta': TipoCuenta,
                     'NoCuenta': NoCuenta
                 }

                $.ajax({
                     type: 'POST',
                     url: '../Instituciones/Servicios/Serv_Institucion.asmx/SaveInst',
                     data: JSON.stringify(datos_enviados),
                     contentType: 'application/json',
                     success: function (data) {
                         location.reload();
                     },
                     error: function (error) {
                         console.log(error)
                     }
                 });


            } else {
                alert("Datos vacíos");
            }


        }

        function DatosInst() {
            var institucion = $("#opInst").val();

               var datos_enviados = {
                     'idinstitucion': institucion
                 }

             $.ajax({
                type: 'POST',
                url: '../Instituciones/Servicios/Serv_Institucion.asmx/DatosInstitucion',
                data: JSON.stringify(datos_enviados), 
                contentType: 'application/json',
                    success: function (data) {

                        if (data.d.length > 0) {

                            $("#name").val(data.d[0].nombre);
                            $("#opTipoInst").val(data.d[0].tipo_empresa_id);
                            $("#location").val(data.d[0].ubicacion);
                            $("#description").val(data.d[0].descripcion);
                            $("#contact").val(data.d[0].contacto);
                            $("#bankName").val(data.d[0].nombre_banco);
                            $("#accountType").val(data.d[0].tipo_cuenta);
                            $("#accountNumber").val(data.d[0].no_cuenta);


                        } else {
                            alert("Se ha producido un error");
                        }

                },
                error: function (error) {
                    console.log(error)
                }
            });

        }

        function ActualizarEmp() {

            
             var institucion = $("#opInst").val();
             var nombre = $("#name").val();
             var TipoInst = $("#opTipoInst").val();
             var ubicacion = $("#location").val();
             var descripcion = $("#description").val();
             var contacto = $("#contact").val();
             var Nbanco = $("#bankName").val();
             var TipoCuenta = $("#accountType").val();
             var NoCuenta = $("#accountNumber").val();

            if (nombre != "" && TipoInst != "" && ubicacion != "" && descripcion != "" && contacto != "" && Nbanco != "" && TipoCuenta != "" && NoCuenta != "" && institucion != "") {

                 var datos_enviados = {
                     'institucion': institucion,
                     'nombre': nombre,
                     'TipoInst': TipoInst,
                     'ubicacion': ubicacion,
                     'descripcion': descripcion,
                     'contacto': contacto,
                     'Nbanco': Nbanco,
                     'TipoCuenta': TipoCuenta,
                     'NoCuenta': NoCuenta
                 }

                $.ajax({
                     type: 'POST',
                     url: '../Instituciones/Servicios/Serv_Institucion.asmx/EditInst',
                     data: JSON.stringify(datos_enviados),
                     contentType: 'application/json',
                     success: function (data) {
                         location.reload();
                     },
                     error: function (error) {
                         console.log(error)
                     }
                 });


            } else {
                alert("Datos vacíos");
            }

        }

        function EliminarEmp() {
            var institucion = $("#opInst").val();

            var datos_enviados = {
              'idinstitucion': institucion
            }


             $.ajax({
                type: 'POST',
                url: '../Instituciones/Servicios/Serv_Institucion.asmx/EliminarInst',
                data: JSON.stringify(datos_enviados), 
                contentType: 'application/json',
                    success: function (data) {
                        location.reload();

                      },
                error: function (error) {
                    console.log(error)
                }
            });
        }


    </script>  

</asp:Content>

