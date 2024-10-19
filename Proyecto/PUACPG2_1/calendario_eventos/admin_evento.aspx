<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="admin_evento.aspx.cs" Inherits="calendario_eventos_admin_evento" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/admin_evento.css" rel="stylesheet" />

    <style>
    
        /*#deleteButton {
            background-color: red;
            color: white;
        }*/
    </style>
 
    <div class="form-container">  
        <h1>Eventos</h1>  
        <form id="eventForm">  
           
            <div class="form-group">  
                <label for="eventId">ID del Evento:</label>  
                <input type="text" id="eventId" name="eventId">  
                <p></p>
                <button type="button" id="searchButton">Buscar</button>  
            </div>  

            <div class="form-group">  
                <label for="eventTitle">Título del Evento:</label>  
                <input type="text" id="eventTitle" name="eventTitle" required>  
            </div>  

            <div class="form-group">  
                <label for="eventDescription">Descripción:</label>  
                <textarea id="eventDescription" name="eventDescription" rows="4" required></textarea>  
            </div>  

            <div class="form-group">  
                <label for="startDate">Fecha de Inicio:</label>  
                <input type="date" id="startDate" name="startDate" required>  
            </div>  

            <div class="form-group">  
                <label for="endDate">Fecha de Fin:</label>  
                <input type="date" id="endDate" name="endDate" required>  
            </div>  

            <div class="form-group">  
                <label for="location">Ubicación:</label>  
                <input type="text" id="location" name="location" required>  
            </div>  

            <div class="form-group">  
                <label for="institution">Institución a la que pertenece el evento:</label>  
                <select id="institution" name="institution" required>  
                    <option value="" disabled selected>Seleccione una institución...</option>  
                    <option value="1">Institución 1</option>  
                    <option value="2">Institución 2</option>  
                </select>  
            </div>  

            <div class="button-group">  
                <button type="submit">Guardar</button>  
                <button type="button" id="updateButton">Actualizar</button>  
               <%-- <button type="button" id="deleteButton">Eliminar</button> --%> 
                <button type="button" id="consultButton" onclick="window.location.href='consultas_evento.aspx'">Consultar</button>
                <button type="button" class="btn-danger">Eliminar</button>
            </div>  
        </form>  
    </div>  

    <script>  
        document.getElementById('searchButton').addEventListener('click', function() {
            var eventId = document.getElementById('eventId').value;
            alert("Buscando el evento con ID: " + eventId);
        });
    </script>  

</asp:Content>
