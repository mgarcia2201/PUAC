<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="admin_foro.aspx.cs" Inherits="foro_admin_foro" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
 <link href="../CSS/admin_foro.css" rel="stylesheet" />
    <style>

    </style>

    <div class="form-container">
        <h1>Crear Foro</h1>
        <form id="forumForm" enctype="multipart/form-data">
            
              <div class="form-group">
<%--                <label for="forumImage">Cargar Imagen:</label>--%>
                 <button type="submit" onclick="SubirImg();" style="width:100%">Cargar Imagenes de foro</button><input ID="FileUpload" type='file' style="display:none"><br>
                 <input type="text" id="datoImg" value="Sin imagen" disabled/>
               <%-- <input type="file" id="forumImage" name="forumImage" accept="image/*" required />--%>
            </div>

            <div class="form-group">
                <label for="forumTitle">Título del Foro:</label>
                <input type="text" id="forumTitle" name="forumTitle" required />
            </div>
            
            <div class="form-group">
                <label for="forumDescription">Descripción:</label>
                <textarea id="forumDescription" name="forumDescription" rows="4" required></textarea>
            </div>
            
            <div class="form-group">
                <label for="creationDate">Fecha de Creación:</label>
                <input type="date" id="creationDate" name="creationDate" required  onclick=""/>
            </div>

            <div class="button-group">
                <button type="submit" onclick="GuardarForo();">Guardar</button>
                <button type="reset" style="display:none">Limpiar</button>
            </div>
        </form>
    </div>
     <%-- <div style="display:none">
            <input ID="FileUpload" type='file'><br>
     </div>--%>

    <script>
        var byteData;
        var fileName;

        $(document).ready(function () {
             Permisos();
            $(".hideZone").hide();

               document.getElementById('FileUpload').onchange = function (e) {
                    readURL(e.srcElement);
                };

        });

        function GuardarForo() {

            
             var TituloForo = $("#forumTitle").val();
             var Descripcion = $("#forumDescription").val();
             var FechaForo = $("#creationDate").val();
             var Imagen = byteData

             if (TituloForo != "" && Descripcion != "" && FechaForo != "" && Imagen != "") {

                 var datos_enviados = {
                     'TituloForo': TituloForo,
                     'Descripcion': Descripcion,
                     'FechaForo': FechaForo,
                     'Imagen': byteData

                 }

                       $.ajax({
                        type: 'POST',
                        url: '../foro/Servicios/Serv_Foro.asmx/SaveForo',
                        data: JSON.stringify(datos_enviados), 
                        contentType: 'application/json',
                            success: function (data) {
                                location.reload();
                                if (data.d == "1") {

                                   $("#forumTitle").val("");
                                   $("#forumDescription").val("");
                                   $("#creationDate").val("");
                                   $("#forumImage").val("")

                                     
                                } else {
                                    //alert(data.d);
                                }
                        },
                        error: function (error) {
                            console.log(error)
                        }
                    });

             }

        }


          function readURL(input) {
              fileName = "";
              byteData = "";

                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    var bfile;
                   
                    var contentType;


                    reader.readAsDataURL(input.files[0]);
                    fileName = input.files[0].name;
                    contentType = input.files[0].type;
                    var extt = input.files[0].name.split('.').pop().toLowerCase();
                    var size2 = input.files[0].size;

                    if (extt == "jpg" || extt == "jpeg" || extt == "pdf" || extt == "png" || extt == "doc" || extt == "docx" || extt == "xlsx" || extt == "xls") {
                        reader.onload = function (e) {

                            var ext = input.files[0].name.split('.').pop().toLowerCase();
                            var size = input.files[0].size;
                            if (size > 5242880) {
                                toastr.error('Archivo no puede superar los 5MB');
                            }
                            else {
                                //$('#profile-img-tag').attr('src', e.target.result);
                                bfile = e.target.result
                                //alert(bfile);   // this shows bfile
                                byteData = bfile.split(';')[1].replace("base64,", "");
                                //alert(byteData);
                                fileName = input.files[0].name;
                                contentType = input.files[0].type;
                                $('#datoImg').val(fileName);
                            }
                        }

                    } else {
                        toastr.warning("No se permite este tipo de archivo");
                    }
                  
                }
            }

        function SubirImg() {
             $('#FileUpload').trigger('click');
        }

    </script>

</asp:Content>