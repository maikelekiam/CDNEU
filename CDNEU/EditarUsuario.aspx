<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarUsuario.aspx.cs" Inherits="CDNEU.EditarUsuario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .boton_azul {
            text-decoration: none;
            padding: 2px;
            font-weight: 400;
            font-size: 15px;
            color: #ffffff;
            background-color: #6082ac;
            border-radius: 6px;
            border: 2px solid #6082ac;
            width: 180px;
        }

            .boton_azul:hover {
                color: #6082ac;
                background-color: #ffffff;
                border-color: #6082ac;
            }

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

    <div class="panel-group" id="accordion">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                        <span class="glyphicon glyphicon-arrow-down"></span>  DATOS PERSONALES</a>
                </h4>
            </div>
            <div id="collapse1" class="panel-collapse collapse">
                <div class="panel-body">
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
                        <tr>
                            <td class="anchotabla altotabla"></td>
                            <td></td>
                        </tr>
                    </table>
                    <!--Boton de registro-->
                    <div class="form-group">
                        <div class="col-md-10 col-md-offset-1">
                            <asp:Button ID="btnRegistro" runat="server"
                                Text="Enviar Datos" CssClass="boton_azul" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                        <span class="glyphicon glyphicon-arrow-down"></span>  FORMACION ACADEMICA</a>
                </h4>
            </div>
            <div id="collapse2" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td class="anchotabla">
                                <asp:Label ID="Label1" runat="server" Text="Label">Usuario</asp:Label>
                            </td>
                            <td class="anchotextbox">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </span>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Ingrese un nombre de Usuario" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotabla altotabla"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="anchotabla">
                                <asp:Label ID="Label2" runat="server" Text="Label">Contraseña</asp:Label>
                            </td>
                            <td class="anchotextbox">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-lock"></span>
                                    </span>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese una Contraseña" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotabla altotabla"></td>
                            <td></td>
                        </tr>
                    </table>













                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                        <span class="glyphicon glyphicon-arrow-down"></span>  ACTIVIDAD PROFESIONAL</a>
                </h4>
            </div>
            <div id="collapse3" class="panel-collapse collapse">
                <div class="panel-body">
                    ACTIVIDAD PROFESIONAL
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
                        <span class="glyphicon glyphicon-arrow-down"></span>  Si desarrolla su ACTIVIDAD de manera independiente</a>
                </h4>
            </div>
            <div id="collapse4" class="panel-collapse collapse">
                <div class="panel-body">
                    Si desarrolla su ACTIVIDAD de manera independiente
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">
                        <span class="glyphicon glyphicon-arrow-down"></span>  En relacion a la PRODUCCION DE BIENES</a>
                </h4>
            </div>
            <div id="collapse5" class="panel-collapse collapse">
                <div class="panel-body">
                    En relacion a la PRODUCCION DE BIENES
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">
                        <span class="glyphicon glyphicon-arrow-down"></span>  En relacion a la IDENTIDAD de Diseño</a>
                </h4>
            </div>
            <div id="collapse6" class="panel-collapse collapse">
                <div class="panel-body">
                    En relacion a la IDENTIDAD de Diseño
                </div>
            </div>
        </div>
    </div>
</asp:Content>
