<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarUsuarios.aspx.cs" Inherits="CDNEU.ListarUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <asp:Panel ID="PanelListar" CssClass="panel panel-default" runat="server">
            <div class="panel-heading">
                <h3>Listado de Diseñadores</h3>
            </div>

            <!--GRILLA-->

            <div class="form-group">
                <div class="col-md-9 col-md-offset-1">
                    <asp:GridView ID="dgvUsuario" runat="server" AutoGenerateColumns="false"
                        CssClass="table table-hover table-striped" BorderWidth="2px"
                        GridLines="Both" EmptyDataText="No existen usuarios registrados" ShowHeaderWhenEmpty="true">
                        <Columns>
                            <asp:BoundField HeaderText="Nombre" DataField="nombreUsuario" ItemStyle-HorizontalAlign="Left" HeaderStyle-BackColor="#cccccc" />
                            <asp:BoundField HeaderText="Contraseña" DataField="contrasenia" ItemStyle-HorizontalAlign="Left" HeaderStyle-BackColor="#cccccc" />
                            <asp:BoundField HeaderText="Grupo" DataField="grupo" ItemStyle-HorizontalAlign="Left" HeaderStyle-BackColor="#cccccc" />
                            <asp:TemplateField HeaderStyle-BackColor="#cccccc" HeaderText="Activo" ItemStyle-HorizontalAlign="Left" ControlStyle-Font-Size="Small" HeaderStyle-Width="100">
                                <ItemTemplate><%# (Boolean.Parse(Eval("Activo").ToString())) ? "Si" : "No" %></ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Correo" DataField="correoElectronico" ItemStyle-HorizontalAlign="Left" HeaderStyle-BackColor="#cccccc" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
