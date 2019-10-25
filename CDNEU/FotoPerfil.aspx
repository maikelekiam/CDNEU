<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FotoPerfil.aspx.cs" Inherits="CDNEU.FotoPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <style>
        .form-horizontal .form-group {
            margin-right: 0;
            margin-left: 0;
        }
    </style>




    <div class="row">
        <div class="col-md-6">
            <table>
                <h2>Foto de Perfil Actual</h2>
                <tr>
                    <td style="text-align: center" colspan="2">
                        <asp:Image ID="imgURL" runat="server" Style="width: 100%; height: auto; max-width: 400px; max-height: initial; border: solid;" />
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
                    <h2>Nueva Foto</h2>
                    <asp:FileUpload ID="fuImagen" runat="server" CssClass="col-md-4 form-control" BorderStyle="Dashed"></asp:FileUpload>
                </tr>
                <tr>
                    <td style="border: none; border-width: thin" colspan="2">
                        <asp:Image ID="imgTemporal" runat="server" Style="max-width: 250px; border: solid; max-height: 250px;" />
                    </td>
                </tr>
                <tr>

                    <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="LinkButton6" runat="server" OnClick="btnMostrarFotoTemporal_Click"
                    Font-Bold="true" Text="<img src='imagenes/previsualizar.png' /> Previsualizar"></asp:LinkButton>




                    <%--<asp:Button ID="btnMostrarFotoTemporal" runat="server" CssClass="boton_azul2" Text="Previsualizar" OnClick="btnMostrarFotoTemporal_Click" />--%>
                </tr>
                <tr>
                    <td style="text-align: center" colspan="2">
                        <h3>
                            <asp:Label ID="lblMensaje" runat="server" Text="" Style="color: red" /></h3>
                    </td>
                </tr>
            </table>
            <asp:Panel ID="panelEditarFotoPerfil" runat="server">
                <div class="form-group">
                    <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="LinkButton1" runat="server" OnClick="btnRotarIzquierda_Click"
                        Text="<img src='imagenes/girarizquierda.png' />"></asp:LinkButton>
                    <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="LinkButton3" runat="server" OnClick="btnRotar180_Click"
                        Text="<img src='imagenes/girar180.png' />"></asp:LinkButton>
                    <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="LinkButton2" runat="server" OnClick="btnRotarDerecha_Click"
                        Text="<img src='imagenes/girarderecha.png' />"></asp:LinkButton>

                    <%--</div>
            <div class="form-group">--%>
                    <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="LinkButton5" runat="server" OnClientClick="return confirm('¿Esta seguro de eliminar la foto?')" OnClick="btnEliminarFoto_Click"
                        Font-Bold="true" Text="<img src='imagenes/eliminar.png' />"></asp:LinkButton>
                    <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="LinkButton4" runat="server" OnClientClick="return confirm('¿Esta seguro de guardar la foto?')" OnClick="btnGuardarFoto_Click"
                        Font-Bold="true" Text="<img src='imagenes/guardar.png' /> Guardar"></asp:LinkButton>
                </div>
            </asp:Panel>
            <%--<div class="form-group">
                <asp:Button ID="btnRotarDerecha" runat="server" CssClass="boton_azul" Text="Rotar Derecha" OnClick="btnRotarDerecha_Click" />
                <asp:Button ID="btnRotarIzquierda" runat="server" CssClass="boton_azul" Text="Rotar Izquierda" OnClick="btnRotarIzquierda_Click" />
                <asp:Button ID="btnRotar180" runat="server" CssClass="boton_azul" Text="Rotar 180°" OnClick="btnRotar180_Click" />
            </div>
            <div class="form-group">
                <asp:Button ID="btnGuardarFoto" runat="server" CssClass="boton_verde" Text="Guardar Foto" OnClick="btnGuardarFoto_Click" />
                <asp:Button ID="btnEliminarFoto" runat="server" CssClass="boton_rojo" Text="Eliminar Foto" OnClick="btnEliminarFoto_Click" />
            </div>--%>
        </div>
    </div>


</asp:Content>
