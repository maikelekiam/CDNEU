<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FotoPerfil.aspx.cs" Inherits="CDNEU.FotoPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6">
            <table>
                <h2>Foto de Perfil Actual</h2>
                <tr>
                    <td style="text-align: center" colspan="2">
                        <asp:Image ID="imgURL" runat="server" Style="width: 500px; border: solid;" />
                    </td>
                </tr>
                <tr>
                    <asp:Label runat="server" Text="Id de Usuario" CssClass="col-md-2 form-control" BorderStyle="None" Visible="false"></asp:Label>
                    <asp:TextBox ID="txtId" runat="server" CssClass="col-md-4 form-control" BorderStyle="None" Visible="false"></asp:TextBox>
                </tr>
            </table>
        </div>
        <div class="col-md-6">
            <table>
                <tr>
                    <h2>Subir Nueva Foto</h2>
                    <asp:FileUpload ID="fuImagen" runat="server" CssClass="col-md-4 form-control" BorderStyle="Dashed"></asp:FileUpload>
                </tr>
                <tr>
                    <td style="border: none; border-width: thin" colspan="2">
                        <asp:Image ID="imgTemporal" runat="server" Style="max-width: 250px; border: solid; max-height: 250px;" />
                        <asp:Button ID="btnMostrarFotoTemporal" runat="server" CssClass="boton_azul" Text="Mostrar" OnClick="btnMostrarFotoTemporal_Click" />
                    </td>
                </tr>


                <tr>
                    <td style="text-align: center" colspan="2">
                        <h3>
                            <asp:Label ID="lblMensaje" runat="server" Text="" Style="color: red" /></h3>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnGuardarFoto" runat="server" CssClass="boton_verde" Text="Guardar Foto" OnClick="btnGuardarFoto_Click" />

        </div>
    </div>


</asp:Content>
