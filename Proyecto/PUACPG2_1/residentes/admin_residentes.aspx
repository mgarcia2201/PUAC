<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="admin_residentes.aspx.cs" Inherits="residentes_admin_residentes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/admin_residentes.css" rel="stylesheet" />
    <style>
        /* Aquí puedes agregar estilos personalizados si lo deseas */
    </style>

    <div class="form-container">  
        <h1>Residentes</h1>  
        <form id="residentsForm">  
          
            <div class="form-group">  
                <label for="residentId">ID del Residente:</label>  
                <input type="text" id="residentId" name="residentId" required>  
                <p></p>
                <button type="button" id="searchButton">Buscar</button>  
            </div>  

           
            <div class="form-group">  
                <label for="name">Nombre:</label>  
                <input type="text" id="name" name="name" required>  
            </div>  

           
            <div class="form-group">  
                <label for="type">Tipo:</label>  
                <select id="type" name="type" required>  
                    <option value="" disabled selected>Seleccione un tipo...</option>  
                    <option value="tipo1">Perro</option>  
                    <option value="tipo2">Gato</option>  
                    <option value="tipo3">Cocodrilo</option>  
                </select>  
            </div>  

          
            <div class="form-group">  
                <label for="age">Edad:</label>  
                <input type="number" id="age" name="age" required min="0">  
            </div>  

            
            <div class="form-group">  
                <label for="description">Descripción:</label>  
                <textarea id="description" name="description" rows="4" required></textarea>  
            </div>  

           
            <div class="form-group">  
                <label for="institution">Institución:</label>  
                <select id="institution" name="institution" required>  
                    <option value="" disabled selected>Seleccione una institución...</option>  
                    
                    <option value="1">Institución 1</option>  
                    <option value="2">Institución 2</option>  
                </select>  
            </div>  

            <div class="button-group">  
                <button type="submit">Guardar</button>  
                <button type="button" id="updateButton">Actualizar</button>  
                <button type="button" id="deleteButton">Eliminar</button>  
            </div>  
        </form>  
    </div>  

</asp:Content>

