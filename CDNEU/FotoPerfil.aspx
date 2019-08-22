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
                    <asp:Label runat="server" Text="Id de Usuario" CssClass="col-md-2 form-control" BorderStyle="None" Visible="false"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtId" runat="server" CssClass="col-md-4 form-control" BorderStyle="None" Visible="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="border: solid; border-width: thin">
                    <h3>Subir Foto</h3>
                    <asp:FileUpload ID="fuImagen" runat="server" CssClass="col-md-4 form-control" BorderStyle="None"></asp:FileUpload>
                    <asp:Button ID="btnGuardarFoto" runat="server" CssClass="boton_verde" Text="Guardar Foto" OnClick="btnGuardarFoto_Click" />
                </td>
                <tr>
                    <td style="text-align: center" colspan="2">
                        <h3>
                            <asp:Label ID="lblMensaje" runat="server" Text="" Style="color: red" /></h3>
                    </td>
                </tr>
        </table>
    </div>
</asp:Content>
