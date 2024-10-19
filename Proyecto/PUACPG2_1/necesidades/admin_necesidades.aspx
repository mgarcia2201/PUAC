<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="admin_necesidades.aspx.cs" Inherits="necesidades_admin_necesidades" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/admin_necesidades.css" rel="stylesheet" />

 <style>
       
        .btn-danger {
            background-color: red;
            color: white;
        }
    </style>
    
    <div class="form-container">  
        <h1>Necesidades</h1>  
        <form id="needsForm" aria-labelledby="needsFormLabel">  
            
            <div class="form-group">  
                <label for="needId">Identificador de Necesidad:</label>  
                <input type="text" id="needId" name="needId">  
                <p></p>
                <button type="button" id="searchButton">Buscar</button>  
            </div>  

            <div class="form-group">  
                <label for="description">Descripción:</label>  
                <textarea id="description" name="description" rows="4" required aria-required="true"></textarea>  
            </div>  

            <div class="form-group">  
                <label for="type">Tipo:</label>  
                <input type="text" id="type" name="type" required aria-required="true">  
            </div>  

            <div class="form-group">  
                <label for="priority">Prioridad:</label>  
                <select id="priority" name="priority" required aria-required="true">  
                    <option value="">Seleccionar prioridad...</option>  
                    <option value="alta">Alta</option>  
                    <option value="media">Media</option>  
                    <option value="baja">Baja</option>  
                </select>  
            </div>  

            <div class="form-group">  
                <label for="creationDate">Fecha de Creación:</label>  
                <input type="date" id="creationDate" name="creationDate" required aria-required="true">  
            </div>  

            <div class="form-group">  
                <label for="institutionAssign">Institución a Asignar:</label>  
                <select id="institutionAssign" name="institutionAssign" required aria-required="true">  
                    <option value="" disabled selected>Seleccione una institución...</option>  
                    <option value="1">Institución 1</option>  
                    <option value="2">Institución 2</option>  
                </select>  
            </div>  

            <div class="button-group">  
                <button type="submit">Guardar</button>  
                <button type="button" id="updateButton">Actualizar</button>  
                <button type="button" class="btn-danger">Eliminar</button>  
                <button type="button" id="consultButton" onclick="window.location.href='consultas_necesidades.aspx'">Consultar</button>
            </div>  
        </form>  
    </div>  

    <script>  
        document.getElementById('searchButton').addEventListener('click', function() {
            var needId = document.getElementById('needId').value;
            alert("Buscando la necesidad con ID: " + needId);
        });
    </script>  

</asp:Content>