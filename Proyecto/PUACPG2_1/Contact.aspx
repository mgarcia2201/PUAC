<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<link href="CSS/contacto.css" rel="stylesheet" />

    <style>

    </style>
    
    

    <div class="academic-info">
        <h4><strong><center>Información del Alumno</center></strong></h4>
        <p><strong>Universidad:</strong> Universidad Mariano Gálvez de Guatemala</p>
        <p><strong>Sede:</strong> San José Pinula</p>
        <p><strong>Jornada:</strong> Domingo</p>
        <p><strong>Nombre:</strong> Marco Antonio García Guzmán</p>
        <p><strong>Carnet:</strong> 3490-17-14048</p>
        <p><strong>Curso:</strong> Proyecto de Graduación II</p>

    </div>

    <%--<div class="contact-info">
        <h4>Información de Alumno</h4>
        <address>
            <strong>Dirección: Municipio de San José Pinula</strong><br />
   
            <abbr title="Celular">Celular:</abbr> (502) 3905-0581
        </address>     
    </div>--%>

    <div class="form-container">
        <h2>Envíe un Mensaje</h2>
        <form id="contactForm">
            <div class="form-group">
                <label for="name">Nombre:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="message">Mensaje:</label>
                <textarea id="message" name="message" rows="4" required></textarea>
            </div>
            <div class="button-group">
                <button type="submit" onclick="EnviarCorreo();">Enviar</button>
            </div>
        </form>
    </div>


      <script>

        $( document).ready(function() {
            Permisos();
        });

          function EnviarCorreo() {

             var user = $("#name").val();
             var mensaje = $("#message").val();

              var datos_enviados = {
                     'user': user,
                     'mensaje': mensaje
              }

              $.ajax({
                        type: 'POST',
                        url: '../Usuarios/Servicios/Usuarios.asmx/EnvioCorreo',
                        data: JSON.stringify(datos_enviados), 
                        contentType: 'application/json',
                            success: function (data) {
                                location.reload();
                                if (data.d == "1") {
                                    $("#name").val("");
                                    $("#email").val("");
                                    $("#message").val("");
                                } else {
                                    alert(data.d);
                                }
                        },
                        error: function (error) {
                            console.log(error)
                        }
                    });


          }

      </script>
</asp:Content>
