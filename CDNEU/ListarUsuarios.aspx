<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarUsuarios.aspx.cs" Inherits="CDNEU.ListarUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .container {
            padding-right: 0px;
            padding-left: 0px;
            /*margin-right: auto;
            margin-left: auto;*/
        }

        th {
            text-align: center;
        }

        .col-xs-6 {
            width: 50%;
        }

        .wid-100 {
            width: 100%;
        }

        .hei-80 {
            /*width: 100%;
            max-width: inherit;
            height: auto;
            overflow: scroll;
            max-height: 300px;*/
        }

        .table-responsive {
            width: 100%;
            padding-left: 0px;
            padding-right: 0px;
            margin-bottom: 5px;
            overflow-y: hidden;
            -ms-overflow-style: -ms-autohiding-scrollbar;
            border: none;
        }

        .form-horizontal .form-group {
            margin-right: 0;
            margin-left: 0;
        }
    </style>


    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1 col-sm-12 col-xs-12">
                <h2>Lista de Usuarios</h2>
                <div class="table-responsive col-md-12">
                    <asp:GridView ID="dgvUsuarios" runat="server" AutoGenerateColumns="False"
                        CssClass="table table-bordered table-condensed" BorderWidth="2px">
                        <Columns>
                            <asp:BoundField HeaderText="ID" DataField="idFotoUsuario" InsertVisible="False" Visible="false"></asp:BoundField>
                            <asp:TemplateField ItemStyle-CssClass="visible-sm visible-xs" HeaderStyle-CssClass="visible-sm visible-xs" HeaderText="Usuario">
                                <ItemTemplate>
                                    <asp:Label ID="lblNombre" Font-Bold="true" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Usuario.Nombre")+" "+DataBinder.Eval(Container.DataItem, "Usuario.Apellido") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lblTelefono" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Usuario.Telefono") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lblMail" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Usuario.CorreoElectronico") %>'></asp:Label>

                                </ItemTemplate>
                                <HeaderStyle CssClass="visible-sm visible-xs"></HeaderStyle>
                                <ItemStyle CssClass="visible-sm visible-xs"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Usuario" ItemStyle-CssClass="visible-lg visible-md" HeaderStyle-CssClass="visible-lg visible-md">
                                <ItemTemplate>
                                    <h3>
                                        <asp:Label ID="lblUsuario" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Usuario.Nombre")+" "+DataBinder.Eval(Container.DataItem, "Usuario.Apellido") %>'></asp:Label>
                                    </h3>
                                    <asp:Label ID="LabelNombreUsuario" runat="server" Text='<%# "Nombre de Usuario: " + DataBinder.Eval(Container.DataItem, "Usuario.NombreUsuario") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lblTelefono2" runat="server" Text='<%# "Telefono: "+ DataBinder.Eval(Container.DataItem, "Usuario.Telefono") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lblMail2" runat="server" Text='<%# "Correo Electrónico: "+ DataBinder.Eval(Container.DataItem, "Usuario.CorreoElectronico") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="IMAGEN" HeaderStyle-CssClass="style: col-sm-6 col-xs-6 col-lg-6 col-md-6">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="wid-100 hei-80 col-sm-6 col-xs-6 col-lg-6 col-md-6"
                                        ImageUrl='<%# "Handler.ashx?idFotoUsuario=" + Eval("idFotoUsuario")  %>' OnCommand="ImageButton1_Command" CommandArgument='<%#Eval("IdFotoUsuario")%>' />
                                </ItemTemplate>
                                <%--<ItemTemplate>
                                    <asp:Image ID="Image" runat="server" ImageUrl='<%# "Handler.ashx?idFotoUsuario=" + Eval("idFotoUsuario")  %>' />
                                </ItemTemplate>--%>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
