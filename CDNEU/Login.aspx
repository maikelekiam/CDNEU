<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CDNEU.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="js/jquery-1.12.3.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <style>
        body {
            background: url('../imagenes/bg02.jpg') fixed;
            background-size: cover;
            padding: 0;
            margin: 0;
        }
    </style>

</head>
<body>
    <br />
    <br />
    <form id="form1" runat="server" class="form-horizontal">
        <div id="exTab3" class="container">
            <div class="col-md-8 col-md-offset-2">

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
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label1" runat="server" Text="Label">Usuario</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <asp:TextBox ID="txtuserid" runat="server" CssClass="form-control" placeholder="Ingrese un nombre de Usuario" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label2" runat="server" Text="Label">Contraseña</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-exclamation-sign"></span>
                                            </span>
                                            <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese una Contraseña" />
                                        </div>
                                    </div>
                                </div>

                                <%--<div class="logo">
                                    <img src="imagenes/copade-barra.jpg" alt="Sample Image" width="300" runat="server" />
                                </div>--%>

                                <div class="form-group">
                                    <div class="col-md-4 col-md-offset-1">
                                        <asp:Button ID="btnlogin" runat="server"
                                            Text="Ingresar" OnClick="btnlogin_Click" CssClass="btn btn-default btn-lg btn-block" />
                                    </div>
                                </div>
                            </div>
                            <%--Fin del tab-pane del Login--%>




                            <%--Inicio del Panel del Registro--%>
                            <div class="tab-pane" id="2b">
                                <h3>Registro de Nuevo Usuario</h3>
                                <div class="form-group col-md-12">
                                    <div class="col-md-6">
                                        <asp:Label ID="Label3" runat="server" Text="Label">Usuario</asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="Label4" runat="server" Text="Label">Contraseña</asp:Label>
                                    </div>
                                </div>
                                <div class="form-group col-md-12">
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroUsuario" runat="server" CssClass="form-control" placeholder="Ingrese nombre de Usuario" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-exclamation-sign"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroContrasenia" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese una Contraseña" />
                                        </div>
                                    </div>
                                </div>


                                <!--NOMBRE-->
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label5" runat="server" Text="Label">Nombre</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-check"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroNombre" runat="server" CssClass="form-control" placeholder="Ingrese su nombre" />
                                        </div>
                                    </div>
                                </div>

                                <!--APELLIDO-->
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label6" runat="server" Text="Label">Apellido</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-check"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroApellido" runat="server" CssClass="form-control" placeholder="Ingrese su apellido" />
                                        </div>
                                    </div>
                                </div>

                                <!--MAIL-->
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label7" runat="server" Text="Label">Correo Electronico</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-envelope"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroMail" runat="server" CssClass="form-control" placeholder="Ingrese su correo electronico" />
                                        </div>
                                    </div>
                                </div>

                                <!--TELEFONO-->
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-1">
                                        <asp:Label ID="Label8" runat="server" Text="Label">Telefono</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon alert-info">
                                                <span class="glyphicon glyphicon-phone"></span>
                                            </span>
                                            <asp:TextBox ID="txtRegistroTelefono" runat="server" CssClass="form-control" placeholder="Ingrese su telefono" />
                                        </div>
                                    </div>
                                </div>

                                <!--Boton de registro-->
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:Button ID="btnRegistro" runat="server"
                                            Text="Enviar Datos" OnClick="btnRegistro_Click" CssClass="btn btn-default btn-lg btn-block" />
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

    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>--%>
</body>
</html>
