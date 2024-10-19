<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="consultas_adopciones.aspx.cs" Inherits="adopciones_consultas_adopciones" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/consultas_adopciones.css" rel="stylesheet" />
    
    <div class="table-container">
        <h1>Consultas de Adopciones</h1>
        <table id="adoptionsTable">
            <thead>
                <tr>
                    <th>Id Adopción</th>
                    <th>Fecha de Adopción</th>
                    <th>Estado</th>
                    <th>Usuario Id</th>
                    <th>Institución Id</th>
                    <th>Residente Id</th>
                </tr>
            </thead>
            <tbody>
              
                <tr>
                    <td>1</td>
                    <td>2024-08-15</td>
                    <td>Completada</td>
                    <td>3</td>
                    <td>1</td>
                    <td>2</td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>