<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="admin_adopciones.aspx.cs" Inherits="adopciones_admin_adopciones" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/admin_adopciones.css" rel="stylesheet" />
    <style>
       
        #deleteButton {
            background-color: red;
            color: white;
        }
    </style>

    <div class="form-container">  
        <h1>Adopciones</h1>  
        <form id="adoptionForm">  

            <div class="form-group">  
                <label for="adoptionId">Id de Adopción:</label>  
                <input type="text" id="adoptionId" name="adoptionId"> 
                <p></p>
                <button type="button" id="searchButton">Buscar</button>  
            </div>  

            <div class="form-group">  
                <label for="adoptionDate">Fecha de Adopción:</label>  
                <input type="date" id="adoptionDate" name="adoptionDate" required>  
            </div>  

            <div class="form-group">  
                <label for="status">Estado:</label>  
                <select id="status" name="status" required>  
                    <option value="" disabled selected>Seleccione un estado</option>  
                    <option value="completada">Completada</option>  
                    <option value="pendiente">Pendiente</option>  
                    <option value="cancelada">Cancelada</option>  
                </select>  
            </div>  

            <div class="form-group">  
                <label for="user">Usuario:</label>  
                <select id="user" name="user" required>  
                    <option value="" disabled selected>Seleccione un usuario</option>  
                </select>  
            </div>  

            <div class="form-group">  
                <label for="institution">Institución:</label>  
                <select id="institution" name="institution" required>  
                    <option value="" disabled selected>Seleccione una institución</option>  
                </select>  
            </div>  

            <div class="form-group">  
                <label for="resident">Residente:</label>  
                <select id="resident" name="resident" required>  
                    <option value="" disabled selected>Seleccione un residente</option>  
                </select>  
            </div>  

            <div class="button-group">  
                <button type="submit">Guardar</button>  
                <button type="button" id="updateButton">Actualizar</button>  
                <button type="button" id="deleteButton">Eliminar</button>  
                <button type="button" id="consultButton" onclick="window.location.href='consultas_adopciones.aspx'">Consultar</button>
            </div>  
        </form>  
    </div>  

    <script>  
        document.getElementById('searchButton').addEventListener('click', function() {
            var adoptionId = document.getElementById('adoptionId').value;
            alert("Buscando la adopción con ID: " + adoptionId);
        });
    </script>  

</asp:Content>

