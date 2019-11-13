<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarFotoProducto.aspx.cs" Inherits="CDNEU.EditarFotoProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 id="titulo">Editar Foto</h2>
    <table>
        <tr>
            <td style="text-align: center" colspan="2">
                <asp:Image ID="imgURL" runat="server" Style="width: 100%; height: auto; max-width: 400px; max-height: initial; border: solid;" />
            </td>
        </tr>
        <tr>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="text-align: left" colspan="2">
                <asp:Label ID="lblNombre" runat="server" Text="Label" CssClass="AlineadoIzquierda">Titulo</asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td style="text-align: left" colspan="2">
                <asp:Label ID="lblDescripcion" runat="server" Text="Label" CssClass="AlineadoIzquierda">Breve Descripcion</asp:Label>
                <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="2" placeholder="Máximo 80 caracteres" style = "resize: vertical" />
            </td>
        </tr>
        <tr>
            <td style="height: 15px"></td>
        </tr>
        <tr>
            <td style="text-align: left" colspan="2">
                Tamaño del archivo 
                <asp:Label Font-Bold="true" ID="lblTamanioFoto" runat="server" Text="Label" CssClass="AlineadoIzquierda"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 30px"></td>
        </tr>
    </table>
    <div class="form-group">
        <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="btnEliminar" runat="server" OnClientClick="return confirm('¿Esta seguro de eliminar la foto?')" OnClick="btnEliminar_Click"
            Font-Bold="true" Text="<img src='imagenes/eliminar.png' /> Eliminar"></asp:LinkButton>
        <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="btnGuardar" runat="server" OnClientClick="return confirm('¿Esta seguro de guardar cambios?')" OnClick="btnGuardar_Click"
            Font-Bold="true" Text="<img src='imagenes/guardar.png' /> Guardar"></asp:LinkButton>
        <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="btnVolver" runat="server" OnClick="btnVolver_Click"
            Font-Bold="true" Text="<img src='imagenes/volver.png' /> Volver"></asp:LinkButton>
    </div>










</asp:Content>
