<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FotoPerfil.aspx.cs" Inherits="CDNEU.FotoPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <table>
            <tr>
                <td colspan="2">
                    <h2>Foto de Perfil</h2>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Image ID="imgURL" runat="server" Style="width: 500px; border: solid;" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Id de Usuario" CssClass="col-md-2 form-control" BorderStyle="None"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtId" runat="server" CssClass="col-md-4 form-control" BorderStyle="None"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Subir Foto" CssClass="col-md-2 form-control" BorderStyle="None"></asp:Label></td>
                <td>
                    <asp:FileUpload ID="fuImagen" runat="server" CssClass="col-md-4 form-control" BorderStyle="None"></asp:FileUpload></td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Button ID="btnGuardarFoto" runat="server" CssClass="boton_verde" Text="Guardar Foto" OnClick="btnGuardarFoto_Click" />
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




        </table>
    </div>

</asp:Content>
