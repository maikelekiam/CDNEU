<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarUsuarios.aspx.cs" Inherits="CDNEU.ListarUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <asp:Panel ID="PanelSuperior" CssClass="panel panel-default" runat="server">
            <div class="panel-heading">
                <h3>Usuarios</h3>
                <asp:Label ID="lblUsuarios" Font-Bold="true" runat="server" CssClass="col-md-2 AlineadoDerecha"> </asp:Label>

            </div>
            <!--GRILLA PARA MOSTRAR de la BASE DE DATOS-->
            <div class="form-group">
                <div class="col-md-10 col-md-offset-1">
                    <br />
                    <asp:GridView ID="dgvUsuarios" runat="server" AutoGenerateColumns="False"
                        CssClass="table table-hover table-striped" BorderWidth="2px" EmptyDataText="No existen Usuarios registrados" ShowHeaderWhenEmpty="True">
                        <Columns>
                            <asp:BoundField HeaderText="ID" DataField="idFotoUsuario" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#cccccc">

                                <HeaderStyle BackColor="#CCCCCC" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>

                            <asp:TemplateField HeaderText="NOMBRE" HeaderStyle-HorizontalAlign="Left" HeaderStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Usuario.Nombre") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Font-Bold="True" HorizontalAlign="Left" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="APELLIDO" HeaderStyle-HorizontalAlign="Left" HeaderStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Usuario.Apellido") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Font-Bold="True" HorizontalAlign="Left" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="IMAGEN" HeaderStyle-CssClass="style: col-sm-6 col-xs-6 col-lg-6 col-md-6">
                                <ItemTemplate>
                                    <asp:Image ID="Image" runat="server" ImageUrl='<%# "Handler.ashx?idFotoUsuario=" + Eval("idFotoUsuario")  %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
