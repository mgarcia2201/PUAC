<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="admin_usuarios.aspx.cs" Inherits="usuarios_admin_usuarios" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/admin_usuario.css" rel="stylesheet" />
    <link href="../CSS/admin_adopciones.css" rel="stylesheet" />

    <div class="form-container">
        <h1>Creación de Usuarios</h1>

          <div class="form-group OpUserList">  
                <label for="status">Voluntarios de la empresa</label>  
                <select id="opUser" onchange="DatosUser()">  
                    <option value="" disabled selected>Seleccione un Voluntario</option>  
                    <asp:repeater id="RepUserData" runat="server">
                         <itemtemplate> 
                            <option value='<%# Eval("IdUser") %>'><%# Eval("Nombre") %></option>
                        </itemtemplate>
                    </asp:repeater>
                </select>  
            </div>
        <div class="form-group empresaSlct">  
                <label for="status">Empresa Asociada</label>  
                <select id="OpEmpresa">  
                    <option value="" disabled selected>Seleccione una Empresa</option>  
                    <asp:repeater id="RepEmpData" runat="server">
                         <itemtemplate> 
                            <option value='<%# Eval("id_institucion") %>'><%# Eval("nombre") %></option>
                        </itemtemplate>
                    </asp:repeater>
                </select>  
            </div>  

        <div class="form-group">
            <label for="id_usuario">Usuario</label>
            <input type="text" id="id_usuario" name="id_usuario" />
            <p></p>
             <%--<button type="button" id="searchButton">Buscar</button> --%>
        </div>
        <div class="form-group">
            <label for="nombre">Nombre</label>
            <input type="text" id="nombre" name="nombre" />
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" />
        </div>
        <div class="form-group">
            <label for="contrasena">Contraseña</label>
            <input type="text" id="contrasena" name="contrasena" />
        </div>
        <div class="form-group">
            <label for="fecha_registro">Fecha de Registro</label>
            <input type="date" id="fecha_registro" name="fecha_registro" />
        </div>
        <div class="form-group" style="display:none">
            <label for="id_rol">ID Rol</label>
            <input type="text" id="id_rol" name="id_rol" value="3" disabled/>
        </div>

        <div class="button-group">
            <%--<button type="button">Buscar</button>--%>
            <button type="submit" onclick="SaveUsuario();" class="btnUsuSave">Guardar</button>
            <button type="submit" onclick="ActualizarUsuario();"  class="btnUsuUpdate">Actualizar</button>
            <button type="button" class="btn-danger btnUsuEli" onclick="EliminarUsuario();">Eliminar</button>
        </div>
    </div>

     <script>

        $( document).ready(function() {
            Permisos();
            CargaUser();
            CargaEmpresa();

            $(".btnUsuUpdate").hide();
            $(".btnUsuEli").hide();

        });


         function SaveUsuario() {

             var user = $("#id_usuario").val();
             var nombre = $("#nombre").val();
             var email = $("#email").val();
             var pass = $("#contrasena").val();
             var freg = $("#fecha_registro").val();
             var idrol = $("#id_rol").val();
             var idEmpresa = $("#OpEmpresa").val();

             if (user != "" && nombre != "" && email != "" && pass != "" && freg != "" && idrol != "" && idEmpresa != "" ) {

                 var datos_enviados = {
                     'user': user,
                     'nombre': nombre,
                     'email': email,
                     'pass': pass,
                     'freg': freg,
                     'idrol': idrol,
                     'idEmpresa': idEmpresa
                 }

                 $.ajax({
                     type: 'POST',
                     url: '../Usuarios/Servicios/Usuarios.asmx/RegUsers',
                     data: JSON.stringify(datos_enviados),
                     contentType: 'application/json',
                     success: function (data) {
                         location.reload();
                         if (data.d == "1") {
                             $("#id_usuario").val("");
                             $("#nombre").val("");
                             $("#email").val("");
                             $("#contrasena").val("");
                             $("#fecha_registro").val("");
                             $("#id_rol").val("");

                         } else {
                             alert(data.d);
                         }
                     },
                     error: function (error) {
                         console.log(error)
                     }
                 });

             } else {
                 alert('Campos vacíos');
             }
         }


         function DatosUser() {

             var datos_enviados = {

                 "userId": $("#opUser").val()
             }

                $.ajax({
                type: 'POST',
                url: '../Usuarios/Servicios/Usuarios.asmx/DatosUser',
                data: JSON.stringify(datos_enviados), 
                contentType: 'application/json',
                    success: function (data) {

                        if (data.d.length > 0) {

                             $("#id_usuario").val( data.d[0].Usuario);
                             $("#nombre").val(data.d[0].Nombre);
                             $("#email").val(data.d[0].email);
                             $("#contrasena").val(data.d[0].contrasena);

                            //var fechaNew = data.d[0].fechaReg
                            //document.getElementById("fecha_registro").valueAsDate = "12/01/2024";

                            let newdt = new Date(data.d[0].fechaReg);
                            document.getElementById("fecha_registro").valueAsNumber = (newdt.valueOf() - newdt.getTimezoneOffset() * 60000)
                            $('#OpEmpresa').val(data.d[0].idInstitucion);

                            $("#id_rol").val(data.d[0].idRol);

                            $(".btnUsuSave").hide();
                            $(".btnUsuUpdate").show();
                            

                            if ($("#TxidRol").val() == "1") {
                                 $(".btnUsuEli").show();
                             } else if ($("#TxidRol").val() == "2") {
                                $(".btnUsuEli").show();
                             } else if ($("#TxidRol").val() == "3") {
                               $(".btnUsuEli").hide();
                             }


                        } else {
                            alert("Se ha producido un error");
                        }

                },
                error: function (error) {
                    console.log(error)
                }
            });

         }

         function ActualizarUsuario() {
             var user = $("#id_usuario").val();
             var nombre = $("#nombre").val();
             var email = $("#email").val();
             var pass = $("#contrasena").val();
             var freg = $("#fecha_registro").val();
             var idrol = $("#id_rol").val();
             var idEmpresa = $("#OpEmpresa").val();


             if (user != "" && nombre != "" && email != "" && pass != "" && freg != "" && idrol != "" && idEmpresa != "") {

                 var datos_enviados = {
                     'iduser': $("#opUser").val(),
                     'user': user,
                     'nombre': nombre,
                     'email': email,
                     'pass': pass,
                     'freg': freg,
                     'idrol': idrol,
                     'idEmpresa': idEmpresa
                 }

                       $.ajax({
                        type: 'POST',
                        url: '../Usuarios/Servicios/Usuarios.asmx/EditUsers',
                        data: JSON.stringify(datos_enviados), 
                        contentType: 'application/json',
                            success: function (data) {

                                if (data.d == "1") {
                                    $("#id_usuario").val("");
                                    $("#nombre").val("");
                                    $("#email").val("");
                                    $("#contrasena").val("");
                                    $("#fecha_registro").val("");
                                    $("#id_rol").val("");
                                } else {
                                    alert(data.d);
                                }
                        },
                        error: function (error) {
                            console.log(error)
                        }
                    });

             }
         }


          function EliminarUsuario() {


                 var datos_enviados = {
                     'iduser': $("#opUser").val()
                 }

                       $.ajax({
                        type: 'POST',
                        url: '../Usuarios/Servicios/Usuarios.asmx/DeleteUsers',
                        data: JSON.stringify(datos_enviados), 
                        contentType: 'application/json',
                            success: function (data) {
                              
                                if (data.d == "1") {
                                      location.reload();
                                } else {
                                    alert(data.d);
                                }
                        },
                        error: function (error) {
                            console.log(error)
                        }
                    });

          }


         function CargaUser() {
             if ($("#TxidRol").val() == "3") {
                var idUsarBtn = $("#TxtidUser").val();
                $('#opUser').val($("#TxtidUser").val());
                 $(".OpUserList").hide();
                 DatosUser();
               
             }
         }

         function CargaEmpresa() {

             var Rol = $("#TxidRol").val();

             if ($("#TxidRol").val() == "1") {
                 $(".empresaSlct").show();
             } else if ($("#TxidRol").val() == "2") {
                   document.getElementById('OpEmpresa').disabled = true;
                  $('#OpEmpresa').val($("#TxidEmpresa").val());
             } else if ($("#TxidRol").val() == "3") {
                //$(".empresaSlct").hide();
                 document.getElementById('OpEmpresa').disabled = true;
                $('#OpEmpresa').val($("#TxidEmpresa").val());
             }
         }

   </script>

</asp:Content>