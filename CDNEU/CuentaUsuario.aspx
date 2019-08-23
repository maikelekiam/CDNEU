<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CuentaUsuario.aspx.cs" Inherits="CDNEU.CuentaUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        input[type="radio"] + label {
            margin-left: 10px;
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
            height: 5px;
        }
    </style>
    <div class="container">
        <asp:Panel ID="Panel1" CssClass="panel panel-default" runat="server">
            <div class="panel-heading">
                <h3>Datos de la Cuenta</h3>
            </div>
            <br />
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
                </table>
                <hr />
                <!--Boton de registro-->
                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar Datos" CssClass="boton_azul" />
                    </div>
                </div>



            </div>
        </asp:Panel>
    </div>
</asp:Content>
