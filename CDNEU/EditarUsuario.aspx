<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarUsuario.aspx.cs" Inherits="CDNEU.EditarUsuario" %>

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

    <div class="panel-group" id="accordion">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                        <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>DATOS PERSONALES</a>
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
                        <tr>
                            <td style="height: 30px"></td>
                            <td></td>
                        </tr>
                    </table>
                    <!--Boton de registro-->
                    <div class="form-group">
                        <div class="col-md-10 col-md-offset-1">
                            <asp:Button ID="btnEnviarDatosPersonales" runat="server" Text="Enviar Datos" CssClass="boton_azul" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--PANEL FORMACION ACADEMICA--%>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                        <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>FORMACION ACADEMICA</a>
                </h4>
            </div>
            <div id="collapse2" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label41" runat="server" Text="Label">Estudios Oficiales (maximo nivel alcanzado)</asp:Label>
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
                                    <asp:ListItem>Secundario</asp:ListItem>
                                    <asp:ListItem>Terciario</asp:ListItem>
                                    <asp:ListItem>Universitario</asp:ListItem>
                                    <asp:ListItem>Posgrado</asp:ListItem>
                                    <asp:ListItem>Otro</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: bottom">
                                <div class="input-group">
                                    <asp:TextBox ID="txtEstudiosOficialesOtro" runat="server" CssClass="form-control" Width="800" />
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
                                <asp:Label ID="Label1" runat="server" Text="Label">Título Obtenido</asp:Label>
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
                                    <asp:TextBox ID="txtTituloObtenido" runat="server" CssClass="form-control" />
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
                                <asp:Label ID="Label2" runat="server" Text="Label">Institución que emitió el Título</asp:Label>
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
                                    <asp:TextBox ID="txtInstitucionEmisoraTitulo" runat="server" CssClass="form-control" />
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
                                <asp:Label ID="Label3" runat="server" Text="Label">Indique si posee otros estudios vinculados al diseño</asp:Label>
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
                                    <asp:TextBox ID="txtOtrosEstudios" runat="server" CssClass="form-control" placeholder="Explicite Nombre e Institucion" />
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
                                <asp:Label ID="lblEsEstudiante" runat="server" Text="Label">Es usted estudiante de una carrera/curso vinculada al diseño?</asp:Label>
                            </td>
                            <td>
                                <div class="col-md-3">
                                    <asp:CheckBox ID="chkEstudianteVinculado" runat="server" BorderStyle="None" Checked="false" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 10px"></td>
                        </tr>
                    </table>
                    <table id="TablaEstudianteVinculado">
                        <tr>
                            <td style="width: 100px"></td>
                            <td class="anchotabla">
                                <asp:Label ID="Label13" runat="server" Text="Label">Qué curso/carrera sigue</asp:Label>
                            </td>
                            <td class="anchotextboxCarrera">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-asterisk"></span>
                                    </span>
                                    <asp:TextBox ID="txtCarreraNombre" runat="server" CssClass="form-control" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px"></td>
                            <td class="anchotabla">
                                <asp:Label ID="Label14" runat="server" Text="Label">Año de Ingreso</asp:Label>
                            </td>
                            <td class="anchotextboxCarrera">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-asterisk"></span>
                                    </span>
                                    <asp:TextBox ID="txtCarreraAnioIngreso" runat="server" CssClass="form-control" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px"></td>
                            <td class="anchotabla">
                                <asp:Label ID="Label15" runat="server" Text="Label">Año de Cursada</asp:Label>
                            </td>
                            <td class="anchotextboxCarrera">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-asterisk"></span>
                                    </span>
                                    <asp:TextBox ID="txtCarreraAnioCursada" runat="server" CssClass="form-control" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px"></td>
                            <td class="anchotabla">
                                <asp:Label ID="Label16" runat="server" Text="Label">Duración del curso/carrera</asp:Label>
                            </td>
                            <td class="anchotextboxCarrera">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-asterisk"></span>
                                    </span>
                                    <asp:TextBox ID="txtCarreraDuracion" runat="server" CssClass="form-control" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px"></td>
                            <td class="anchotabla">
                                <asp:Label ID="Label17" runat="server" Text="Label">Institución</asp:Label>
                            </td>
                            <td class="anchotextboxCarrera">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-asterisk"></span>
                                    </span>
                                    <asp:TextBox ID="txtCarreraInstitucion" runat="server" CssClass="form-control" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 30px"></td>
                            <td></td>
                        </tr>
                    </table>
                    <!--Boton de registro-->
                    <div class="form-group">
                        <div class="col-md-10 col-md-offset-1">
                            <asp:Button ID="btnEnviarDatosFormacionAcademica" runat="server"
                                Text="Enviar Datos" CssClass="boton_azul" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--PANEL ACTIVIDAD PROFESIONAL--%>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                        <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>ACTIVIDAD PROFESIONAL</a>
                </h4>
            </div>
            <div id="collapse3" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label12" runat="server" Text="Label">Disciplina proyectual en que se enmarca su actividad profesional</asp:Label>
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
                                <asp:Label ID="Label18" runat="server" Text="Label">Sub Sector</asp:Label>
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
                                <asp:Label ID="Label19" runat="server" Text="Label">Tipo de Relación Laboral</asp:Label>
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
                                <asp:Label ID="Label21" runat="server">Nombre de la empresa/estudio/emprendimiento/institucion donde lleva adelante su actividad profesional</asp:Label>
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
                                <asp:Label ID="Label22" runat="server">Link de la empresa/estudio/emprendimiento/institucion donde lleva adelante su actividad profesional</asp:Label>
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
                                <asp:Label ID="Label23" runat="server">Describa brevemente la actividad profesional que realiza</asp:Label>
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
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
                        <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>Si desarrolla su ACTIVIDAD de manera independiente</a>
                </h4>
            </div>
            <div id="collapse4" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label24" runat="server">¿Es esta actividad su principal ingreso y sustento de vida?</asp:Label>
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
                                <asp:Label ID="Label25" runat="server">Tiempo durante el cual su actividad se ha mantenido en funcionamiento</asp:Label>
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
                                <asp:Label ID="Label26" runat="server">¿Cuál es su situación tributaria?</asp:Label>
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
                                <asp:Label ID="Label27" runat="server">¿Tiene su marca/producto/nombre de empresa registrado?</asp:Label>
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
                                <asp:Label ID="Label28" runat="server">¿Tiene empleados a su cargo?</asp:Label>
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
                                <asp:Label ID="Label29" runat="server">¿Cómo comercializa/ofrece sus productos/servicios?</asp:Label>
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
                                <asp:Label ID="Label30" runat="server">Nombre del espacio donde comercializa/ofrece sus productos/servicios</asp:Label>
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
                                <asp:Label ID="Label31" runat="server">Link del espacio donde comercializa/ofrece sus productos/servicios</asp:Label>
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
                                <asp:Label ID="Label32" runat="server">Ubicación del espacio donde comercializa/ofrece/otorga sus productos/servicios</asp:Label>
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
                                <asp:Label ID="Label33" runat="server">¿Cómo financia su actividad profesional?</asp:Label>
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
                                <asp:Label ID="Label34" runat="server">¿Realiza ventas/ofrece servicios a otras provincias/países?</asp:Label>
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
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">
                        <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>PRODUCTOS</a>
                </h4>
            </div>
            <div id="collapse5" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td style="width: 300px">
                                <asp:Label ID="Label35" runat="server">¿Qué cantidad de productos realiza al año?</asp:Label>
                            </td>
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
                                <asp:Label ID="Label36" runat="server">¿Dónde realiza su producción?</asp:Label>
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
                                <asp:Label ID="Label37" runat="server">¿Qué porcentaje del proceso productivo realiza en la Provincia del Neuquén?</asp:Label>
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
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">
                        <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>MATERIAS PRIMAS</a>
                </h4>
            </div>
            <div id="collapse6" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label38" runat="server">¿Qué porcentaje adquiere en la Provincia del Neuquén?</asp:Label>
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
                                <asp:Label ID="Label39" runat="server">¿Tiene dificultades para adquirir las materias primas? Cuáles son? Cómo podría resolverlas?</asp:Label>
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
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">
                        <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>MAQUINARIAS Y PROCESOS DE PRODUCCION</a>
                </h4>
            </div>
            <div id="collapse7" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label40" runat="server">¿Dispone de equipos para el proceso?</asp:Label>
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
                                <asp:Label ID="Label20" runat="server">¿Cuál es la principal falencia en el proceso de producción de objetos?</asp:Label>
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
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">
                        <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>En relación a la IDENTIDAD DEL DISEÑO</a>
                </h4>
            </div>
            <div id="collapse8" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label42" runat="server">Nombre al menos 3 (tres) atributos/valores diferenciales de su trabajo</asp:Label>
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
                                <asp:Label ID="Label43" runat="server">Nombre al menos 3 (tres) rasgos identitarios del diseño neuquino</asp:Label>
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
                                <asp:Label ID="Label44" runat="server">De las siguientes opciones, indicar a su criterio qué aspecto es más relevante para abordar en relación al diseño en la Provincia del Neuquén</asp:Label>
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
                                <asp:Label ID="Label45" runat="server">¿En qué temas cree importante capacitarse para mejorar su actividad como diseñador?</asp:Label>
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
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">
                        <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>En relación a la INNOVACION</a>
                </h4>
            </div>
            <div id="collapse9" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label46" runat="server">¿De qué manera incorpora la innovación en el desarrollo de su labor?</asp:Label>
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
                                <asp:Label ID="Label47" runat="server">¿Cuáles son sus dificultades o barreras a la hora de innovar?</asp:Label>
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
                                <asp:Label ID="Label48" runat="server">¿Cómo han sido tomadas las innovaciones propuestas en su medio de acción (socios, destinatarios, público general, etc.)?</asp:Label>
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
                                <asp:Label ID="Label49" runat="server">¿Qué puede contarnos en relación esto? ¿Hay alguna experiencia?</asp:Label>
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
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">
                        <span class="glyphicon glyphicon-arrow-down" style="width: 20px"></span>VINCULACION</a>
                </h4>
            </div>
            <div id="collapse10" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label50" runat="server">¿Ha recibido apoyo de alguna área del gobierno nacional, provincial o municipal?</asp:Label>
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
                                <asp:Label ID="Label51" runat="server">Organismo que brindó el apoyo</asp:Label>
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
                                <asp:Label ID="Label52" runat="server">Año en que brindó el apoyo</asp:Label>
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
                                <asp:Label ID="Label53" runat="server">¿Ha participado del Sello de Buen Diseño Argentino?</asp:Label>
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
                                <asp:Label ID="Label54" runat="server">¿Ha participado del Mercado de Industrias Creativas Argentinas (MICA)?</asp:Label>
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
                                <asp:Label ID="Label55" runat="server">¿Cuál considera que puede ser el mayor aporte que el CDNEU puede hacerle para fortalecer su actividad?</asp:Label>
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
                                <asp:Label ID="Label56" runat="server">Comentarios Finales</asp:Label>
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






</asp:Content>
