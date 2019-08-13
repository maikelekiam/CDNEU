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
                        <span class="glyphicon glyphicon-arrow-down"></span>DATOS PERSONALES</a>
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
                        <span class="glyphicon glyphicon-arrow-down"></span>FORMACION ACADEMICA</a>
                </h4>
            </div>
            <div id="collapse2" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td class="anchotablaFormacionAcademica">
                                <asp:Label ID="Label1" runat="server" Text="Label">Estudios Oficiales (maximo nivel alcanzado)</asp:Label>
                            </td>
                            <td class="anchotextbox">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-edit"></span>
                                    </span>
                                    <div class="col-md-3 ">
                                        <asp:DropDownList ID="ddlEstudiosOficiales" runat="server"
                                            CssClass="selectpicker form-control show-tick"
                                            data-width="300">
                                            <asp:ListItem Value="-1">&lt;Seleccione Estudio&gt;</asp:ListItem>
                                            <asp:ListItem Value="Secundario">Secundario</asp:ListItem>
                                            <asp:ListItem Value="Terciario">Terciario</asp:ListItem>
                                            <asp:ListItem Value="Universitario">Universitario</asp:ListItem>
                                            <asp:ListItem Value="Posgrado">Posgrado</asp:ListItem>
                                            <asp:ListItem Value="Otro">Otro</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                </div>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEstudiosOficialesOtro" runat="server" CssClass="form-control" Width="400" />
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotablaFormacionAcademica altotabla"></td>
                            <td></td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td class="anchotablaFormacionAcademica">
                                <asp:Label ID="Label2" runat="server" Text="Label">Título Obtenido</asp:Label>
                            </td>
                            <td class="anchotextbox">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-edit"></span>
                                    </span>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="730" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotablaFormacionAcademica altotabla"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="anchotablaFormacionAcademica">
                                <asp:Label ID="Label3" runat="server" Text="Label">Institución que emitió el Título</asp:Label>
                            </td>
                            <td class="anchotextbox">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-edit"></span>
                                    </span>
                                    <asp:TextBox ID="txtInstitucionEmisoraTitulo" runat="server" CssClass="form-control" Width="730" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotablaFormacionAcademica altotabla"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="anchotablaFormacionAcademica">
                                <asp:Label ID="Label12" runat="server" Text="Label">Indique si posee otros estudios vinculados al diseño</asp:Label>
                            </td>
                            <td class="anchotextbox">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-edit"></span>
                                    </span>
                                    <asp:TextBox ID="txtOtrosEstudios" runat="server" CssClass="form-control" Width="730" placeholder="Explicite Nombre e Institucion" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotablaFormacionAcademica altotabla"></td>
                            <td></td>
                        </tr>
                    </table>



                    <table>
                        <tr>
                            <td style="height: 30px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblEsEstudiante" runat="server" Text="Label">Es usted estudiante de una carrera/curso vinculada al diseño?</asp:Label>
                            </td>
                            <td>
                                <div class="col-md-3">
                                    <asp:CheckBox ID="chkAbierta" runat="server" BorderStyle="None" Checked="false" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="altotabla"></td>
                        </tr>
                    </table>



                    <table>
                        <tr>
                            <td style="width: 100px"></td>
                            <td class="anchotabla">
                                <asp:Label ID="Label13" runat="server" Text="Label">Qué curso/carrera sigue</asp:Label>
                            </td>
                            <td class="anchotextboxCarrera">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
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
                                    <span class="input-group-addon alert-info">
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
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-asterisk"></span>
                                    </span>
                                    <asp:TextBox ID="txtCarreraAnioCursada" runat="server" CssClass="form-control" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px"></td>
                            <td class="anchotabla">
                                <asp:Label ID="Label16" runat="server" Text="Label">Duración del Curso/Carrera</asp:Label>
                            </td>
                            <td class="anchotextboxCarrera">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
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
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-asterisk"></span>
                                    </span>
                                    <asp:TextBox ID="txtCarreraInstitucion" runat="server" CssClass="form-control" />
                                </div>
                            </td>
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
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                        <span class="glyphicon glyphicon-arrow-down"></span>ACTIVIDAD PROFESIONAL</a>
                </h4>
            </div>
            <div id="collapse3" class="panel-collapse collapse">
                <div class="panel-body">
                    <table>
                        <tr>
                            <td class="anchotablaActividadProfesional">
                                <asp:Label ID="Label18" runat="server" Text="Label">Disciplina proyectual en que se enmarca su actividad profesional</asp:Label>
                            </td>
                            <td class="anchotextbox">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-edit"></span>
                                    </span>
                                    <div class="col-md-3 ">
                                        <asp:DropDownList ID="ddlDisciplinaProyectual" runat="server"
                                            CssClass="selectpicker form-control show-tick"
                                            data-width="300">
                                            <asp:ListItem Value="-1">&lt;Seleccione Disciplina&gt;</asp:ListItem>
                                            <asp:ListItem Value="1">Diseño de Interiores</asp:ListItem>
                                            <asp:ListItem Value="2">Diseño Industrial</asp:ListItem>
                                            <asp:ListItem Value="3">Diseño del Paisaje</asp:ListItem>
                                            <asp:ListItem Value="4">Diseño de Indumentaria</asp:ListItem>
                                            <asp:ListItem Value="5">Diseño Gráfico</asp:ListItem>
                                            <asp:ListItem Value="6">Diseño Multimedia</asp:ListItem>
                                            <asp:ListItem Value="7">Arquitectura</asp:ListItem>
                                            <asp:ListItem Value="8">Artesanías</asp:ListItem>
                                            <asp:ListItem Value="9">Otra</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDisciplinaProyectualOtra" runat="server" CssClass="form-control" Width="400" />
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotablaFormacionAcademica altotabla"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="anchotabla">
                                <asp:Label ID="Label19" runat="server" Text="Label">Sub Sector</asp:Label>
                            </td>
                            <td class="anchotextbox">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-edit"></span>
                                    </span>
                                    <asp:TextBox ID="txtSubSector" runat="server" CssClass="form-control" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotabla altotabla"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="anchotablaActividadProfesional">
                                <asp:Label ID="Label20" runat="server" Text="Label">Tipo de Relacion Laboral</asp:Label>
                            </td>
                            <td class="anchotextbox">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-edit"></span>
                                    </span>
                                    <div class="col-md-3 ">
                                        <asp:DropDownList ID="ddlTipoRelacionLaboral" runat="server"
                                            CssClass="selectpicker form-control show-tick"
                                            data-width="300">
                                            <asp:ListItem Value="-1">&lt;Seleccione Tipo&gt;</asp:ListItem>
                                            <asp:ListItem Value="1">Trabajador en relacion de dependencia</asp:ListItem>
                                            <asp:ListItem Value="2">Trabajador Independiente proyecto propio</asp:ListItem>
                                            <asp:ListItem Value="3">Por Proyecto</asp:ListItem>
                                            <asp:ListItem Value="4">Free Lance</asp:ListItem>
                                            <asp:ListItem Value="5">Abono mensual por horas dedicadas</asp:ListItem>
                                            <asp:ListItem Value="6">Otro</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTipoRelacionLaboralOtro" runat="server" CssClass="form-control" Width="400" />
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotablaActividadProfesional" style="height:50px"></td>
                            <td></td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td class="anchotablaActividadProfesional">
                                <asp:Label ID="Label21" runat="server" Text="Label">Nombre de la empresa/estudio/emprendimiento/institucion donde lleva adelante su actividad profesional</asp:Label>
                            </td>
                            <td style="width:500px">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-asterisk"></span>
                                    </span>
                                    <asp:TextBox ID="txtNombreEmpresa" runat="server" CssClass="form-control" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotablaActividadProfesional" style="height:30px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="anchotablaActividadProfesional">
                                <asp:Label ID="Label22" runat="server" Text="Label">Link de la empresa/estudio/emprendimiento/institucion donde lleva adelante su actividad profesional</asp:Label>
                            </td>
                            <td style="width:500px">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-asterisk"></span>
                                    </span>
                                    <asp:TextBox ID="txtLinkEmpresa" runat="server" CssClass="form-control" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotablaActividadProfesional" style="height:30px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="anchotablaActividadProfesional">
                                <asp:Label ID="Label23" runat="server" Text="Label">Describa brevemente la actividad profesional que realiza</asp:Label>
                            </td>
                            <td style="width:500px">
                                <div class="input-group">
                                    <span class="input-group-addon alert-info">
                                        <span class="glyphicon glyphicon-asterisk"></span>
                                    </span>
                                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="anchotablaActividadProfesional" style="height:30px"></td>
                            <td></td>
                        </tr>
                    </table>
                    <table>




                    </table>







                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
                        <span class="glyphicon glyphicon-arrow-down"></span>Si desarrolla su ACTIVIDAD de manera independiente</a>
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
                        <span class="glyphicon glyphicon-arrow-down"></span>En relacion a la PRODUCCION DE BIENES</a>
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
                        <span class="glyphicon glyphicon-arrow-down"></span>En relacion a la IDENTIDAD de Diseño</a>
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
