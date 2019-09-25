﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FotoPerfil.aspx.cs" Inherits="CDNEU.FotoPerfil" %>

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
                    <h2>Nueva Foto</h2>
                    <asp:FileUpload ID="fuImagen" runat="server" CssClass="col-md-4 form-control" BorderStyle="Dashed"></asp:FileUpload>
                </tr>
                <tr>
                    <td style="border: none; border-width: thin" colspan="2">
                        <asp:Image ID="imgTemporal" runat="server" Style="max-width: 250px; border: solid; max-height: 250px;" />
                    </td>
                </tr>
                <tr>
                    <asp:Button ID="btnMostrarFotoTemporal" runat="server" CssClass="boton_azul" Text="Presione para Mostrar" OnClick="btnMostrarFotoTemporal_Click" />
                </tr>
                <tr>
                    <td style="text-align: center" colspan="2">
                        <h3>
                            <asp:Label ID="lblMensaje" runat="server" Text="" Style="color: red" /></h3>
                    </td>
                </tr>
            </table>


            <table>
                <tr>
                    <td>-
                    </td>
                </tr>
            </table>
            <table>
                <tr>

                    <asp:Button ID="btnRotarDerecha" runat="server" CssClass="boton_azul" Text="Rotar Derecha" OnClick="btnRotarDerecha_Click" />
                    <asp:Button ID="btnRotarIzquierda" runat="server" CssClass="boton_azul" Text="Rotar Izquierda" OnClick="btnRotarIzquierda_Click" />
                    <asp:Button ID="btnRotar180" runat="server" CssClass="boton_azul" Text="Rotar 180°" OnClick="btnRotar180_Click" />

                </tr>
            </table>

            <asp:Button ID="btnGuardarFoto" runat="server" CssClass="boton_verde" Text="Guardar Foto" OnClick="btnGuardarFoto_Click" />

        </div>
    </div>


</asp:Content>
