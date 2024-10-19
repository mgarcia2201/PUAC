<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="consultas_evento.aspx.cs" Inherits="calendario_eventos_consultas_evento" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/consultas_evento.css" rel="stylesheet" />
    
    <div class="table-container">
        <h1>Eventos</h1>
        <table id="eventsTable">
            <thead>
                <tr>
                    <th>Id Evento</th>
                    <th>Título</th>
                    <th>Descripción</th>
                    <th>Fecha Inicio</th>
                    <th>Fecha Fin</th>
                    <th>Ubicación</th>
                    <th>Institución Id</th>
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
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>