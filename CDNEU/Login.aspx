<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CDNEU.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link rel="stylesheet" href="assets/css/assets.css" />


    <style>
        body {
            background: url('../imagenes/bg02.jpg') fixed;
            background-size: cover;
            padding: 0;
            margin: 0;
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

        .anchotextbox {
            width: 300px;
        }

        .altotabla {
            height: 5px;
        }
    </style>

</head>
<body>
    <br />
    <br />
    <form id="form1" runat="server" class="form-horizontal">
        <div id="exTab3" class="container">
            <div class="col-md-6 col-md-offset-3">

                <%--Panel Externo--%>
                <div class="panel panel-default">
                    <div class="panel-body">

                        <ul class="nav nav-pills">
                            <li class="active">
                                <a href="#1b" data-toggle="tab">Login</a>
                            </li>
                            <li><a href="#2b" data-toggle="tab">Registro</a>
                            </li>
                        </ul>

                        <div class="tab-content clearfix">

                            <%--Inicio del tab-pane del Login--%>
                            <div class="tab-pane active" id="1b">
                                <h3>Ingreso al Sistema</h3>
                                <hr />
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label1" runat="server" Text="Label">Usuario</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <asp:TextBox ID="txtLoginNombreUsuario" runat="server" CssClass="form-control" placeholder="Ingrese un nombre de Usuario" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label2" runat="server" Text="Label">Contraseña</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-lock"></span>
                                            </span>
                                            <asp:TextBox ID="txtLoginContrasenia" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese una Contraseña" />
                                        </div>
                                    </div>
                                </div>

                                <%--<div class="logo">
                                    <img src="imagenes/copade-barra.jpg" alt="Sample Image" width="300" runat="server" />
                                </div>--%>
                                <hr />
                                <div class="form-group">
                                    <div class="col-md-4 col-md-offset-1">
                                        <asp:Button ID="btnLogin" runat="server"
                                            Text="Ingresar" OnClick="btnLogin_Click" CssClass="boton_azul" />
                                    </div>
                                </div>
                            </div>
                            <%--Fin del tab-pane del Login--%>

                            <%--Inicio del tab-pane del Registro--%>
                            <div class="tab-pane" id="2b">
                                <h3>Registro de Nuevo Usuario</h3>
                                <hr />



                                <asp:image id="setincode" width="250" runat="server" Visible="false"/>
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
                                        <td class="anchotabla altotabla">
                                            <br />
                                        </td>
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
                                            <asp:Label ID="Label3" runat="server" Text="Label">Apellido</asp:Label>
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
                                            <asp:Label ID="Label4" runat="server" Text="Label">Correo Electronico</asp:Label>
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
                                            <asp:Label ID="Label5" runat="server" Text="Label">Telefono</asp:Label>
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
                                            <asp:Label ID="Label6" runat="server" Text="Label">Edad</asp:Label>
                                        </td>
                                        <td class="anchotextbox">
                                            <div class="input-group">
                                                <span class="input-group-addon alert-info">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                                <asp:TextBox ID="txtRegistroEdad" onkeypress="return validarSoloNumeros(event);" MaxLength="2" runat="server" CssClass="form-control" placeholder="Ingrese su Edad" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="anchotabla altotabla"></td>
                                        <td></td>
                                    </tr>
                                    <%--<tr>
                                        <td class="anchotabla">
                                            <asp:Label ID="Label10" runat="server" Text="Label">Domicilio</asp:Label>
                                        </td>
                                        <td class="anchotextbox">
                                            <div class="input-group">
                                                <span class="input-group-addon alert-info">
                                                    <span class="glyphicon glyphicon-home"></span>
                                                </span>
                                                <asp:TextBox ID="txtRegistroDomicilio" runat="server" CssClass="form-control" placeholder="Ingrese su Domicilio" />
                                            </div>
                                        </td>
                                    </tr>--%>
                                </table>






                                <%--<!--USUARIO Y CONTRASEÑA-->
                                <div class="form-group col-md-12">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label3" runat="server" Text="Label">Usuario</asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroUsuario" runat="server" CssClass="form-control" placeholder="Ingrese nombre de Usuario" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-12">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label4" runat="server" Text="Label">Contraseña</asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-lock"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroContrasenia" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese una Contraseña" />
                                        </div>
                                    </div>
                                </div>--%>

                                <%--<!--NOMBRE Y APELLIDO-->
                                <div class="form-group col-md-12">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label9" runat="server" Text="Label">Nombre</asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-edit"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroNombre" runat="server" CssClass="form-control" placeholder="Ingrese su nombre" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-12">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label10" runat="server" Text="Label">Apellido</asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-edit"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroApellido" runat="server" CssClass="form-control" placeholder="Ingrese su apellido" />
                                        </div>
                                    </div>
                                </div>--%>

                                <%--<!--MAIL Y TELEFONO-->
                                <div class="form-group col-md-12">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label5" runat="server" Text="Label">Correo Electronico</asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-envelope"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroMail" runat="server" CssClass="form-control" placeholder="Ingrese su correo electronico" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-12">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label6" runat="server" Text="Label">Telefono</asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-phone-alt"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroTelefono" runat="server" CssClass="form-control" placeholder="Ingrese su telefono" />
                                        </div>
                                    </div>
                                </div>--%>




                                <br />
                                <!--Boton de registro-->
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:Button ID="btnRegistro" runat="server"
                                            Text="Enviar Datos" OnClick="btnRegistro_Click" CssClass="boton_azul" />
                                    </div>
                                </div>
                            </div>
                            <%--Fin del Panel del Registro--%>
                        </div>
                    </div>

                </div>
                <%--Fin de Panel Externo--%>
            </div>
        </div>
    </form>

    <script src="js/jquery-1.12.3.js"></script>
    <script src="js/bootstrap.js"></script>

</body>
</html>
