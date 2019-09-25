<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarUsuario.aspx.cs" Inherits="CDNEU.EditarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .estilo-ul {
            height: 10px;
            font-weight: bolder;
        }

        .h4, h4 {
            font-size: 18px;
            margin-top: 5px;
            margin-bottom: 5px;
            margin: 0 0 5px;
            line-height: 1.5;
            /*font-weight: 400;*/
            font-family: 'Oswald', sans-serif;
        }



        .estiloRedesSociales {
            background-position: left;
            background-repeat: no-repeat;
            padding-left: 50px;
            padding-right: 50px;
            background-size: contain;
        }

        input[type="radio"] + label {
            margin-left: 10px;
        }

        .parpadea {
            animation-name: parpadeo;
            animation-duration: 1s;
            animation-timing-function: linear;
            animation-iteration-count: infinite;
            -webkit-animation-name: parpadeo;
            -webkit-animation-duration: 1s;
            -webkit-animation-timing-function: linear;
            -webkit-animation-iteration-count: infinite;
        }

        @-moz-keyframes parpadeo {
            0% {
                opacity: 1.0;
            }

            50% {
                opacity: 0.0;
            }

            100% {
                opacity: 1.0;
            }
        }

        @-webkit-keyframes parpadeo {
            0% {
                opacity: 1.0;
            }

            50% {
                opacity: 0.0;
            }

            100% {
                opacity: 1.0;
            }
        }

        @keyframes parpadeo {
            0% {
                opacity: 1.0;
            }

            50% {
                opacity: 0.0;
            }

            100% {
                opacity: 1.0;
            }
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

        .boton_rojo {
            text-decoration: none;
            padding: 2px;
            font-weight: 400;
            font-size: 15px;
            color: #ffffff;
            background-color: #fb5d5d;
            border-radius: 6px;
            border: 2px solid #fb5d5d;
            width: 180px;
        }

            .boton_rojo:hover {
                color: #fb5d5d;
                background-color: #ffffff;
                border-color: #fb5d5d;
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

        .panel-body {
            padding: 5px;
        }

        .panel {
            padding-left: 5px;
        }

        .container-fluid {
            padding-right: 0px;
            padding-left: 0px;
            margin-right: auto;
            margin-left: auto;
        }

        .container {
            padding-right: 0px;
            padding-left: 0px;
            margin-right: auto;
            margin-left: auto;
        }

        .row1 {
            margin-right: 5px;
            margin-left: 5px;
        }

        table {
            border-spacing: 0;
            border-collapse: separate;
        }

        label {
            display: inline;
        }
    </style>

    <div class="container-fluid">
        <div class="panel-group" id="accordion">
            <%--DATOS PERSONALES--%>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" onclick="scrollWin1()">
                            <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>DATOS PERSONALES</a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <table>
                                    <tr>
                                        <asp:Label ID="lblDatosPersonalesNombre" runat="server" Text="Label">Tu Nombre</asp:Label>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesNombre" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                        <td></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:Label ID="Label4" runat="server" Text="Label">Tu Apellido</asp:Label>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesApellido" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                        <td></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:Label ID="Label5" runat="server" Text="Label">Tu Correo Electronico</asp:Label>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-envelope"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesCorreoElectronico" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                        <td></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:Label ID="Label6" runat="server" Text="Label">Tu Telefono / Celular</asp:Label>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-phone-alt"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesTelefono" runat="server" CssClass="form-control" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                        <td></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:Label ID="Label10" runat="server" Text="Label">Tu Edad</asp:Label>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesEdad" onkeypress="return validarSoloNumeros(event);" MaxLength="2" runat="server" CssClass="form-control" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                        <td></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:Label ID="Label11" runat="server" Text="Label">Tu Domicilio</asp:Label>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-home"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesDomicilio" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>
                                <hr />
                                <table>
                                    <tr>
                                        <asp:Label ID="Label57" runat="server" Text="Label">Localidad</asp:Label>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-map-marker"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesLocalidad" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:Label ID="Label58" runat="server" Text="Label">Provincia</asp:Label>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-map-marker"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesProvincia" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>
                                <hr />

                                <h4>REDES SOCIALES</h4>

                                <table>
                                    <asp:Label ID="Label59" runat="server">Tu Perfil de Facebook</asp:Label>
                                    <asp:TextBox ID="txtFacebook" Height="45px" BorderStyle="Solid" BorderColor="#cccccc" Style="background-image: url(imagenes/icono-facebook.jpg);" runat="server" CssClass="form-control estiloRedesSociales" TextMode="MultiLine" Rows="1" />
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>

                                <table>
                                    <asp:Label ID="Label60" runat="server">Tu Perfil de Instagram</asp:Label>
                                    <asp:TextBox ID="txtInstagram" Height="45px" BorderStyle="Solid" BorderColor="#cccccc" Style="background-image: url(imagenes/icono-instagram.jpg);" runat="server" CssClass="form-control estiloRedesSociales" TextMode="MultiLine" Rows="1" />
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>

                                <table>
                                    <asp:Label ID="Label61" runat="server">Tu Perfil de Twitter</asp:Label>
                                    <asp:TextBox ID="txtTwitter" Height="45px" BorderStyle="Solid" BorderColor="#cccccc" Style="background-image: url(imagenes/ic01-twitter.png);" runat="server" CssClass="form-control estiloRedesSociales" TextMode="MultiLine" Rows="1" />
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>

                                <table>
                                    <asp:Label ID="Label62" runat="server">Tu Canal de YouTube</asp:Label>
                                    <asp:TextBox ID="txtYouTube" Height="45px" BorderStyle="Solid" BorderColor="#cccccc" Style="background-image: url(imagenes/icono-youtube.jpg);" runat="server" CssClass="form-control estiloRedesSociales" TextMode="MultiLine" Rows="1" />
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>

                                <table>
                                    <asp:Label ID="Label63" runat="server">Tu Perfil Flickr</asp:Label>
                                    <asp:TextBox ID="txtFlicker" Height="45px" BorderStyle="Solid" BorderColor="#cccccc" Style="background-image: url(imagenes/icono-flickr.jpg);" runat="server" CssClass="form-control estiloRedesSociales" TextMode="MultiLine" Rows="1" />
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>
                                <hr />

                                <h4>PLATAFORMA DE COMERCIALIZACION</h4>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkRedesSociales" runat="server" Width="20px" />
                                    <asp:Label ID="lblRedesSociales" runat="server" Text="Redes Sociales"></asp:Label>
                                </ul>
                                <ul>
                                    <asp:Label ID="Label25" runat="server" Text="( Facebook / Instagram / Twitter / YouTube / WhatsApp )"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkMercadoLibre" runat="server" Width="20px" />
                                    <asp:Label ID="lblMercadoLibre" runat="server" Text="Mercado Libre"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkSitioWeb" runat="server" Width="20px" />
                                    <asp:Label ID="lblSitioWeb" runat="server" Text="Sitio WEB"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkTiendaNube" runat="server" Width="20px" />
                                    <asp:Label ID="lblTiendaNube" runat="server" Text="Tienda Nube"></asp:Label>
                                </ul>

                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkFerias" runat="server" Width="20px" />
                                    <asp:Label ID="lblFerias" runat="server" Text="Ferias"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkLocalComercial" runat="server" Width="20px" />
                                    <asp:Label ID="lblLocalComercial" runat="server" Text="Local Comercial"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkPersonal" runat="server" Width="20px" />
                                    <asp:Label ID="lblPersonal" runat="server" Text="Personal"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkShowRoom" runat="server" Width="20px" />
                                    <asp:Label ID="lblShowRoom" runat="server" Text="ShowRoom"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkNoComercializa" runat="server" Width="20px" />
                                    <asp:Label ID="lblNoComercializa" runat="server" Text="No comercializa aún"></asp:Label>
                                </ul>
                                <table>
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>

                                <table>
                                    <asp:TextBox ID="txtPlataformaComercializacionOtro" placeholder="Otra Plataforma" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                </table>
                            </div>
                            <%--del div group--%>

                            <%--FOTO DE PERFIL--%>
                            <div class="col-md-6">
                                <div>
                                    <table border="0">
                                        <tr>
                                            <td colspan="2">
                                                <h3>Foto de Perfil</h3>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center" colspan="2">
                                                <asp:Image ID="imgURL" runat="server" Style="width: 500px; border: solid;" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <asp:Button ID="btnGuardarDatosPersonales" runat="server" Text="Guardar Datos" CssClass="boton_azul parpadea" OnClick="btnGuardarDatosPersonales_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--PANEL FORMACION ACADEMICA--%>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" onclick="scrollWin2()">
                            <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>FORMACION ACADEMICA</a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <table>
                                    <tr>
                                        <td>
                                            <h4>Estudios Oficiales (maximo nivel alcanzado)</h4>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBEstudiosOficiales" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem Value="1">Secundario</asp:ListItem>
                                                <asp:ListItem Value="2">Terciario</asp:ListItem>
                                                <asp:ListItem Value="3">Universitario</asp:ListItem>
                                                <asp:ListItem Value="4">Posgrado</asp:ListItem>
                                                <asp:ListItem Value="5">Otro</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtEstudiosOficialesOtro" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>
                                    <asp:Label ID="Label1" runat="server" Text="Label">Título Obtenido</asp:Label>
                                </h4>
                                <table>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtTituloObtenido" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>
                                    <asp:Label ID="Label2" runat="server" Text="Label">Institución que emitió el Título</asp:Label>
                                </h4>
                                <table>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtInstitucionEmisoraTitulo" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>
                                    <asp:Label ID="Label3" runat="server" Text="Label">Indique si posee otros estudios vinculados al diseño</asp:Label>
                                </h4>
                                <table>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtOtrosEstudios" runat="server" CssClass="form-control" placeholder="Nombre e Institucion" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            <h4>
                                                <asp:Label ID="lblEsEstudiante" runat="server" Text="Label">Es usted estudiante de una carrera/curso vinculada al diseño?</asp:Label>
                                            </h4>
                                        </td>
                                        <td>
                                            <div class="col-md-3">
                                                <asp:CheckBox ID="chkEstudianteVinculado" runat="server" BorderStyle="None" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 10px"></td>
                                    </tr>
                                </table>

                                <asp:Panel ID="PanelEstudianteVinculado" runat="server">
                                    <div class="row1">
                                        <table>
                                            <asp:Label ID="Label13" runat="server" Text="Label">Qué curso/carrera sigue</asp:Label>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-asterisk"></span>
                                                </span>
                                                <asp:TextBox ID="txtCarreraNombre" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                            </div>
                                            <asp:Label ID="Label14" runat="server" Text="Label">Año de Ingreso</asp:Label>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-asterisk"></span>
                                                </span>
                                                <asp:TextBox ID="txtCarreraAnioIngreso" runat="server" CssClass="form-control" />
                                            </div>
                                            <asp:Label ID="Label15" runat="server" Text="Label">Año de Cursada</asp:Label>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-asterisk"></span>
                                                </span>
                                                <asp:TextBox ID="txtCarreraAnioCursada" runat="server" CssClass="form-control" />
                                            </div>
                                            <asp:Label ID="Label16" runat="server" Text="Label">Duración del curso/carrera</asp:Label>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-asterisk"></span>
                                                </span>
                                                <asp:TextBox ID="txtCarreraDuracion" runat="server" CssClass="form-control" />
                                            </div>
                                            <asp:Label ID="Label17" runat="server" Text="Label">Institución</asp:Label>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-asterisk"></span>
                                                </span>
                                                <asp:TextBox ID="txtCarreraInstitucion" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                            </div>
                                            <tr>
                                                <td style="height: 30px"></td>
                                            </tr>
                                        </table>
                                    </div>
                                </asp:Panel>
                            </div>
                        </div>
                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <asp:Button ID="btnEnviarDatosFormacionAcademica" runat="server"
                                    Text="Enviar Datos" CssClass="boton_azul parpadea" OnClick="btnEnviarDatosFormacionAcademica_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--PANEL ACTIVIDAD PROFESIONAL--%>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3" onclick="scrollWin3()">
                            <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>ACTIVIDAD PROFESIONAL</a>
                    </h4>
                </div>
                <div id="collapse3" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <table>
                                    <tr>
                                        <td>
                                            <h4>Disciplina proyectual en que se enmarca su actividad profesional</h4>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBDisciplinaProyectual" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem Value="1">Arquitectura</asp:ListItem>
                                                <asp:ListItem Value="2">Artesanías</asp:ListItem>
                                                <asp:ListItem Value="3">Diseño de Interiores</asp:ListItem>
                                                <asp:ListItem Value="4">Diseño de Indumentaria</asp:ListItem>
                                                <asp:ListItem Value="5">Diseño del Paisaje</asp:ListItem>
                                                <asp:ListItem Value="6">Diseño Industrial</asp:ListItem>
                                                <asp:ListItem Value="7">Diseño Gráfico</asp:ListItem>
                                                <asp:ListItem Value="8">Diseño Multimedia</asp:ListItem>
                                                <asp:ListItem Value="10">Otra</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtDisciplinaProyectualOtra" runat="server" CssClass="form-control" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>Sub Sector</h4>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAPAccesorios" runat="server" Width="20px" />
                                    <asp:Label ID="lblAPAccesorios" runat="server" Text="Accesorios"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAPCalzado" runat="server" Width="20px" />
                                    <asp:Label ID="lblAPCalzado" runat="server" Text="Calzado"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAPCeramica" runat="server" Width="20px" />
                                    <asp:Label ID="lblAPCeramica" runat="server" Text="Ceramica"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAPDisenioEditorial" runat="server" Width="20px" />
                                    <asp:Label ID="lblAPDisenioEditorial" runat="server" Text="Diseño Editorial"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAPDisenioWeb" runat="server" Width="20px" />
                                    <asp:Label ID="lblAPDisenioWeb" runat="server" Text="Diseño WEB"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAPJoyeria" runat="server" Width="20px" />
                                    <asp:Label ID="lblAPJoyeria" runat="server" Text="Joyeria"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAPMadera" runat="server" Width="20px" />
                                    <asp:Label ID="lblAPMadera" runat="server" Text="Madera"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAPMobiliario" runat="server" Width="20px" />
                                    <asp:Label ID="lblAPMobiliario" runat="server" Text="Mobiliario"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAPTejidos" runat="server" Width="20px" />
                                    <asp:Label ID="lblAPTejidos" runat="server" Text="Tejidos"></asp:Label>
                                </ul>
                                <table>
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtSubSectorOtro" runat="server" CssClass="form-control" placeHolder="Otro Sub Sector" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>Tipo de Relación Laboral</h4>
                                <asp:RadioButtonList ID="RBTipoRelacionLaboral" runat="server"
                                    CssClass="form-control" BorderStyle="None"
                                    RepeatColumns="1"
                                    RepeatLayout="Table"
                                    CellPadding="10">
                                    <asp:ListItem Value="1">Trabajador en relacion de dependencia</asp:ListItem>
                                    <asp:ListItem Value="2">Trabajador Independiente proyecto propio</asp:ListItem>
                                    <asp:ListItem Value="3">Por Proyecto</asp:ListItem>
                                    <asp:ListItem Value="4">Free Lance</asp:ListItem>
                                    <asp:ListItem Value="5">Abono mensual por horas dedicadas</asp:ListItem>
                                    <asp:ListItem Value="10">Otro</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:TextBox ID="txtTipoRelacionLaboralOtro" runat="server" CssClass="form-control" />
                                <table>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>

                                <h4>Nombre de la empresa /estudio /emprendimiento /institucion donde lleva adelante su actividad profesional</h4>
                                <table>
                                    <tr>
                                        <td style="height: 10px"></td>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtNombreEmpresa" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>Link de la empresa /estudio /emprendimiento /institucion donde lleva adelante su actividad profesional
                                </h4>
                                <table>
                                    <tr>
                                        <td style="height: 10px"></td>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtLinkEmpresa" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>Describa brevemente la actividad profesional que realiza
                                </h4>
                                <table>
                                    <tr>
                                        <td style="height: 10px"></td>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <asp:Button ID="btnEnviarDatosActividadProfesional" runat="server" Text="Enviar Datos" CssClass="boton_azul parpadea" OnClick="btnEnviarDatosActividadProfesional_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--ACTIVIDAD INDEPENDIENTE--%>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4" onclick="scrollWin4()">
                            <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>Si desarrolla su ACTIVIDAD de manera independiente</a>
                    </h4>
                </div>
                <div id="collapse4" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <table>
                                    <h4>¿Es esta actividad su principal ingreso y sustento de vida?
                                    </h4>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBSustentoDeVida" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem Value="1">Si</asp:ListItem>
                                                <asp:ListItem Value="2">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtSustentoDeVidaOtro" runat="server" CssClass="form-control" placeHolder="Otra Actividad" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>Tiempo durante el cual su actividad se ha mantenido en funcionamiento
                                </h4>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBActividadFuncionamiento" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem Value="1">0 a 1 año</asp:ListItem>
                                                <asp:ListItem Value="2">1 a 3 años</asp:ListItem>
                                                <asp:ListItem Value="3">3 a 5 años</asp:ListItem>
                                                <asp:ListItem Value="4">mas de 5 años</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <table>
                                    <h4>¿Cuál es su situación tributaria?
                                    </h4>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBSituacionTributaria" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem Value="1">Monotributo</asp:ListItem>
                                                <asp:ListItem Value="2">Responsable Inscripto</asp:ListItem>
                                                <asp:ListItem Value="3">Exento</asp:ListItem>
                                                <asp:ListItem Value="10">No Inscripto</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <table>
                                    <h4>¿Tiene registrado su marca /producto /nombre de empresa?
                                    </h4>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBEstaRegistrado" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem Value="1">Si</asp:ListItem>
                                                <asp:ListItem Value="2">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtEstaRegistradoOtro" placeHolder="Otra Situación" runat="server" CssClass="form-control" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <table>
                                    <h4>¿Tiene empleados a su cargo?
                                    </h4>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBEmpleadosACargo" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem Value="1">Si</asp:ListItem>
                                                <asp:ListItem Value="2">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtCantidadEmpleadosACargo" runat="server" CssClass="form-control" placeholder="Ingrese cantidad de empleados" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>¿Cómo comercializa /ofrece sus productos /servicios?</h4>

                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAIFerias" runat="server" Width="20px" />
                                    <asp:Label ID="Label7" runat="server" Text="Ferias Itinerantes"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAIInternetWeb" runat="server" Width="20px" />
                                    <asp:Label ID="Label8" runat="server" Text="Internet (WEB)"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAIInternetRedesSociales" runat="server" Width="20px" />
                                    <asp:Label ID="Label9" runat="server" Text="Internet (Redes Sociales)"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAILocalEstudioPropio" runat="server" Width="20px" />
                                    <asp:Label ID="Label12" runat="server" Text="Local / Estudio Propio"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAILocalesOficinas" runat="server" Width="20px" />
                                    <asp:Label ID="Label18" runat="server" Text="Locales / Oficinas de Terceros"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAIOficinaPrivadaShowroom" runat="server" Width="20px" />
                                    <asp:Label ID="Label19" runat="server" Text="Oficina Privada / ShowRoom"></asp:Label>
                                </ul>
                                <table>
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>


                                <%--<table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBComercializa" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem>Local / Estudio Propio</asp:ListItem>
                                                <asp:ListItem>Oficina Privada / Showroom</asp:ListItem>
                                                <asp:ListItem>Ferias Itinerantes</asp:ListItem>
                                                <asp:ListItem>Locales / Oficinas de Terceros</asp:ListItem>
                                                <asp:ListItem>Internet (WEB)</asp:ListItem>
                                                <asp:ListItem>Internet (Redes Sociales)</asp:ListItem>
                                                <asp:ListItem>Otro</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>--%>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtComercializaOtro" runat="server" placeHolder="Otra manera" CssClass="form-control" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <table>
                                    <h4>Nombre del espacio donde comercializa /ofrece sus productos /servicios
                                    </h4>
                                    <tr>
                                        <td style="height: 10px"></td>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtComercializaNombreEspacio" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <table>
                                    <h4>Link del espacio donde comercializa /ofrece sus productos /servicios
                                    </h4>
                                    <tr>
                                        <td style="height: 10px"></td>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtComercializaLinkEspacio" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <table>
                                    <h4>Ubicación del espacio donde comercializa /ofrece /otorga sus productos /servicios
                                    </h4>
                                    <tr>
                                        <td style="height: 10px"></td>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtComercializaUbicacionEspacio" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>¿Cómo financia su actividad profesional?</h4>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAIFondosPropios" runat="server" Width="20px" />
                                    <asp:Label ID="Label21" runat="server" Text="Fondos Propios"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAIPrestamosEntidadesPrivadas" runat="server" Width="20px" />
                                    <asp:Label ID="Label22" runat="server" Text="Prestamos de entidades privadas"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAIPrestamosEntidadesPublicas" runat="server" Width="20px" />
                                    <asp:Label ID="Label26" runat="server" Text="Prestamos de entidades públicas"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAISociosCapitalistas" runat="server" Width="20px" />
                                    <asp:Label ID="Label23" runat="server" Text="Socios Capitalistas"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkAIGananciasGeneradas" runat="server" Width="20px" />
                                    <asp:Label ID="Label24" runat="server" Text="Ganancias Generadas"></asp:Label>
                                </ul>
                                <table>
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>
                                <%--<table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBFinanciaActividadProfesional" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem>Fondos Propios</asp:ListItem>
                                                <asp:ListItem>Prestamos de entidades privadas o públicas</asp:ListItem>
                                                <asp:ListItem>Socios capitalistas</asp:ListItem>
                                                <asp:ListItem>A través de las ganancias generadas</asp:ListItem>
                                                <asp:ListItem>Otro</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>--%>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtFinanciaActividadProfesionalOtro" runat="server" placeHolder="Otro Financiamiento" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <table>
                                    <h4>¿Realiza ventas /ofrece servicios a otras provincias /países?
                                    </h4>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBVentasOtrosPaises" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem Value="1">Si</asp:ListItem>
                                                <asp:ListItem Value="2">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtVentasOtrosPaisesCuales" runat="server" CssClass="form-control" placeholder="Indique cuáles" TextMode="MultiLine" Rows="2" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <!--Boton de registro-->
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:Button ID="btnEnviarDatosActividadIndependiente" runat="server" Text="Enviar Datos" CssClass="boton_azul parpadea" OnClick="btnEnviarDatosActividadIndependiente_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <%--PRODUCTOS--%>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse5" onclick="scrollWin5()">
                            <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>PRODUCTOS</a>
                    </h4>
                </div>
                <div id="collapse5" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <h4>¿Qué cantidad de productos realiza al año?</h4>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtCantidadProductosAnio" placeholder="Ingrese aquí la cantidad" runat="server" CssClass="form-control" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>¿Dónde realiza su producción?</h4>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkPRTalleresPropios" runat="server" Width="20px" />
                                    <asp:Label ID="Label27" runat="server" Text="Talleres Propios"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkPRTalleresTercerizados" runat="server" Width="20px" />
                                    <asp:Label ID="Label28" runat="server" Text="Talleres Tercerizados"></asp:Label>
                                </ul>
                                <table>
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtDondeRealizaProduccionOtro" runat="server" CssClass="form-control" placeHolder="Otro" />
                                    </tr>
                                    <tr>
                                        <td style="height: 20px"></td>
                                    </tr>
                                </table>
                                <h4>¿Qué porcentaje del proceso productivo realiza en la Provincia del Neuquén?</h4>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBPorcentajeProcesoProductivoNeuquen" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem Value="1">100%</asp:ListItem>
                                                <asp:ListItem Value="2">entre el 50% y 99%</asp:ListItem>
                                                <asp:ListItem Value="3">entre el 30% y 49%</asp:ListItem>
                                                <asp:ListItem Value="4">menos del 30%</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 15px"></td>
                                    </tr>
                                </table>
                                <!--Boton de registro-->
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:Button ID="btnEnviarDatosProductos" runat="server" Text="Enviar Datos" CssClass="boton_azul parpadea" OnClick="btnEnviarDatosProductos_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--MATERIAS PRIMAS--%>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse6" onclick="scrollWin6()">
                            <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>MATERIAS PRIMAS</a>
                    </h4>
                </div>
                <div id="collapse6" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <h4>¿Qué porcentaje adquiere en la Provincia del Neuquén?</h4>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBPorcentajeAdquiereNeuquen" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem Value="1">100%</asp:ListItem>
                                                <asp:ListItem Value="2">entre el 50% y 99%</asp:ListItem>
                                                <asp:ListItem Value="3">entre el 30% y 49%</asp:ListItem>
                                                <asp:ListItem Value="4">menos del 30%</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>¿Tiene dificultades para adquirir las materias primas? Cuáles son? Cómo podría resolverlas?</h4>
                                <table>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtDificultades" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <!--Boton de registro-->
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:Button ID="btnEnviarDatosMateriaPrima" runat="server" Text="Enviar Datos" CssClass="boton_azul parpadea" OnClick="btnEnviarDatosMateriaPrima_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--MAQUINARIAS Y PROCESOS DE PRODUCCION--%>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse7" onclick="scrollWin7()">
                            <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>MAQUINARIAS Y PROCESOS DE PRODUCCION</a>
                    </h4>
                </div>
                <div id="collapse7" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <h4>¿Dispone de equipos para el proceso?</h4>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RBDisponeEquipoSi" GroupName="Equipos"
                                                Text="Si" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkMPPEquiposPropios" runat="server" Width="20px" />
                                    <asp:Label ID="Label20" runat="server" Text="Equipos Propios"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkMPPEquiposPrestados" runat="server" Width="20px" />
                                    <asp:Label ID="Label29" runat="server" Text="Equipos Prestados"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkMPPEquiposAlquilados" runat="server" Width="20px" />
                                    <asp:Label ID="Label30" runat="server" Text="Equipos Alquilados"></asp:Label>
                                </ul>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RBDisponeEquipoNo" GroupName="Equipos"
                                                Text="No" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 15px"></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtDisponeEquipoOtro" runat="server" CssClass="form-control" placeHolder="Otros equipos" />
                                    </tr>
                                    <tr>
                                        <td style="height: 20px"></td>
                                    </tr>
                                </table>
                                <h4>¿Cuál es la principal falencia en el proceso de producción de objetos?</h4>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkMPPMaquinas" runat="server" Width="20px" />
                                    <asp:Label ID="Label37" runat="server" Text="Máquinas"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkMPPRecursosInformaticos" runat="server" Width="20px" />
                                    <asp:Label ID="Label38" runat="server" Text="Recursos Informáticos"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkMPPHerramientas" runat="server" Width="20px" />
                                    <asp:Label ID="Label39" runat="server" Text="Herramientas"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkMPPEspacio" runat="server" Width="20px" />
                                    <asp:Label ID="Label40" runat="server" Text="Poca disponibilidad de espacio"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkMPPManoDeObra" runat="server" Width="20px" />
                                    <asp:Label ID="Label41" runat="server" Text="Poca disponibilidad de Mano de Obra"></asp:Label>
                                </ul>
                                <table>
                                    <tr>
                                        <td style="height: 20px"></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtFalenciaOtra" runat="server" CssClass="form-control" placeHolder="Otra falencia" />
                                    </tr>
                                    <tr>
                                        <td style="height: 20px"></td>
                                    </tr>
                                </table>
                                <!--Boton de registro-->
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:Button ID="btnEnviarDatosMaquinaria" runat="server" Text="Enviar Datos" CssClass="boton_azul parpadea" OnClick="btnEnviarDatosMaquinaria_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--IDENTIDAD DEL DISEÑO--%>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse8" onclick="scrollWin8()">
                            <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>En relación a la IDENTIDAD DEL DISEÑO</a>
                    </h4>
                </div>
                <div id="collapse8" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <h4>Nombre al menos 3 (tres) atributos /valores diferenciales de su trabajo</h4>
                                <table>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtAtributos" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 15px"></td>
                                    </tr>
                                </table>
                                <h4>Nombre al menos 3 (tres) rasgos identitarios del diseño neuquino</h4>
                                <table>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtRasgos" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-12">
                                <h4>De las siguientes opciones, indicar a su criterio qué aspecto es más relevante para abordar en relación al diseño en la Provincia del Neuquén</h4>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBAspectosRelevantes" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem>Difundir el diseño neuquino a nivel local a través de ferias, circuitos, páginas web, mapas, etc...</asp:ListItem>
                                                <asp:ListItem>Difundir el diseño neuquino a nivel regional y nacional a través de la participación en ferias en otras provincias.</asp:ListItem>
                                                <asp:ListItem>Capacitar para formar a los diseñadores en los distintos aspectos de su actividad (diseño, producción y gestión empresarial).</asp:ListItem>
                                                <asp:ListItem>Apoyar a través de financiamiento, becas, fondo estímulo, acceso a préstamos, etc...</asp:ListItem>
                                                <asp:ListItem>Otro</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtAspectosRelevantesOtro" runat="server" CssClass="form-control" />
                                    </tr>
                                    <tr>
                                        <td style="height: 10px"></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-6">
                                <h4>¿En qué temas cree importante capacitarse para mejorar su actividad como diseñador?</h4>
                                <table>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtTemasCapacitarse" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <!--Boton de registro-->
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:Button ID="btnEnviarDatosIdentidadDisenio" runat="server" Text="Enviar Datos" CssClass="boton_azul parpadea" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--INNOVACION--%>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse9" onclick="scrollWin9()">
                            <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>EN RELACION A LA INNOVACION</a>
                    </h4>
                </div>
                <div id="collapse9" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <h4>¿De qué manera incorpora la innovación en el desarrollo de su labor?</h4>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBIncorporaInnovacion" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem>En el Proceso de Diseño</asp:ListItem>
                                                <asp:ListItem>En el Diseño de nuevos Servicios, Productos o Soluciones a un Problema</asp:ListItem>
                                                <asp:ListItem>En el Rediseño Creativo de Productos</asp:ListItem>
                                                <asp:ListItem>En la Comunicación Empresarial</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtIncorporaInnovacionOtro" placeHolder="Otra manera" runat="server" CssClass="form-control" />
                                    </tr>
                                    <tr>
                                        <td style="height: 15px"></td>
                                    </tr>
                                </table>
                                <h4>¿Cuáles son sus dificultades o barreras a la hora de innovar?</h4>
                                <ul class="estilo-ul" style="padding-left: 0px;">
                                    <asp:CheckBox ID="chkINNLegalesBurocraticas" runat="server" Width="20px" />
                                    <asp:Label ID="Label31" runat="server" Text="Legales y burocráticas"></asp:Label>
                                </ul>
                                <ul class="estilo-ul" style="padding-left: 0px;">
                                    <asp:CheckBox ID="chkINNFinancieras" runat="server" Width="20px" />
                                    <asp:Label ID="Label32" runat="server" Text="Financieras /Económicas /Presupuestarias"></asp:Label>
                                </ul>
                                <ul class="estilo-ul" style="padding-left: 0px;">
                                    <asp:CheckBox ID="chkINNProblemasTecnicos" runat="server" Width="20px" />
                                    <asp:Label ID="Label33" runat="server" Text="Problemas Técnicos / Falta de Información"></asp:Label>
                                </ul>
                                <ul class="estilo-ul" style="padding-left: 0px; padding-bottom: 20px;">
                                    <asp:CheckBox ID="chkINNRecursosHumanos" runat="server" Width="20px" />
                                    <asp:Label ID="Label34" runat="server" Text="Recursos Humanos no adecuadamente Capacitados"></asp:Label>
                                </ul>
                                <table>
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>
                                <%--<table>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RBDificultadesInnovar" runat="server"
                                                CssClass="form-control" BorderStyle="None"
                                                RepeatColumns="1"
                                                RepeatLayout="Table"
                                                CellPadding="10">
                                                <asp:ListItem>Legales y burocráticas</asp:ListItem>
                                                <asp:ListItem>Financieras / Económicas / Presupuestarias</asp:ListItem>
                                                <asp:ListItem>Problemas Técnicos / Falta de Información</asp:ListItem>
                                                <asp:ListItem>Recursos Humanos no adecuadamente Capacitados</asp:ListItem>
                                                <asp:ListItem>Otra</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                </table>--%>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtDificultadesInnovarOtro" placeHolder="Otra dificultad" runat="server" CssClass="form-control" />
                                    </tr>
                                    <tr>
                                        <td style="height: 15px"></td>
                                    </tr>
                                </table>
                                <h4>¿Cómo han sido tomadas las innovaciones propuestas en su medio de acción (socios, destinatarios, público general, etc.)?</h4>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtInnovacionesPropuestas" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
                                    </tr>
                                    <tr>
                                        <td style="height: 15px"></td>
                                    </tr>
                                </table>
                                <h4>¿Qué puede contarnos en relación a esto? ¿Hay alguna experiencia?</h4>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtAlgunaExperiencia" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
                                    </tr>
                                    <tr>
                                        <td style="height: 15px"></td>
                                    </tr>
                                </table>
                                <!--Boton de registro-->
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:Button ID="btnEnviarDatosInnovacion" runat="server" Text="Enviar Datos" CssClass="boton_azul parpadea" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--VINCULACION--%>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse10" onclick="scrollWin10()">
                            <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>VINCULACION</a>
                    </h4>
                </div>
                <div id="collapse10" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <h4>¿Ha recibido apoyo de alguna área del gobierno nacional, provincial o municipal?</h4>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RadioButton1" GroupName="Apoyo"
                                                Text="Si" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkVINApoyoTecnico" runat="server" Width="20px" />
                                    <asp:Label ID="Label35" runat="server" Text="Apoyo Técnico"></asp:Label>
                                </ul>
                                <ul class="estilo-ul">
                                    <asp:CheckBox ID="chkVINApoyoFinanciero" runat="server" Width="20px" />
                                    <asp:Label ID="Label36" runat="server" Text="Apoyo Financiero"></asp:Label>
                                </ul>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RadioButton5" GroupName="Apoyo"
                                                Text="No" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RadioButton6" GroupName="Apoyo"
                                                Text="Otro" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 15px"></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtApoyoOtro" runat="server" CssClass="form-control" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>Organismo que brindó el apoyo</h4>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtOrganismoApoyoNombre" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="1" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>Año en que brindó el apoyo</h4>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtOrganismoApoyoAnio" runat="server" CssClass="form-control" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>¿Ha participado del Sello de Buen Diseño Argentino?</h4>
                                <table>
                                    <tr>
                                        <asp:RadioButtonList ID="RBSelloBuenDisenio" runat="server"
                                            CssClass="form-control" BorderStyle="None"
                                            RepeatColumns="1"
                                            RepeatLayout="Table"
                                            CellPadding="10">
                                            <asp:ListItem>Si</asp:ListItem>
                                            <asp:ListItem>No</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </tr>
                                </table>
                                <table>
                                    <asp:TextBox ID="txtSelloBuenDisenioOtro" runat="server" CssClass="form-control" placeHolder="Otro" TextMode="MultiLine" Rows="1" />
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>¿Ha participado del Mercado de Industrias Creativas Argentinas (MICA)?</h4>
                                <table>
                                    <tr>
                                        <asp:RadioButtonList ID="RBMICA" runat="server"
                                            CssClass="form-control" BorderStyle="None"
                                            RepeatColumns="1"
                                            RepeatLayout="Table"
                                            CellPadding="10">
                                            <asp:ListItem>Si</asp:ListItem>
                                            <asp:ListItem>No</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:TextBox ID="txtMICAOtro" runat="server" CssClass="form-control" placeHolder="Otro" TextMode="MultiLine" Rows="1" />
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>¿Cuál considera que puede ser el mayor aporte que el CDNEU puede hacerle para fortalecer su actividad?</h4>
                                <table>
                                    <tr>
                                        <asp:RadioButtonList ID="RBAporteCDNEU" runat="server"
                                            CssClass="form-control" BorderStyle="None"
                                            RepeatColumns="1"
                                            RepeatLayout="Table"
                                            CellPadding="10">
                                            <asp:ListItem>Capacitaciones</asp:ListItem>
                                            <asp:ListItem>Vinculación con otros diseñadoras/es y creativas/os</asp:ListItem>
                                            <asp:ListItem>Financiamiento</asp:ListItem>
                                            <asp:ListItem>Infraestructura</asp:ListItem>
                                            <asp:ListItem>Comercialización</asp:ListItem>
                                            <asp:ListItem>Asistencia para participación en ferias</asp:ListItem>
                                            <asp:ListItem>Visualización de sus productos/servicios</asp:ListItem>
                                            <asp:ListItem>Otro</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </tr>
                                </table>
                                <table>
                                    <asp:TextBox ID="txtAporteCDNEUOtro" runat="server" CssClass="form-control" placeHolder="Otro" TextMode="MultiLine" Rows="1" />
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <h4>Comentarios Finales</h4>
                                <table>
                                    <tr>
                                        <td style="height: 10px"></td>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtComentariosFinales" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td style="height: 30px"></td>
                                    </tr>
                                </table>
                                <!--Boton de registro-->
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:Button ID="btnEnviarDatosVinculacion" runat="server" Text="Enviar Datos" CssClass="boton_azul parpadea" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function scrollWin1() {
            window.scrollTo(0, 0);
        }
        function scrollWin2() {
            window.scrollTo(0, 100);
        }
        function scrollWin3() {
            window.scrollTo(0, 150);
        }
        function scrollWin4() {
            window.scrollTo(0, 200);
        }
        function scrollWin5() {
            window.scrollTo(0, 250);
        }
        function scrollWin6() {
            window.scrollTo(0, 300);
        }
        function scrollWin7() {
            window.scrollTo(0, 350);
        }
        function scrollWin8() {
            window.scrollTo(0, 400);
        }
        function scrollWin9() {
            window.scrollTo(0, 450);
        }
        function scrollWin10() {
            window.scrollTo(0, 500);
        }
    </script>



</asp:Content>
