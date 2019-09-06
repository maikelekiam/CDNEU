<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarUsuario.aspx.cs" Inherits="CDNEU.EditarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
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
    </style>

    <div class="container-fluid">
        <div class="panel-group" id="accordion">
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
                                        <asp:Label ID="lblDatosPersonalesNombre" runat="server" Text="Label">Nombre</asp:Label>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesNombre" runat="server" CssClass="form-control" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                        <td></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:Label ID="Label4" runat="server" Text="Label">Apellido</asp:Label>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-user"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesApellido" runat="server" CssClass="form-control" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                        <td></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:Label ID="Label5" runat="server" Text="Label">Correo Electronico</asp:Label>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-envelope"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesCorreoElectronico" runat="server" CssClass="form-control" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                        <td></td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <asp:Label ID="Label6" runat="server" Text="Label">Telefono / Celular</asp:Label>
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
                                        <asp:Label ID="Label10" runat="server" Text="Label">Edad</asp:Label>
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
                                        <asp:Label ID="Label11" runat="server" Text="Label">Domicilio</asp:Label>
                                    </tr>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-home"></span>
                                            </span>
                                            <asp:TextBox ID="txtDatosPersonalesDomicilio" runat="server" CssClass="form-control" />
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
                                            <asp:TextBox ID="txtDatosPersonalesLocalidad" runat="server" CssClass="form-control" />
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
                                            <asp:TextBox ID="txtDatosPersonalesProvincia" runat="server" CssClass="form-control" />
                                        </div>
                                    </tr>
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>
                                <hr />

                                <h4>REDES SOCIALES</h4>

                                <table>
                                    <asp:Label ID="Label59" runat="server">Perfil de Facebook</asp:Label>
                                    <asp:TextBox ID="txtFacebook" Height="35px" BorderStyle="Solid" BorderColor="#cccccc" Style="background-image: url(imagenes/icono-facebook.jpg);" runat="server" CssClass="form-control estiloRedesSociales" />
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>

                                <table>
                                    <asp:Label ID="Label60" runat="server">Perfil de Instagram</asp:Label>
                                    <asp:TextBox ID="txtInstagram" Height="35px" BorderStyle="Solid" BorderColor="#cccccc" Style="background-image: url(imagenes/icono-instagram.jpg);" runat="server" CssClass="form-control estiloRedesSociales" />
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>

                                <table>
                                    <asp:Label ID="Label61" runat="server">Perfil de Twitter</asp:Label>
                                    <asp:TextBox ID="txtTwitter" Height="35px" BorderStyle="Solid" BorderColor="#cccccc" Style="background-image: url(imagenes/icono-twitter.jpg);" runat="server" CssClass="form-control estiloRedesSociales" />
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>

                                <table>
                                    <asp:Label ID="Label62" runat="server">Canal de YouTube</asp:Label>
                                    <asp:TextBox ID="txtYouTube" Height="35px" BorderStyle="Solid" BorderColor="#cccccc" Style="background-image: url(imagenes/icono-youtube.jpg);" runat="server" CssClass="form-control estiloRedesSociales" />
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>

                                <table>
                                    <asp:Label ID="Label63" runat="server">Perfil Flickr</asp:Label>
                                    <asp:TextBox ID="txtFlicker" Height="35px" BorderStyle="Solid" BorderColor="#cccccc" Style="background-image: url(imagenes/icono-flickr.jpg);" runat="server" CssClass="form-control estiloRedesSociales" />
                                    <tr>
                                        <td class="altotabla"></td>
                                    </tr>
                                </table>

                                <hr />
                                <h4>Plataforma de Comercialización</h4>

                                <table>
                                    <div class="form-group">
                                        <asp:CheckBox ID="chkMercadoLibre" runat="server" Width="20px" />
                                        <asp:Label ID="lblMercadoLibre" runat="server" Text="Mercado Libre"></asp:Label>
                                    </div>
                                </table>

                                <table>
                                    <div class="form-group">
                                        <asp:CheckBox ID="chkTiendaNube" runat="server" Width="20px" />
                                        <asp:Label ID="lblTiendaNube" runat="server" Text="Tienda Nube"></asp:Label>
                                    </div>
                                </table>

                                <table>
                                    <asp:TextBox ID="txtPlataformaComercializacionOtro" placeholder="Otro" runat="server" CssClass="form-control" />
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
                                <asp:UpdatePanel ID="UPEstudiosOficiales" runat="server">
                                    <ContentTemplate>
                                        <fieldset style="background-color: White;">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:RadioButtonList ID="RBEstudiosOficiales" runat="server"
                                                            CssClass="form-control" BorderStyle="None"
                                                            RepeatColumns="1"
                                                            RepeatLayout="Table"
                                                            CellPadding="10"
                                                            AutoPostBack="True"
                                                            OnSelectedIndexChanged="RBEstudiosOficiales_SelectedIndexChanged">
                                                            <asp:ListItem>Secundario</asp:ListItem>
                                                            <asp:ListItem>Terciario</asp:ListItem>
                                                            <asp:ListItem>Universitario</asp:ListItem>
                                                            <asp:ListItem>Posgrado</asp:ListItem>
                                                            <asp:ListItem>Otro</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                            </table>
                                            <table>
                                                <tr>
                                                    <asp:TextBox ID="txtEstudiosOficialesOtro" runat="server" CssClass="form-control" Visible="false" />
                                                </tr>
                                                <tr>
                                                    <td style="height: 30px"></td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="RBEstudiosOficiales" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                                <h4>
                                    <asp:Label ID="Label1" runat="server" Text="Label">Título Obtenido</asp:Label>
                                </h4>
                                <table>
                                    <tr>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-asterisk"></span>
                                            </span>
                                            <asp:TextBox ID="txtTituloObtenido" runat="server" CssClass="form-control" />
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
                                            <asp:TextBox ID="txtInstitucionEmisoraTitulo" runat="server" CssClass="form-control" />
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
                                            <asp:TextBox ID="txtOtrosEstudios" runat="server" CssClass="form-control" placeholder="Nombre e Institucion" />
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
                                                <asp:CheckBox ID="chkEstudianteVinculado" runat="server" BorderStyle="None" OnCheckedChanged="chkEstudianteVinculado_CheckedChanged" AutoPostBack="true" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 10px"></td>
                                    </tr>
                                </table>

                                <%--ACA VA EL UPDATEPANEL--%>
                                <asp:UpdatePanel ID="UPEstudianteVinculado" runat="server" UpdateMode="Conditional">
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="chkEstudianteVinculado" />
                                    </Triggers>
                                    <ContentTemplate>
                                        <asp:Panel ID="PanelEstudianteVinculado" runat="server" Visible="false">
                                            <div class="row">
                                                <table>
                                                    <asp:Label ID="Label13" runat="server" Text="Label">Qué curso/carrera sigue</asp:Label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <span class="glyphicon glyphicon-asterisk"></span>
                                                        </span>
                                                        <asp:TextBox ID="txtCarreraNombre" runat="server" CssClass="form-control" />
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
                                                        <asp:TextBox ID="txtCarreraInstitucion" runat="server" CssClass="form-control" />
                                                    </div>
                                                    <tr>
                                                        <td style="height: 30px"></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </asp:Panel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
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
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label12" runat="server" Text="Label">Disciplina proyectual en que se enmarca su actividad profesional</asp:Label>
                                    </h4>
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
                                        <asp:ListItem Value="1">Diseño de Interiores</asp:ListItem>
                                        <asp:ListItem Value="2">Diseño Industrial</asp:ListItem>
                                        <asp:ListItem Value="3">Diseño del Paisaje</asp:ListItem>
                                        <asp:ListItem Value="4">Diseño de Indumentaria</asp:ListItem>
                                        <asp:ListItem Value="5">Diseño Gráfico</asp:ListItem>
                                        <asp:ListItem Value="6">Diseño Multimedia</asp:ListItem>
                                        <asp:ListItem Value="7">Arquitectura</asp:ListItem>
                                        <asp:ListItem Value="8">Artesanías</asp:ListItem>
                                        <asp:ListItem Value="9">Otra</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtDisciplinaProyectualOtra" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label18" runat="server" Text="Label">Sub Sector</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBSubSector" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem Value="1">Mobiliario</asp:ListItem>
                                        <asp:ListItem Value="2">Calzado</asp:ListItem>
                                        <asp:ListItem Value="3">Accesorios</asp:ListItem>
                                        <asp:ListItem Value="4">Diseño WEB</asp:ListItem>
                                        <asp:ListItem Value="5">Diseño Editorial</asp:ListItem>
                                        <asp:ListItem Value="6">Joyería</asp:ListItem>
                                        <asp:ListItem Value="7">Tejidos</asp:ListItem>
                                        <asp:ListItem Value="8">Otro</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtSubSectorOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label19" runat="server" Text="Label">Tipo de Relación Laboral</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
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
                                        <asp:ListItem Value="6">Otro</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtTipoRelacionLaboralOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label21" runat="server">Nombre de la empresa/estudio/emprendimiento/institucion donde lleva adelante su actividad profesional</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 10px"></td>
                            </tr>
                            <tr>
                                <td style="width: 800px">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-asterisk"></span>
                                        </span>
                                        <asp:TextBox ID="txtNombreEmpresa" runat="server" CssClass="form-control" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label22" runat="server">Link de la empresa/estudio/emprendimiento/institucion donde lleva adelante su actividad profesional</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 10px"></td>
                            </tr>
                            <tr>
                                <td style="width: 800px">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-asterisk"></span>
                                        </span>
                                        <asp:TextBox ID="txtLinkEmpresa" runat="server" CssClass="form-control" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label23" runat="server">Describa brevemente la actividad profesional que realiza</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 10px"></td>
                            </tr>
                            <tr>
                                <td style="width: 800px">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-asterisk"></span>
                                        </span>
                                        <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>

                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <asp:Button ID="btnEnviarDatosActividadProfesional" runat="server" Text="Enviar Datos" CssClass="boton_azul" />
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
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label24" runat="server">¿Es esta actividad su principal ingreso y sustento de vida?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBSustentoDeVida" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>Si</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                        <asp:ListItem>Otra</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtSustentoDeVidaOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label25" runat="server">Tiempo durante el cual su actividad se ha mantenido en funcionamiento</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBActividadFuncionamiento" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>0 a 1 año</asp:ListItem>
                                        <asp:ListItem>1 a 3 años</asp:ListItem>
                                        <asp:ListItem>3 a 5 años</asp:ListItem>
                                        <asp:ListItem>mas de 5 años</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label26" runat="server">¿Cuál es su situación tributaria?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBSituacionTributaria" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>Monotributo</asp:ListItem>
                                        <asp:ListItem>Responsable Inscripto</asp:ListItem>
                                        <asp:ListItem>Exento</asp:ListItem>
                                        <asp:ListItem>No Inscripto</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label27" runat="server">¿Tiene su marca/producto/nombre de empresa registrado?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBNombreRegistrado" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>Si</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                        <asp:ListItem>Otro</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtNombreRegistradoOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label28" runat="server">¿Tiene empleados a su cargo?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBEmpleadosACargo" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>Si</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: top">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtCantidadEmpleadosACargo" runat="server" CssClass="form-control" placeholder="Ingrese la cantidad de empleados a su cargo " Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label29" runat="server">¿Cómo comercializa/ofrece sus productos/servicios?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
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
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtComercializaOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label30" runat="server">Nombre del espacio donde comercializa/ofrece sus productos/servicios</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 10px"></td>
                            </tr>
                            <tr>
                                <td style="width: 800px">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-asterisk"></span>
                                        </span>
                                        <asp:TextBox ID="txtComercializaNombreEspacio" runat="server" CssClass="form-control" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label31" runat="server">Link del espacio donde comercializa/ofrece sus productos/servicios</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 10px"></td>
                            </tr>
                            <tr>
                                <td style="width: 800px">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-asterisk"></span>
                                        </span>
                                        <asp:TextBox ID="txtComercializaLinkEspacio" runat="server" CssClass="form-control" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label32" runat="server">Ubicación del espacio donde comercializa/ofrece/otorga sus productos/servicios</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 10px"></td>
                            </tr>
                            <tr>
                                <td style="width: 800px">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-asterisk"></span>
                                        </span>
                                        <asp:TextBox ID="txtComercializaUbicacionEspacio" runat="server" CssClass="form-control" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label33" runat="server">¿Cómo financia su actividad profesional?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
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
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtFinanciaActividadProfesionalOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label34" runat="server">¿Realiza ventas/ofrece servicios a otras provincias/países?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBVentasOtrosPaises" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>Si</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: top" id="VentasOtrosPaisesCuales">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtVentasOtrosPaisesCuales" runat="server" CssClass="form-control" placeholder="¿Cuáles?" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <asp:Button ID="btnEnviarDatosActividadIndependiente" runat="server" Text="Enviar Datos" CssClass="boton_azul" />
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
                        <table>
                            <tr>
                                <td style="width: 300px">
                                    <h4>
                                        <asp:Label ID="Label35" runat="server">¿Qué cantidad de productos realiza al año?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtCantidadProductosAnio" placeholder="Ingrese aquí la cantidad" runat="server" CssClass="form-control" Width="300" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label36" runat="server">¿Dónde realiza su producción?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBDondeRealizaProduccion" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>Talleres Propios</asp:ListItem>
                                        <asp:ListItem>Talleres tercerizados</asp:ListItem>
                                        <asp:ListItem>Otro</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtDondeRealizaProduccionOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label37" runat="server">¿Qué porcentaje del proceso productivo realiza en la Provincia del Neuquén?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBPorcentajeProcesoProductivoNeuquen" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>100%</asp:ListItem>
                                        <asp:ListItem>entre el 50% y 99%</asp:ListItem>
                                        <asp:ListItem>entre el 30% y 49%</asp:ListItem>
                                        <asp:ListItem>menos del 30%</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <asp:Button ID="btnEnviarDatosProductos" runat="server" Text="Enviar Datos" CssClass="boton_azul" />
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
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label38" runat="server">¿Qué porcentaje adquiere en la Provincia del Neuquén?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBPorcentajeAdquiereNeuquen" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>100%</asp:ListItem>
                                        <asp:ListItem>entre el 50% y 99%</asp:ListItem>
                                        <asp:ListItem>entre el 30% y 49%</asp:ListItem>
                                        <asp:ListItem>menos del 30%</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label39" runat="server">¿Tiene dificultades para adquirir las materias primas? Cuáles son? Cómo podría resolverlas?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 10px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="width: 800px">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-asterisk"></span>
                                        </span>
                                        <asp:TextBox ID="txtDificultades" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <asp:Button ID="btnEnviarDatosMateriasPrimas" runat="server" Text="Enviar Datos" CssClass="boton_azul" />
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
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label40" runat="server">¿Dispone de equipos para el proceso?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButton ID="RB1" GroupName="Equipos"
                                        Text="Si" runat="server" />
                                </td>
                                <td style="border: ridge; border-color: lightgray;" id="RecuadroOpcionSi">
                                    <asp:RadioButton ID="RBOpcionSi1" GroupName="OpcionSi"
                                        Text="Propios" Font-Italic="true" runat="server" />
                                    <asp:RadioButton ID="RBOpcionSi2" GroupName="OpcionSi"
                                        Text="Prestados" Font-Italic="true" runat="server" />
                                    <asp:RadioButton ID="RBOpcionSi3" GroupName="OpcionSi"
                                        Text="Alquilados" Font-Italic="true" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RadioButton ID="RB2" GroupName="Equipos"
                                        Text="No" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RadioButton ID="RB3" GroupName="Equipos"
                                        Text="Otro" runat="server" />
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtEquiposProcesoOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label20" runat="server">¿Cuál es la principal falencia en el proceso de producción de objetos?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBPrincipalFalencia" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>Máquinas</asp:ListItem>
                                        <asp:ListItem>Recursos Informáticos</asp:ListItem>
                                        <asp:ListItem>Herramientas</asp:ListItem>
                                        <asp:ListItem>Poca Disponibilidad de Espacio</asp:ListItem>
                                        <asp:ListItem>Poca Disponibilidad de Mano de Obra</asp:ListItem>
                                        <asp:ListItem>Otro</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtPrincipalFalenciaOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <asp:Button ID="btnEnviarDatosMaquinaria" runat="server" Text="Enviar Datos" CssClass="boton_azul" />
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
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label42" runat="server">Nombre al menos 3 (tres) atributos/valores diferenciales de su trabajo</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 10px"></td>
                            </tr>
                            <tr>
                                <td style="width: 800px">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-asterisk"></span>
                                        </span>
                                        <asp:TextBox ID="txtAtributos" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label43" runat="server">Nombre al menos 3 (tres) rasgos identitarios del diseño neuquino</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 10px"></td>
                            </tr>
                            <tr>
                                <td style="width: 800px">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-asterisk"></span>
                                        </span>
                                        <asp:TextBox ID="txtRasgos" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label44" runat="server">De las siguientes opciones, indicar a su criterio qué aspecto es más relevante para abordar en relación al diseño en la Provincia del Neuquén</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
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
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtAspectosRelevantesOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label45" runat="server">¿En qué temas cree importante capacitarse para mejorar su actividad como diseñador?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 10px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="width: 800px">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-asterisk"></span>
                                        </span>
                                        <asp:TextBox ID="txtTemasCapacitarse" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <asp:Button ID="btnEnviarDatosIdentidadDisenio" runat="server" Text="Enviar Datos" CssClass="boton_azul" />
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
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label46" runat="server">¿De qué manera incorpora la innovación en el desarrollo de su labor?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
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
                                        <asp:ListItem>Otra</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtIncorporaInnovacionOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label47" runat="server">¿Cuáles son sus dificultades o barreras a la hora de innovar?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
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
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtDificultadesInnovarOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label48" runat="server">¿Cómo han sido tomadas las innovaciones propuestas en su medio de acción (socios, destinatarios, público general, etc.)?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtInnovacionesPropuestas" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label49" runat="server">¿Qué puede contarnos en relación esto? ¿Hay alguna experiencia?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtAlgunaExperiencia" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <asp:Button ID="btnEnviarDatosInnovacion" runat="server" Text="Enviar Datos" CssClass="boton_azul" />
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
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label50" runat="server">¿Ha recibido apoyo de alguna área del gobierno nacional, provincial o municipal?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButton ID="RadioButton1" GroupName="Apoyo"
                                        Text="Si" runat="server" />
                                </td>
                                <td style="border: ridge; border-color: lightgray;" id="RecuadroApoyoOpcionSi">
                                    <asp:RadioButton ID="RadioButton2" GroupName="ApoyoOpcionSi"
                                        Text="Técnico" Font-Italic="true" runat="server" />
                                    <asp:RadioButton ID="RadioButton3" GroupName="ApoyoOpcionSi"
                                        Text="Financiero" Font-Italic="true" runat="server" />
                                </td>
                            </tr>
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
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label51" runat="server">Organismo que brindó el apoyo</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtOrganismoApoyoNombre" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label52" runat="server">Año en que brindó el apoyo</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtOrganismoApoyoAnio" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label53" runat="server">¿Ha participado del Sello de Buen Diseño Argentino?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBSelloBuenDisenio" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>Si</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                        <asp:ListItem>Otro</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtSelloBuenDisenioOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label54" runat="server">¿Ha participado del Mercado de Industrias Creativas Argentinas (MICA)?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RBMICA" runat="server"
                                        CssClass="form-control" BorderStyle="None"
                                        RepeatColumns="1"
                                        RepeatLayout="Table"
                                        CellPadding="10">
                                        <asp:ListItem>Si</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                        <asp:ListItem>Otro</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtMICAOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label55" runat="server">¿Cuál considera que puede ser el mayor aporte que el CDNEU puede hacerle para fortalecer su actividad?</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
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
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="vertical-align: bottom">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtAporteCDNEUOtro" runat="server" CssClass="form-control" Width="800" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <h4>
                                        <asp:Label ID="Label56" runat="server">Comentarios Finales</asp:Label>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 10px"></td>
                            </tr>
                            <tr>
                                <td style="width: 800px">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-asterisk"></span>
                                        </span>
                                        <asp:TextBox ID="txtComentariosFinales" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                        <!--Boton de registro-->
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-1">
                                <asp:Button ID="btnEnviarDatosVinculacion" runat="server" Text="Enviar Datos" CssClass="boton_azul" />
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
