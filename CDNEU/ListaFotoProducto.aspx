<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaFotoProducto.aspx.cs" Inherits="CDNEU.ListaFotoProducto" %>

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
                <h2>Agregar Nueva Foto</h2>
                <asp:Panel runat="server" ID="panelFU">
                    <asp:FileUpload ID="fuploadNuevaFotoProducto" runat="server" CssClass="col-md-6 form-control" BorderStyle="Dashed"></asp:FileUpload>
                </asp:Panel>
                <asp:Panel runat="server" ID="panelNombreDescripcion">
                    <div class="form-group">
                        <asp:Label ID="lblNuevaFotoProductoNombre" runat="server" Text="Título" CssClass="col-md-2"></asp:Label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtNuevaFotoProductoNombre" runat="server" placeholder="Agregue un nombre" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblNuevaFotoProductoDescripcion" runat="server" Text="Breve Descripción" CssClass="col-md-2"> </asp:Label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtNuevaFotoProductoDescripcion" runat="server" placeholder="Máximo 80 caracteres" CssClass="form-control" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Image ID="imgTemporal" runat="server" Style="max-width: 250px; border: solid; max-height: 250px;" />
                <br />

                <asp:Panel ID="panelEditarFoto" runat="server">
                    <div class="form-group col-md-offset-1">
                        <br />
                        <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="btnRotarIzquierda" runat="server" OnClick="btnRotarIzquierda_Click"
                            Text="<img src='imagenes/girarizquierda.png' />">
                        </asp:LinkButton>
                        <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="btnRotar180" runat="server" OnClick="btnRotar180_Click"
                            Text="<img src='imagenes/girar180.png' />"></asp:LinkButton>
                        <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="btnRotarDerecha" runat="server" OnClick="btnRotarDerecha_Click"
                            Text="<img src='imagenes/girarderecha.png' />"></asp:LinkButton>
                    </div>
                </asp:Panel>
                <br />
                <%--<asp:Button ID="btnMostrarFotoTemporal" runat="server" CssClass="boton_azul2" Text="Previsualizar" OnClick="btnMostrarFotoTemporal_Click" />--%>


                <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="btnMostrarFotoTemporal" runat="server" OnClick="btnMostrarFotoTemporal_Click"
                    Font-Bold="true" Text="<img src='imagenes/previsualizar.png' /> Previsualizar"></asp:LinkButton>


                <asp:LinkButton BorderStyle="none" BorderWidth="1" ID="btnGuardarNuevaFotoProducto" runat="server" OnClientClick="return confirm('¿Esta seguro de guardar la foto?')" OnClick="btnGuardarNuevaFotoProducto_Click"
                    Font-Bold="true" Text="<img src='imagenes/guardar.png' /> Guardar"></asp:LinkButton>


                <%--<asp:Button ID="btnGuardarNuevaFotoProducto" runat="server" CssClass="boton_verde" Text="Guardar Foto" OnClick="btnGuardarNuevaFotoProducto_Click" />--%>






                <h3>
                    <asp:Label ID="lblMensaje" runat="server" Text="" Style="color: red" />
                </h3>
                <br />
                <h2>Mi Galería</h2>
                <div class="table-responsive col-md-12">
                    <asp:GridView ID="dgFotoProducto" runat="server" AutoGenerateColumns="False" DataKeyNames="idFotoProducto"
                        EmptyDataText="No hay fotos guardadas en mi galería."
                        CssClass="table table-bordered table-condensed">
                        <Columns>
                            <asp:TemplateField ItemStyle-CssClass="visible-sm visible-xs" HeaderStyle-CssClass="visible-sm visible-xs" HeaderText="Producto">
                                <ItemTemplate>
                                    <%--<asp:Label ID="lblTitle" Font-Bold="true" runat="server" Text='<%# "Nombre: "+ Eval("nombreFotoProducto")%>'></asp:Label>--%>
                                    <asp:Label ID="lblNombre" Font-Bold="true" runat="server" Text='<%#Eval("nombreFotoProducto")%>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lblDescripcion" runat="server" Text='<%#Eval("descripcionFotoProducto")%>'></asp:Label>
                                </ItemTemplate>

                                <HeaderStyle CssClass="visible-sm visible-xs"></HeaderStyle>

                                <ItemStyle CssClass="visible-sm visible-xs"></ItemStyle>
                            </asp:TemplateField>
                            <asp:BoundField DataField="idFotoProducto" SortExpression="idFotoProducto" ReadOnly="True" HeaderText="idFotoProducto" InsertVisible="False" Visible="false" />
                            <asp:BoundField DataField="idUsuario" SortExpression="idUsuario" HeaderText="idUsuario" Visible="false" />
                            <asp:BoundField DataField="nombreFotoProducto" SortExpression="nombreFotoProducto" ItemStyle-CssClass="visible-lg visible-md" HeaderStyle-CssClass="visible-lg visible-md" HeaderText="Nombre">
                                <HeaderStyle CssClass="visible-lg visible-md"></HeaderStyle>
                                <ItemStyle CssClass="visible-lg visible-md" />
                            </asp:BoundField>
                            <asp:BoundField DataField="descripcionFotoProducto" SortExpression="descripcionFotoProducto" ItemStyle-CssClass="visible-lg visible-md" HeaderStyle-CssClass="visible-lg visible-md" HeaderText="Breve Descripcion">
                                <HeaderStyle CssClass="visible-lg visible-md"></HeaderStyle>
                                <ItemStyle CssClass="visible-lg visible-md" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="IMAGEN" HeaderStyle-CssClass="style: col-sm-6 col-xs-6 col-lg-6 col-md-6">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="wid-100 hei-80 col-sm-6 col-xs-6 col-lg-6 col-md-6"
                                        ImageUrl='<%# "~/imagenes_productos/" + Eval("rutaFotoProducto")%>' OnCommand="ImageButton1_Command" CommandArgument='<%#Eval("IdFotoProducto")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
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

    <script>
        function bigImg(x) {
            x.style.height = "90px";
            x.style.width = "90px";
        }

        function normalImg(x) {
            x.style.height = "45px";
            x.style.width = "45px";
        }
    </script>



</asp:Content>
