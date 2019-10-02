<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CDNEU.Login" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>LOGIN</title>
    <meta name="description" content="CDNEU | Multi-purpose HTML5 Template">
    <meta name="author" content="IT-RAYS">

    <!-- Devices Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />

    <!-- Put favicon.ico and apple-touch-icon(s).png in the images folder -->
    <link rel="shortcut icon" href="imagenes/copade.ico">


    <link href="css/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="css/bootstrap-select.css" rel="stylesheet" />

    <link href="css/estilo-textbox.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/assets.css">


    <style>
        h3 {
            font-family: 'Oswald','sans-serif';
        }

        .panel-body {
            /*padding: 5px 0px;*/
        }

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

    <!-- Template CSS files -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/shortcodes.css">
    <link id="theme_css" rel="stylesheet" href="assets/css/light.css">
    <link id="skin_css" rel="stylesheet" href="assets/css/skins/default.css">
</head>
<body>
    <br />
    <br />
    <form id="form1" runat="server" class="form-horizontal autoHeight">
        <div id="exTab3" class="container">
            <div class="col-md-6 col-md-offset-3">

                <%--Panel Externo--%>
                <div class="panel panel-default">
                    <div class="panel-body">

                        <ul class="nav nav-pills">
                            <li class="active">
                                <a href="#1b" data-toggle="tab">Ingresá!</a>
                            </li>
                            <li><a href="#2b" data-toggle="tab">Registrate!</a>
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
                                <%--<h3>Nuevo Usuario</h3>
                                <hr />--%>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label7" runat="server" Text="Label">Usuario</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroNombreUsuario" runat="server" CssClass="form-control" placeholder="Ingrese un nombre de Usuario" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label8" runat="server" Text="Label">Contraseña</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-lock"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroContrasenia" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese una Contraseña" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label9" runat="server" Text="Label">Nombre</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-edit"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroNombre" runat="server" CssClass="form-control" placeholder="Ingrese su nombre" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label3" runat="server" Text="Label">Apellido</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-edit"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroApellido" runat="server" CssClass="form-control" placeholder="Ingrese su apellido" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label5" runat="server" Text="Label">DNI</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-edit"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroDni" runat="server" CssClass="form-control" placeholder="Ingrese su DNI" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label4" runat="server" Text="Label">Correo Electronico</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-envelope"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroCorreoElectronico" runat="server" CssClass="form-control" placeholder="Ingrese su Correo Electronico" />
                                        </div>
                                    </div>
                                </div>
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
    <%--PARA VALIDAR SOLO NUMEROS--%>
    <script>
        function validarSoloNumeros(e) {
            tecla = (document.all) ? e.keyCode : e.which;
            if (tecla == 8) return true;
            patron = /\d/;
            return patron.test(String.fromCharCode(tecla));
        }
    </script>
</body>
</html>
