<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AltaUsuario.aspx.cs" Inherits="CDNEU.AltaUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <style>
        .anchotabla {
            width: 200px;
        }

        .anchotextbox {
            width: 300px;
        }

        .altotabla {
            height: 5px;
        }
    </style>

    <div class="container">
        <div class="panel-heading">
            <h3>Nuevo DISEÑADOR</h3>
        </div>
        <table>
            <tr>
                <td class="anchotabla">
                    <asp:Label ID="Label7" runat="server" Text="Label">Usuario</asp:Label>
                </td>
                <td class="anchotextbox">
                    <div class="input-group">
                        <span class="input-group-addon alert-info">
                            <span class="glyphicon glyphicon-user"></span>
                        </span>
                        <asp:TextBox ID="txtRegistroNombreUsuario" runat="server" CssClass="form-control" placeholder="Ingrese un nombre de Usuario" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="anchotabla altotabla"></td>
                <td></td>
            </tr>
            <tr>
                <td class="anchotabla">
                    <asp:Label ID="Label8" runat="server" Text="Label">Contraseña</asp:Label>
                </td>
                <td class="anchotextbox">
                    <div class="input-group">
                        <span class="input-group-addon alert-info">
                            <span class="glyphicon glyphicon-lock"></span>
                        </span>
                        <asp:TextBox ID="txtRegistroContrasenia" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese una Contraseña" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="anchotabla altotabla"></td>
                <td></td>
            </tr>
            <tr>
                <td class="anchotabla">
                    <asp:Label ID="Label9" runat="server" Text="Label">Nombre</asp:Label>
                </td>
                <td class="anchotextbox">
                    <div class="input-group">
                        <span class="input-group-addon alert-info">
                            <span class="glyphicon glyphicon-edit"></span>
                        </span>
                        <asp:TextBox ID="txtRegistroNombre" runat="server" CssClass="form-control" placeholder="Ingrese su nombre" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="anchotabla altotabla"></td>
                <td></td>
            </tr>
            <tr>
                <td class="anchotabla">
                    <asp:Label ID="Label4" runat="server" Text="Label">Apellido</asp:Label>
                </td>
                <td class="anchotextbox">
                    <div class="input-group">
                        <span class="input-group-addon alert-info">
                            <span class="glyphicon glyphicon-edit"></span>
                        </span>
                        <asp:TextBox ID="txtRegistroApellido" runat="server" CssClass="form-control" placeholder="Ingrese su apellido" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="anchotabla altotabla"></td>
                <td></td>
            </tr>
            <tr>
                <td class="anchotabla">
                    <asp:Label ID="Label5" runat="server" Text="Label">Correo Electronico</asp:Label>
                </td>
                <td class="anchotextbox">
                    <div class="input-group">
                        <span class="input-group-addon alert-info">
                            <span class="glyphicon glyphicon-envelope"></span>
                        </span>
                        <asp:TextBox ID="txtRegistroCorreoElectronico" runat="server" CssClass="form-control" placeholder="Ingrese su Correo Electronico" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="anchotabla altotabla"></td>
                <td></td>
            </tr>
            <tr>
                <td class="anchotabla">
                    <asp:Label ID="Label6" runat="server" Text="Label">Telefono</asp:Label>
                </td>
                <td class="anchotextbox">
                    <div class="input-group">
                        <span class="input-group-addon alert-info">
                            <span class="glyphicon glyphicon-phone-alt"></span>
                        </span>
                        <asp:TextBox ID="txtRegistroTelefono" runat="server" CssClass="form-control" placeholder="Ingrese su Telefono" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="anchotabla altotabla"></td>
                <td></td>
            </tr>
            <tr>
                <td class="anchotabla">
                    <asp:Label ID="Label10" runat="server" Text="Label">Edad</asp:Label>
                </td>
                <td class="anchotextbox">
                    <div class="input-group">
                        <span class="input-group-addon alert-info">
                            <span class="glyphicon glyphicon-edit"></span>
                        </span>
                        <asp:TextBox ID="txtRegistroEdad" runat="server" CssClass="form-control" placeholder="Ingrese su Edad" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="anchotabla altotabla"></td>
                <td></td>
            </tr>
            <tr>
                <td class="anchotabla">
                    <asp:Label ID="Label11" runat="server" Text="Label">Domicilio</asp:Label>
                </td>
                <td class="anchotextbox">
                    <div class="input-group">
                        <span class="input-group-addon alert-info">
                            <span class="glyphicon glyphicon-edit"></span>
                        </span>
                        <asp:TextBox ID="txtRegistroDomicilio" runat="server" CssClass="form-control" placeholder="Ingrese su Domicilio" />
                    </div>
                </td>
            </tr>
        </table>



















        <%--<!--NOMBRE DE USUARIO-->
        <br />
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="NOMBRE DE USUARIO" CssClass="col-md-2 AlineadoDerecha"></asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtNombreUsuario" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <!--CONTRASEÑA-->
        <br />
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="CONTRASEÑA" CssClass="col-md-2 AlineadoDerecha"></asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtContrasenia" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <!--GRUPO-->
        <br />
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="GRUPO" CssClass="col-md-2 AlineadoDerecha"></asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtGrupo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <!-- ACTIVO -->
        <div class="form-group">
            <asp:Label ID="lblActivo" runat="server" Text="ACTIVO" CssClass="col-md-2 AlineadoDerecha "></asp:Label>
            <div class="col-md-1">
                <asp:CheckBox ID="chkActivo" runat="server" CssClass="AlineadoDerecha" BorderStyle="None" Checked="true" />
            </div>
        </div>
        <!--NOMBRE-->
        <br />
        <div class="form-group">
            <asp:Label ID="lblNombre" runat="server" Text="NOMBRE" CssClass="col-md-2 AlineadoDerecha"></asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <!--APELLIDO-->
        <div class="form-group">
            <asp:Label ID="lblApellido" runat="server" Text="APELLIDO" CssClass="col-md-2 AlineadoDerecha"> </asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <!--EDAD-->
        <div class="form-group">
            <asp:Label ID="lblEdad" runat="server" Text="EDAD" CssClass="col-md-2 AlineadoDerecha"> </asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <!--TELEFONO-->
        <div class="form-group">
            <asp:Label ID="lblTelefono" runat="server" Text="TELEFONO" CssClass="col-md-2 AlineadoDerecha"></asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <!--CORREO ELECTRONICO-->
        <div class="form-group">
            <asp:Label ID="lblCorreoElectronico" runat="server" Text="CORREO ELECTRONICO" CssClass="col-md-2 AlineadoDerecha"></asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtCorreoElectronico" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <!--DOMICILIO-->
        <div class="form-group">
            <asp:Label ID="lblDomicilio" runat="server" Text="DOMICILIO" CssClass="col-md-2 AlineadoDerecha"></asp:Label>
            <div class="col-md-6">
                <asp:TextBox ID="txtDomicilio" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <!-- BOTON GUARDAR -->
        <div class="form-group">
            <div class="col-md-2 col-md-offset-2">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Width="180" CssClass="boton_azul" OnClick="btnGuardar_Click"></asp:Button>
            </div>
        </div>--%>
    </div>




</asp:Content>


