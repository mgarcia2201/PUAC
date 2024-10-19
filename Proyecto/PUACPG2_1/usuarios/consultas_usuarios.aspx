<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="consultas_usuarios.aspx.cs" Inherits="usuarios_consultas_usuarios" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../CSS/consultas_usuarios.css" rel="stylesheet" />
    
    <div class="table-container">
        <h1>Usuarios Creados</h1>
        <table id="usersTable">
            <thead>
                <tr>
                    <th>ID Usuario</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Contraseña</th>
                    <th>Fecha de Registro</th>
                    <th>ID Rol</th>
                </tr>
            </thead>
            <tbody>
                
                <tr>
                    <td>1</td>
                    <td>Marco Antonio</td>
                    <td>marco@mail.com</td>
                    <td>********</td>
                    <td>2024-10-02</td>
                    <td>2</td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>

