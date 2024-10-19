<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="consultas_donaciones.aspx.cs" Inherits="donaciones_consultas_donaciones" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/consultas_donaciones.css" rel="stylesheet" />
    
    <div class="table-container">
        <h1>Consultas de Donaciones</h1>
        <table id="donationsTable">
            <thead>
                <tr>
                    <th>Id Donación</th>
                    <th>Cantidad</th>
                    <th>Tipo</th>
                    <th>Fecha de Donación</th>
                    <th>Estado</th>
                    <th>Usuario Id</th>
                    <th>Institución Id</th>
                    <th>Comprobante</th>
                </tr>
            </thead>
            <tbody>
                
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><img src="comprobante1.jpg" alt="Comprobante" width="100"></td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>