<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="consultas_voluntariado.aspx.cs" Inherits="voluntariado_consultas_voluntariado" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/consultas_voluntariado.css" rel="stylesheet" />
    
    <div class="table-container">
        <h1>Consultas de Voluntariado</h1>
        <table id="volunteerTable">
            <thead>
                <tr>
                    <th>Id Voluntariado</th>
                    <th>Descripción</th>
                    <th>Fecha Inicio</th>
                    <th>Fecha Fin</th>
                    <th>Estado</th>
                    <th>Usuario Id</th>
                    <th>Institución Id</th>
                </tr>
            </thead>
            <tbody>
                
                <tr>
                    <td>1</td>
                    <td>Apoyo en eventos comunitarios</td>
                    <td>2024-09-01</td>
                    <td>2024-09-30</td>
                    <td>Activo</td>
                    <td>5</td>
                    <td>1</td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>
