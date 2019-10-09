<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FotoProducto.aspx.cs" Inherits="CDNEU.FotoProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        th {
            text-align: center;
        }
    </style>


    <br />
    <br />
    <br />
    <br />
    <br />

    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                <div class="table-responsive col-md-12">
                    <asp:GridView ID="gvFotoProducto" runat="server" AutoGenerateColumns="False" DataKeyNames="idFotoProducto" DataSourceID="SqlDataSource1"
                        CssClass="table table-bordered table-condensed">
                        <Columns>
                            <asp:TemplateField ItemStyle-CssClass="visible-sm visible-xs" HeaderStyle-CssClass="visible-sm visible-xs">
                                <ItemTemplate>
                                    <%--<asp:Label ID="lblTitle" Font-Bold="true" runat="server" Text='<%# "Nombre: "+ Eval("nombreFotoProducto")%>'></asp:Label>--%>
                                    <asp:Label ID="lblNombre" Font-Bold="true" runat="server" Text='<%#Eval("nombreFotoProducto")%>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lblDescripcion" runat="server" Text='<%#Eval("descripcionFotoProducto")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="idFotoProducto" SortExpression="idFotoProducto" ReadOnly="True" HeaderText="idFotoProducto" InsertVisible="False" Visible="false" />
                            <asp:BoundField DataField="idUsuario" SortExpression="idUsuario" HeaderText="idUsuario" Visible="false" />
                            <asp:BoundField DataField="nombreFotoProducto" SortExpression="nombreFotoProducto" ItemStyle-CssClass="visible-lg visible-md" HeaderStyle-CssClass="visible-lg visible-md" HeaderText="Nombre">
                                <HeaderStyle CssClass="visible-lg visible-md"></HeaderStyle>

                                <ItemStyle CssClass="visible-lg visible-md" />
                            </asp:BoundField>
                            <asp:BoundField DataField="descripcionFotoProducto" SortExpression="descripcionFotoProducto" ItemStyle-CssClass="visible-lg visible-md" HeaderStyle-CssClass="visible-lg visible-md" HeaderText="Descripcion">
                                <HeaderStyle CssClass="visible-lg visible-md"></HeaderStyle>

                                <ItemStyle CssClass="visible-lg visible-md" />
                            </asp:BoundField>
                            <asp:ImageField DataImageUrlField="rutaFotoProducto" DataImageUrlFormatString="~/imagenes/{0}" HeaderText="IMAGEN" ItemStyle-CssClass="style: col-sm-4 col-xs-4 col-lg-6 col-md-6">
                            </asp:ImageField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="listadofotoproducto" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="" Name="idUsuario" SessionField="userid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
