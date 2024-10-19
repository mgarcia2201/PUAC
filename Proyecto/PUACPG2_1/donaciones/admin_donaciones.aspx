<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="admin_donaciones.aspx.cs" Inherits="donaciones_admin_donaciones" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/admin_donaciones.css" rel="stylesheet" />
<style>
       
        .btn-danger {
            background-color: red;
            color: white;
        }
    </style>

    <div class="form-container">  
        <h1>Donaciones</h1>  
        <form id="donationForm" enctype="multipart/form-data">   

            <div class="form-group">  
                <label for="amount">Monto:</label>  
                <input type="number" id="amount" name="amount" required min="0" step="0.01">  
            </div>  

            <div class="form-group">  
                <label for="type">Tipo:</label>  
                <input type="text" id="type" name="type" required>  
            </div>  

            <div class="form-group">  
                <label for="donationDate">Fecha de Donación:</label>  
                <input type="date" id="donationDate" name="donationDate" required>  
            </div>  

            <div class="form-group">  
                <label for="status">Estado:</label>  
                <select id="status" name="status" required>  
                    <option value="" disabled selected>Seleccione un estado...</option>  
                    <option value="1">Pendiente</option>  
                    <option value="2">Completada</option>  
                    <option value="3">Cancelada</option>  
                </select>  
            </div>  

            <div class="form-group">  
                <label for="receipt">Comprobante de Depósito:</label>  
                <input type="file" id="receipt" name="receipt" accept="image/*" required>  
            </div>  

            <div class="button-group">  
                <button type="submit" onclick="EnviarDonacion()">Enviar</button>  
<%--                <button type="button" id="updateButton">Actualizar</button>  
                <button type="button" class="btn-danger">Eliminar</button>
                <button type="button" id="searchButton" onclick="window.location.href='consultas_donaciones.aspx';">Buscar</button>  --%>
            </div>  
        </form>  
    </div>  

    <script>  


         $( document).ready(function() {
            Permisos();
         });

        function EnviarDonacion() {
            var amount = $("#amount").val();
            var type = $("#type").val();
            var donationDate = $("#donationDate").val();
            var status = $("#status").val();


              var datos_enviados = {
                     'amount': amount,
                     'type': type,
                     'donationDate': donationDate,
                     'status': status,

              }

              $.ajax({
                        type: 'POST',
                        url: '../Usuarios/Servicios/Usuarios.asmx/EnvioCorreoDonacion',
                        data: JSON.stringify(datos_enviados), 
                        contentType: 'application/json',
                            success: function (data) {
                                location.reload();
                                if (data.d == "1") {
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