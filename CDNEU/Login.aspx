﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CDNEU.Login" %>

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
        /* Imagen utilizada por defecto, la que se utlizará en pantallas pequeñas */
        body {
            background: url('imagenes/fondoCREAR.jpg') fixed;
            background-size: cover;
            padding: 0;
            margin: 0;
        }


        /* Imagen utilizada en pantallas de anchura 480 px y superior */
        @media (min-width: 150px) {
            body {
                background: url('imagenes/fondoCREARmobile.jpg') fixed;
                background-size: cover;
                padding: 0;
                margin: 0;
            }
        }


        /* Imagen utilizada en pantallas de anchura 480 px y superior */
        @media (min-width: 480px) {
            body {
                background: url('imagenes/fondoCREAR.jpg') fixed;
                background-size: cover;
                padding: 0;
                margin: 0;
            }
        }

        /* Imagen utilizada en pantallas de anchura 768 px y superior */
        @media (min-width: 768px) {
            body {
                background: url('imagenes/fondoCREAR.jpg') fixed;
                background-size: cover;
                padding: 0;
                margin: 0;
            }
        }

        /* Imagen utilizada en pantallas de anchura 1200 px y superior */
        @media (min-width: 1200px) {
            body {
                background: url('imagenes/fondoCREAR.jpg') fixed;
                background-size: cover;
                padding: 0;
                margin: 0;
            }
        }







        h3 {
            font-family: 'Oswald','sans-serif';
        }

        /*body {
            background: url('imagenes/fondoCREARtransparente.jpg') fixed;
            background-size: cover;
            padding: 0;
            margin: 0;
        }*/

        .panel {
            margin-bottom: 20px;
            background: rgba(240, 240, 240, 0.15);
            border: 1px solid thick;
            border-radius: 4px;
            -webkit-box-shadow: 0 10px 10px rgba(0,0,0,.05);
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

        .boton_modal {
            text-decoration: none;
            font-weight: 400;
            font-size: 15px;
            color: Background;
            background-color: transparent;
            border-radius: 6px;
            border: 2px none #ffffff;
            text-align: left;
        }

        .contenedor {
            margin-left: 5%;
            width: 90%;
        }

        .mk01 {
            width: 90%;
            margin-left: 5%;
        }

        .form-control {
            background-color: white;
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
    <form id="form1" runat="server" class="form-horizontal">
        <div id="exTab3" class="contenedor">
            <div>
                <%--Panel Externo--%>
                <div class="panel panel-default col-md-5 col-md-offset-3 col-lg-5 col-lg-offset-3 col-sm-5 col-sm-offset-3">
                    <div class="panel-body">

                        <ul class="nav nav-pills">
                            <li class="active">
                                <a href="#1b" data-toggle="tab">Ingresá!</a>
                            </li>
                            <li><a href="#2b" data-toggle="tab">Registrate!</a>
                            </li>
                        </ul>

                        <div class="tab-content">

                            <%--Inicio del tab-pane del Login--%>
                            <div class="tab-pane active" id="1b">
                                <h3>Registro de Industrias Culturales y Creativas</h3>
                                <hr />
                                <div class="form-group">
                                    <div class="mk01">
                                        <asp:Label ID="Label1" runat="server" Text="Label">Usuario</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <asp:TextBox ID="txtLoginNombreUsuario" runat="server" CssClass="form-control" placeholder="Tu Usuario"
                                                onkeyup="minuscula(this);" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mk01">
                                        <asp:Label ID="Label2" runat="server" Text="Label">Contraseña</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-lock"></span>
                                            </span>
                                            <asp:TextBox ID="txtLoginContrasenia" runat="server" CssClass="form-control" TextMode="Password" placeholder="Tu Contraseña" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-eye-close" id="show" action="hide"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <%--<div class="logo">
                                    <img src="imagenes/copade-barra.jpg" alt="Sample Image" width="300" runat="server" />
                                </div>--%>
                                <hr />
                                <div class="form-group">
                                    <div class="mk01">
                                        <asp:Button ID="btnLogin" runat="server"
                                            Text="Ingresar" OnClick="btnLogin_Click" CssClass="boton_azul" />

                                        <button type="button" id="btnOlvidoContrasenia" class="boton_modal" data-toggle="modal" data-target="#modalOlvidoContrasenia">¿Olvidaste tu usuario / contraseña?</button>
                                    </div>
                                </div>
                            </div>
                            <%--Fin del tab-pane del Login--%>

                            <%--Inicio del tab-pane del Registro--%>
                            <div class="tab-pane" id="2b">
                                <%--<h3>Nuevo Usuario</h3>
                                <hr />--%>
                                <div class="form-group">
                                    <div class="mk01">
                                        <asp:Label ID="Label7" runat="server" Text="Label">Usuario</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroNombreUsuario" runat="server" CssClass="form-control" placeholder="Tu Usuario" onkeyup="minuscula(this);" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mk01">
                                        <asp:Label ID="Label8" runat="server" Text="Label">Contraseña</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-lock"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroContrasenia" runat="server" CssClass="form-control" TextMode="Password" placeholder="Tu Contraseña" />
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-eye-close" id="show2" action="hide"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mk01">
                                        <asp:Label ID="Label9" runat="server" Text="Label">Nombre</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-edit"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroNombre" runat="server" CssClass="form-control" placeholder="Tu Nombre" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mk01">
                                        <asp:Label ID="Label3" runat="server" Text="Label">Apellido</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-edit"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroApellido" runat="server" CssClass="form-control" placeholder="Tu Apellido" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mk01">
                                        <asp:Label ID="Label5" runat="server" Text="Label">DNI</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-edit"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroDni" runat="server" CssClass="form-control" placeholder="Tu DNI" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mk01">
                                        <asp:Label ID="Label4" runat="server" Text="Label">Correo Electronico</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-envelope"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroCorreoElectronico" runat="server" CssClass="form-control" placeholder="Tu Correo Electronico" />
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <!--Boton de registro-->
                                <div class="form-group">
                                    <div class="mk01">
                                        <asp:Button ID="btnRegistro" runat="server"
                                            Text="Enviar Datos" OnClick="btnRegistro_Click" CssClass="boton_azul" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mk01">
                                        <button type="button" id="btnPolitica" class="boton_modal">Al registrarte, aceptas nuestras Condiciones de uso y Política de privacidad.</button>
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


        <!-- MODAL OLVIDO CONTRASEÑA  -->
        <div class="form-group">
            <div class="modal fade" id="modalOlvidoContrasenia" tabindex="-1" role="dialog" aria-labelledby="modalLabelOlvidoContrasenia" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="modalLabelOlvidoContrasenia">Ingrese su dirección de Correo Electrónico</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="mk01">
                                    <asp:TextBox ID="txtOlvidoContraseniaCorreoElectronicoModal" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="form-group">
                                    <div class="mk01">
                                        <%--<asp:Button runat="server" ID="btnModalOlvidoContraseniaSalir" Text="Salir" class="boton_rojo" data-dismiss="modal" />--%>
                                        <asp:Button runat="server" ID="btnModalOlvidoContraseniaEnviar" Text="Enviar" CssClass="boton_verde" OnClick="btnModalOlvidoContraseniaEnviar_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="js/jquery-1.12.3.js"></script>
    <script src="js/bootstrap.js"></script>

    <%--PARA HACER VISIBLE LA CONTRASEÑA--%>
    <script>
        $(document).ready(function () {
            $('#show').on('click', (function (e) {
                e.preventDefault();

                var current = $(this).attr('action');

                if (current == 'hide') {
                    $('#txtLoginContrasenia').removeAttr('type');
                    $(this).removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open').attr('action', 'show');
                }
                if (current == 'show') {
                    $('#txtLoginContrasenia').attr('type', 'password');
                    $(this).removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close').attr('action', 'hide');
                }
            }))
        })
    </script>
    <script>
        $(document).ready(function () {
            $('#show2').on('click', (function (e) {
                e.preventDefault();

                var current = $(this).attr('action');

                if (current == 'hide') {
                    $('#txtRegistroContrasenia').removeAttr('type');
                    $(this).removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open').attr('action', 'show');
                }
                if (current == 'show') {
                    $('#txtRegistroContrasenia').attr('type', 'password');
                    $(this).removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close').attr('action', 'hide');
                }
            }))
        })
    </script>
    <%--PARA VALIDAR SOLO NUMEROS--%>
    <script>
        function validarSoloNumeros(e) {
            tecla = (document.all) ? e.keyCode : e.which;
            if (tecla == 8) return true;
            patron = /\d/;
            return patron.test(String.fromCharCode(tecla));
        }
    </script>
    <script>
        function minuscula(e) {
            e.value = e.value.toLowerCase();
        }
    </script>
</body>
</html>
