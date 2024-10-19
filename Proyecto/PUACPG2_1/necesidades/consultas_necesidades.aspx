<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="consultas_necesidades.aspx.cs" Inherits="necesidades_consultas_necesidades" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/consultas_necesidades.css" rel="stylesheet" />
    
    <div class="table-container">
        <h1>Necesidades</h1>
        <table id="needsTable">
            <thead>
                <tr>
                    <th>Id Necesidad</th>
                    <th>Descripción</th>
                    <th>Tipo</th>
                    <th>Prioridad</th>
                    <th>Fecha de Creación</th>
                    <th>Institución Id</th>
                </tr>
            </thead>
            <tbody>
               
                <tr>
                    <td>1</td>
                    <td>Vacheo</td>
                    <td>Publico</td>
                    <td>Alta</td>
                    <td>2024-09-10</td>
                    <td>1</td>
                </tr>
                
            </tbody>
        </table>
    </div>

</asp:Content>