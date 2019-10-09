<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FotoProducto.aspx.cs" Inherits="CDNEU.FotoProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>

    </style>





    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-xs-12">
                <div class="table-responsive">
                    <asp:GridView ID="gvFotoProducto" runat="server" AutoGenerateColumns="False" DataKeyNames="idFotoProducto" DataSourceID="SqlDataSource1"
                        CssClass="table table-bordered table-condensed">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTitle" Font-Bold="true" runat="server" Text='<%# "Nombre: "+ Eval("nombreFotoProducto")%>' ></asp:Label>
                                    <br />
                                    <asp:Label ID="lblName" runat="server" Text='<%# "Descripcion: "+Eval("descripcionFotoProducto")%>'></asp:Label>
                                </ItemTemplate>


                            </asp:TemplateField>



                            <asp:BoundField DataField="idFotoProducto" HeaderText="idFotoProducto" SortExpression="idFotoProducto" InsertVisible="False" ReadOnly="True" Visible="false" />
                            <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" Visible="false"/>
                            <asp:BoundField DataField="nombreFotoProducto" HeaderStyle-CssClass="hidden-on" ItemStyle-CssClass="hidden-on" Visible="false"/>
                            <asp:BoundField DataField="descripcionFotoProducto" HeaderText="descripcionFotoProducto" SortExpression="descripcionFotoProducto" Visible="false"/>
                            <asp:BoundField DataField="rutaFotoProducto" HeaderText="rutaFotoProducto" SortExpression="rutaFotoProducto" Visible="false" />
                            <asp:ImageField DataImageUrlField="rutaFotoProducto" DataImageUrlFormatString="~/imagenes/{0}" HeaderText="IMAGEN" ItemStyle-CssClass="style: col-sm-6 col-xs-6;">
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
