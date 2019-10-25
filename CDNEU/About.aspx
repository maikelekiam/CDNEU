<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CDNEU.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        body {
            background-color: #dadada;
        }

        .imagenes {
            width: 100%;
            height: auto;
        }

        .contenido {
            margin: 5px;
            top: 5px;
            left: 5px;
            right: 5px;
            bottom: 5px;
            background: #fff;
        }

        .titulo {
            text-align: center;
        }

        .descripcion {
            text-align: left;
        }

        #owl-example .item2 {
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
            text-align: center;
        }

        /*.customNavigation {
            text-align: center;
        }

        .customNavigation a {
            -webkit-user-select: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }*/
    </style>

    <div class="container emp-profile">
        <div class="row">
            <div class="col-md-6">
                <div class="profile-img">
                    <asp:Image ID="imgURL" runat="server" Style="width: 50%; height: auto; max-width: 400px; max-height: initial; border: solid;" />
                    <asp:TextBox ID="txtId" runat="server" CssClass="col-md-4 form-control" BorderStyle="None" Visible="false"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-6">
                <div class="profile-head">
                    <h3>
                        <asp:Label ID="lblNombreApellido" runat="server"></asp:Label></h3>
                    <h5>
                        <asp:Label ID="lblCorreoTelefono" runat="server"></asp:Label></h5>

                    <p id="lugar" runat="server" class="proile-rating">- <span></span></p>

                    <h4>
                        <asp:Label ID="lblActividadProfesional" runat="server"></asp:Label></h4>
                    






                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-10">
                <div class="row">
                    <div class="col-md-12">
                        <h3>
                            <asp:Label ID="lblMisProductos" runat="server" Text="La Galería de imágenes está vacía." CssClass="AlineadoIzquierda"></asp:Label></h3>
                        <div id="owl-example" class="owl-carousel owl-theme" style="width: 100%;">
                            <asp:Repeater ID="repeter" runat="server" DataSourceID="SqlDataSource1"
                                OnItemDataBound="repeter_DataBinding">
                                <ItemTemplate>
                                    <div class="contenido">
                                        <img class="imagenes" src="imagenes_productos/<%# DataBinder.Eval(Container.DataItem, "rutaFotoProducto") %>" />
                                        <br />
                                        <div class="titulo"><strong><%# DataBinder.Eval(Container.DataItem, "nombreFotoProducto") %></strong></div>
                                        <div class="descripcion"><%# DataBinder.Eval(Container.DataItem, "descripcionFotoProducto") %></div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="listadofotoproducto" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="1" Name="idUsuario" SessionField="userid" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        <br />
                    </div>

                </div>
            </div>
        </div>
    </div>

    <asp:RadioButtonList ID="RBDisciplinaProyectual" runat="server"
        CssClass="form-control" BorderStyle="None"
        RepeatColumns="1"
        RepeatLayout="Table"
        CellPadding="10"
        Visible="false">
        <asp:ListItem Value="1">Arquitectura</asp:ListItem>
        <asp:ListItem Value="2">Artes</asp:ListItem>
        <asp:ListItem Value="3">Artesanías</asp:ListItem>
        <asp:ListItem Value="4">Diseño de Interiores</asp:ListItem>
        <asp:ListItem Value="5">Diseño de Indumentaria</asp:ListItem>
        <asp:ListItem Value="6">Diseño del Paisaje</asp:ListItem>
        <asp:ListItem Value="7">Diseño Industrial</asp:ListItem>
        <asp:ListItem Value="8">Diseño Gráfico</asp:ListItem>
        <asp:ListItem Value="9">Diseño Multimedia</asp:ListItem>
        <asp:ListItem Value="10">Fotografía</asp:ListItem>
        <asp:ListItem Value="11">Food Design</asp:ListItem>
        <asp:ListItem Value="12">Publicidad</asp:ListItem>
        <asp:ListItem Value="20">Otra</asp:ListItem>
    </asp:RadioButtonList>

</asp:Content>
