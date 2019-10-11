<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaFotoProducto.aspx.cs" Inherits="CDNEU.ListaFotoProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        th {
            text-align: center;
        }
    </style>

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1 col-sm-12 col-xs-12">
                <h2>Agregar Nueva Foto</h2>
                <div class="form-group">
                    <asp:Label ID="lblNuevaFotoProductoNombre" runat="server" Text="Nombre" CssClass="col-md-2"></asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtNuevaFotoProductoNombre" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblNuevaFotoProductoDescripcion" runat="server" Text="Breve Descripcion" CssClass="col-md-2"> </asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtNuevaFotoProductoDescripcion" runat="server" placeholder="Máximo 80 caracteres" CssClass="form-control" MaxLength="80"></asp:TextBox>
                    </div>
                </div>
                <asp:FileUpload ID="fuploadNuevaFotoProducto" runat="server" CssClass="col-md-4 form-control" BorderStyle="Dashed"></asp:FileUpload>
                <br />
                <asp:Image ID="imgTemporal" runat="server" Style="max-width: 250px; border: solid; max-height: 250px;" />
                <br />
                <asp:Button ID="btnMostrarFotoTemporal" runat="server" CssClass="boton_azul" Text="Previsualizar" OnClick="btnMostrarFotoTemporal_Click" />
                <asp:Button ID="btnGuardarNuevaFotoProducto" runat="server" CssClass="boton_verde" Text="Guardar Foto" OnClick="btnGuardarNuevaFotoProducto_Click" />
                <h3>
                    <asp:Label ID="lblMensaje" runat="server" Text="" Style="color: red" />
                </h3>
                <br />
                <br />
                <br />
                <br />
                <div class="table-responsive col-md-12">
                    <asp:GridView ID="dgFotoProducto" runat="server" AutoGenerateColumns="False" DataKeyNames="idFotoProducto"
                        CssClass="table table-bordered table-condensed">
                        <Columns>
                            <asp:TemplateField ItemStyle-CssClass="visible-sm visible-xs" HeaderStyle-CssClass="visible-sm visible-xs" HeaderText="Producto">
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
                            <asp:BoundField DataField="descripcionFotoProducto" SortExpression="descripcionFotoProducto" ItemStyle-CssClass="visible-lg visible-md" HeaderStyle-CssClass="visible-lg visible-md" HeaderText="Breve Descripcion">
                                <HeaderStyle CssClass="visible-lg visible-md"></HeaderStyle>

                                <ItemStyle CssClass="visible-lg visible-md" />
                            </asp:BoundField>
                            <asp:ImageField DataImageUrlField="rutaFotoProducto" DataImageUrlFormatString="~/imagenes_productos/{0}" HeaderText="IMAGEN" ItemStyle-CssClass="style: col-sm-4 col-xs-4 col-lg-4 col-md-4">
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






    <script type="text/javascript">

        var validFilesTypes = ["bmp", "gif", "png", "jpg", "jpeg"];

        function ValidateFile() {

            var file = document.getElementById("<%=fuploadNuevaFotoProducto.ClientID%>");

            var label = document.getElementById("<%=lblMensaje.ClientID%>");

            var path = file.value;

            var ext = path.substring(path.lastIndexOf(".") + 1, path.length).toLowerCase();

            var isValidFile = false;

            for (var i = 0; i < validFilesTypes.length; i++) {

                if (ext == validFilesTypes[i]) {

                    isValidFile = true;

                    break;

                }

            }

            if (!isValidFile) {

                label.style.color = "red";

                label.innerHTML = "El Archivo debe tener" +

                 " extension:\n\n" + validFilesTypes.join(", ");

            }

            return isValidFile;

        }

    </script>
</asp:Content>
