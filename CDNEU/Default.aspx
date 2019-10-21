<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CDNEU._Default" %>

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

    <div class="row">
        <div class="col-md-12">
            <h3><asp:Label ID="lblMisProductos" runat="server" Text="La Galería de imágenes está vacía." CssClass="AlineadoIzquierda"></asp:Label></h3>
            <div id="owl-example" class="owl-carousel owl-theme" style="width: 100%;">
                <asp:Repeater ID="repeter" runat="server" DataSourceID="SqlDataSource1" 
                    
                    OnItemDataBound ="repeter_DataBinding"
                    
                    >
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
            <%--<div class="customNavigation">
                <a class="btn prev">Previous</a>
                <a class="btn next">Next</a>
                <a class="btn play">Autoplay</a>
                <a class="btn stop">Stop</a>
            </div>--%>
            <br />
            <%--<p>
                <h3>Novedades</h3>
                <a target="_blank" class="btn btn-default" href="https://www.copade.gob.ar/Contenido.aspx?Id=NOV-9877">Concurso Neuquén Crea &raquo;</a>
            </p>
            <p>
                <a target="_blank" class="btn btn-default" href="https://www.copade.gob.ar/Contenido.aspx?Id=NOV-9843">Ciclo de Formación Inspirarte &raquo;</a>
            </p>--%>
        </div>
    </div>
</asp:Content>
