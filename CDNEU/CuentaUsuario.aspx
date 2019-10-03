<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CuentaUsuario.aspx.cs" Inherits="CDNEU.CuentaUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        input[type="radio"] + label {
            margin-left: 10px;
        }

        .col-md-6 {
            padding-left: 12px;
        }

        .container-fluid {
            padding-right: 5px;
            padding-left: 5px;
            margin-right: auto;
            margin-left: auto;
        }

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

        .anchotablaFormacionAcademica {
            width: 300px;
        }

        .anchotablaActividadProfesional {
            width: 600px;
        }

        .anchotablaActividadIndependiente {
            width: 600px;
        }

        .anchotextbox {
            width: 300px;
        }

        .anchotextboxCarrera {
            width: 500px;
        }

        .altotabla {
            height: 15px;
        }
    </style>

    <div class="container-fluid">
        <asp:Panel ID="Panel1" CssClass="panel panel-default" runat="server">
            <div class="panel-heading">
                <h3>Datos de Mi Cuenta</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-6">
                        <table>
                            <tr>
                                <asp:Label ID="lblRegistroNombreUsuario" runat="server" Text="Label">Usuario</asp:Label>
                            </tr>
                            <tr>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </span>
                                    <asp:TextBox ID="txtRegistroNombreUsuario" runat="server" placeHolder="Ingrese Usuario" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                </div>
                            </tr>
                            <tr>
                                <td class="altotabla"></td>
                                <td></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <asp:Label ID="Label4" runat="server" Text="Label" Visible="false">Contraseña Actual</asp:Label>
                            </tr>
                            <tr>
                                <div class="input-group">
                                    <%--<span class="input-group-addon">
                                        <span class="glyphicon glyphicon-lock"></span>
                                    </span>--%>
                                    <asp:TextBox ID="txtRegistroContrasenia" runat="server" Visible="false" CssClass="form-control" />
                                </div>
                            </tr>
                            <%--<tr>
                                <td class="altotabla"></td>
                                <td></td>
                            </tr>--%>
                        </table>
                        <table>
                            <tr>
                                <asp:Label ID="Label1" runat="server" Text="Label">Nueva Contraseña</asp:Label>
                            </tr>
                            <tr>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-lock"></span>
                                    </span>
                                    <asp:TextBox ID="txtRegistroNuevaContrasenia" runat="server" CssClass="form-control" />
                                </div>
                            </tr>
                            <tr>
                                <td class="altotabla"></td>
                                <td></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <asp:Label ID="Label2" runat="server" Text="Label">Reingresar Nueva Contraseña</asp:Label>
                            </tr>
                            <tr>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-lock"></span>
                                    </span>
                                    <asp:TextBox ID="txtRegistroReingresarNuevaContrasenia" runat="server" CssClass="form-control" />
                                </div>
                            </tr>
                            <tr>
                                <td class="altotabla"></td>
                                <td></td>
                            </tr>
                        </table>

                        <h3>
                            <asp:Label ID="lblMensaje" runat="server" Style="color: red" />
                        </h3>
                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-6">
                                <asp:Button ID="btnActualizarUsuario" Width="230px" runat="server" OnClientClick="return confirm('¿Esta seguro de actualizar el nombre de usuario?')" Text="Actualizar Nombre de Usuario" CssClass="boton_azul" OnClick="btnActualizarUsuario_Click" />
                            </div>
                            <div class="col-md-6">
                                <asp:Button ID="btnActualizarContrasenia" runat="server" OnClientClick="return confirm('¿Esta seguro de actualizar la contraseña?')" Text="Actualizar Contraseña" CssClass="boton_azul" OnClick="btnActualizarContrasenia_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
