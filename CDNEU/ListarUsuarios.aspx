<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarUsuarios.aspx.cs" Inherits="CDNEU.ListarUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <table border="1">
            <tr>
                <td colspan="2">
                    <h1>Agregar Imagen en SQL Server</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Id"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Imagen"></asp:Label></td>
                <td>
                    <asp:FileUpload ID="fuImagen" runat="server"></asp:FileUpload></td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Label ID="lblMensaje" runat="server" Text="" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Button ID="btnVer" runat="server" Text="Ver Imagen" OnClick="btnVer_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Image ID="imgURL" runat="server" style="width:500px; border:solid; " />
                </td>
            </tr>



        </table>
    </div>


</asp:Content>
