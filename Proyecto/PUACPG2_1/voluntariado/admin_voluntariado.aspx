<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="admin_voluntariado.aspx.cs" Inherits="voluntariado_admin_voluntariado" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/admin_voluntariado.css" rel="stylesheet" />
    <style>
        /* Estilo para el botón de eliminar */
        #deleteButton {
            background-color: red;
            color: white;
        }
    </style>
    
    <div class="form-container">  
        <h1>Voluntariado</h1>  
        <form id="volunteerForm">  
            
          <div class="form-group OpUserList">  
                <label for="status">Voluntarios</label>  
                <select id="opUser" onchange="DatosVoluntario()">  
                    <option value="" disabled selected>Seleccione un Voluntario</option>  
                    <asp:repeater id="RepUserData" runat="server">
                         <itemtemplate> 
                            <option value='<%# Eval("IdUser") %>_<%# Eval("inst") %>'><%# Eval("Nombre") %></option>
                        </itemtemplate>
                    </asp:repeater>
                </select>  
            </div>
            
            <div class="form-group">  
                <label for="description">Descripción:</label>  
                <textarea id="description" name="description" rows="4" required></textarea>  
            </div>  

            <div class="form-group">  
                <label for="startDate">Fecha de Inicio:</label>  
                <input type="date" id="startDate" name="startDate" required>  
            </div>  

            <div class="form-group">  
                <label for="endDate">Fecha de Finalización:</label>  
                <input type="date" id="endDate" name="endDate" required>  
            </div>  

            <div class="form-group">  
                <label for="status">Estado:</label>  
                <select id="status" name="status" required>  
                    <option value="" disabled selected>Seleccione un estado</option>  
                    <option value="1">Activo</option>  
                    <option value="0">Inactivo</option>  
                </select>  
            </div>  


               <div class="form-group">
                <label for="Usuario">Usuario:</label>
                <input type="text" id="Usuario" name="Usuario" disabled/>
            </div>

               <div class="form-group">
                <label for="instituc">Institución</label>
                <input type="text" id="instituc" name="instituc"  disabled/>
            </div>
        </form>  

          <div class="button-group">
            <%--<button type="button">Buscar</button>--%>
            <button type="submit" onclick="GuardaVoluntario();" class="btnUsuSave">Guardar</button>
        <%--    <button type="submit" onclick="ActualizarVoluntario();"  class="btnUsuUpdate">Actualizar</button>
            <button type="button" class="btn-danger btnUsuEli" onclick="EliminarVoluntario();">Eliminar</button>--%>
        </div>
    </div>  


    <script>
        $(document).ready(function () {
             Permisos();
            $(".hideZone").hide();
        });

        function DatosVoluntario() {

            //var datosUserEmp = $("#opUser").val();
            //const myArray = datosUserEmp.split("_");

            //var userid = myArray[0];
            //var empresaid = myArray[1];


        }

        function GuardaVoluntario() {
            
             var description = $("#description").val();
             var startDate = $("#startDate").val();
             var endDate = $("#endDate").val();
             var status = $("#status").val();
             var Usuario = $("#Usuario").val();
             var instituc = $("#instituc").val();

            var datosUserEmp = $("#opUser").val();
            const myArray = datosUserEmp.split("_");

            var userid = myArray[0];
            var empresaid = myArray[1];
            
            if (description != "" && startDate != "" && endDate != "" && status != "") {

                var datos_enviados = {
                    'description': description,
                    'startDate': startDate,
                    'endDate': endDate,
                    'status': status,
                    "userid":userid,
                    "empresaid": empresaid
                }

                $.ajax({
                     type: 'POST',
                     url: '../voluntariado/Servicios/Serv_Voluntarios.asmx/RegVoluntario',
                     data: JSON.stringify(datos_enviados),
                     contentType: 'application/json',
                     success: function (data) {
                         
                         if (data.d == "0") {
                             location.reload();
                             $("#description").val("");
                             $("#startDate").val("");
                             $("#endDate").val("");
                             $("#contrasena").val("");
                             $("#Usuario").val("");
                             $("#instituc").val("");

                         } else if (data.d == "1") {
                             alert("Fecha Existente");
                         } else {
                             //alert(data.d);
                         }
                     },
                     error: function (error) {
                         console.log(error)
                     }
                 });

            } else {
                alert("Campos Vacíos");
            }

        }

    </script>

</asp:Content>