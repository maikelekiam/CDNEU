using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDominio;
using CapaNegocio;
using System.Globalization;

namespace CDNEU
{
    public partial class EditarUsuario : System.Web.UI.Page
    {
        UsuarioNego usuarioNego = new UsuarioNego();
        RedesSocialesNego redesSocialesNego = new RedesSocialesNego();
        FormacionAcademicaNego formacionAcademicaNego = new FormacionAcademicaNego();
        ActividadProfesionalNego actividadProfesionalNego = new ActividadProfesionalNego();
        ActividadIndependienteNego actividadIndependienteNego = new ActividadIndependienteNego();
        ProductoNego productoNego = new ProductoNego();
        MateriaPrimaNego materiaPrimaNego = new MateriaPrimaNego();
        MaquinariaNego maquinariaNego = new MaquinariaNego();
        IdentidadNego identidadNego = new IdentidadNego();
        InnovacionNego innovacionNego = new InnovacionNego();
        VinculacionNego vinculacionNego = new VinculacionNego();

        static int globalIdUsuario;
        static string globalNombreUsuario;
        static string globalContrasenia;
        static int globalGrupo;
        static bool globalActivo;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            imgURL.ImageUrl = "~/MostrarFotoPerfil.aspx?idUsuario=" + Session["userid"].ToString();

            globalIdUsuario = Convert.ToInt32(Session["userid"].ToString());
            globalNombreUsuario = Session["userlogin"].ToString();
            globalContrasenia = Session["usercontrasenia"].ToString();
            globalGrupo = Convert.ToInt32(Session["usergrupo"].ToString());
            globalActivo = Convert.ToBoolean(Session["userActivo"]);

            ObtenerUsuario();
        }

        protected void btnGuardarDatosPersonales_Click(object sender, EventArgs e)
        {
            // Aca hay que restringir los datos si o si necesarios para GUARDAR
            if ((txtDatosPersonalesNombre.Text != "")
                && (txtDatosPersonalesApellido.Text != "")
                && (txtDatosPersonalesDni.Text != "")
                && (txtDatosPersonalesCorreoElectronico.Text != "")
                )
            {
                ActualizarDatosPersonales();
                Response.Redirect("EditarUsuario.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('Complete todos los campos.')", true);
            }
        }
        private void ActualizarDatosPersonales()
        {
            //DATOS PERSONALES
            Usuario usuario = new Usuario();
            usuario.IdUsuario = globalIdUsuario;
            usuario.NombreUsuario = globalNombreUsuario;
            usuario.Contrasenia = globalContrasenia;
            usuario.Grupo = globalGrupo;
            usuario.Activo = globalActivo;
            usuario.Nombre = txtDatosPersonalesNombre.Text;
            usuario.Apellido = txtDatosPersonalesApellido.Text;
            usuario.Dni = txtDatosPersonalesDni.Text;


            if (txtDatosPersonalesFechaDeNacimiento.Text == "") { usuario.FechaNacimiento = null; }
            else { usuario.FechaNacimiento = DateTime.ParseExact(txtDatosPersonalesFechaDeNacimiento.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture); }


            usuario.CorreoElectronico = txtDatosPersonalesCorreoElectronico.Text;
            usuario.Telefono = txtDatosPersonalesTelefono.Text;
            usuario.Domicilio = txtDatosPersonalesDomicilio.Text;
            usuario.Localidad = txtDatosPersonalesLocalidad.Text;
            usuario.Provincia = txtDatosPersonalesProvincia.Text;
            usuarioNego.ActualizarUsuario(usuario);

            //REDES SOCIALES
            RedesSociale redesSociale = new RedesSociale();
            redesSociale.IdRedesSociales = redesSocialesNego.ObtenerRedesSocialeSegunIdUsuario(globalIdUsuario);
            redesSociale.IdUsuario = globalIdUsuario;
            redesSociale.Facebook = txtFacebook.Text;
            redesSociale.Instagram = txtInstagram.Text;
            redesSociale.Twitter = txtTwitter.Text;
            redesSociale.Youtube = txtYouTube.Text;
            redesSociale.Flicker = txtFlicker.Text;
            //inicio
            redesSociale.RedesSociales = chbListPlataforma.Items[0].Selected;
            redesSociale.MercadoLibre = chbListPlataforma.Items[1].Selected;
            redesSociale.SitioWeb = chbListPlataforma.Items[2].Selected;
            redesSociale.TiendaNube = chbListPlataforma.Items[3].Selected;
            redesSociale.Ferias = chbListPlataforma.Items[4].Selected;
            redesSociale.LocalComercial = chbListPlataforma.Items[5].Selected;
            redesSociale.Personal = chbListPlataforma.Items[6].Selected;
            redesSociale.ShowRoom = chbListPlataforma.Items[7].Selected;
            redesSociale.NoComercializa = chbListPlataforma.Items[8].Selected;
            //redesSociale.RedesSociales = chkRedesSociales.Checked;
            //redesSociale.MercadoLibre = chkMercadoLibre.Checked;
            //redesSociale.SitioWeb = chkSitioWeb.Checked;
            //redesSociale.TiendaNube = chkTiendaNube.Checked;
            //redesSociale.Ferias = chkFerias.Checked;
            //redesSociale.LocalComercial = chkLocalComercial.Checked;
            //redesSociale.Personal = chkPersonal.Checked;
            //redesSociale.ShowRoom = chkShowRoom.Checked;
            //redesSociale.NoComercializa = chkNoComercializa.Checked;
            //fin
            redesSociale.PlataformaOtra = txtPlataformaComercializacionOtro.Text;
            redesSocialesNego.ActualizarRedesSociales(redesSociale);
        }

        private void ObtenerUsuario()
        {
            Usuario usuario = usuarioNego.ObtenerUsuario(globalIdUsuario);
            txtDatosPersonalesNombre.Text = usuario.Nombre;
            txtDatosPersonalesApellido.Text = usuario.Apellido;
            txtDatosPersonalesDni.Text = usuario.Dni;

            if (usuario.FechaNacimiento == null) { txtDatosPersonalesFechaDeNacimiento.Text = ""; }
            else { txtDatosPersonalesFechaDeNacimiento.Text = Convert.ToDateTime(usuario.FechaNacimiento).ToShortDateString(); }

            txtDatosPersonalesCorreoElectronico.Text = usuario.CorreoElectronico;
            txtDatosPersonalesTelefono.Text = usuario.Telefono;
            txtDatosPersonalesDomicilio.Text = usuario.Domicilio;
            txtDatosPersonalesLocalidad.Text = usuario.Localidad;
            txtDatosPersonalesProvincia.Text = usuario.Provincia;

            RedesSociale redesSociale = redesSocialesNego.ObtenerRedesSociale(globalIdUsuario);
            txtFacebook.Text = redesSociale.Facebook;
            txtInstagram.Text = redesSociale.Instagram;
            txtTwitter.Text = redesSociale.Twitter;
            txtYouTube.Text = redesSociale.Youtube;
            txtFlicker.Text = redesSociale.Flicker;
            //ini
            chbListPlataforma.Items[0].Selected = redesSociale.RedesSociales.Value;
            chbListPlataforma.Items[1].Selected = redesSociale.MercadoLibre.Value;
            chbListPlataforma.Items[2].Selected = redesSociale.SitioWeb.Value;
            chbListPlataforma.Items[3].Selected = redesSociale.TiendaNube.Value;
            chbListPlataforma.Items[4].Selected = redesSociale.Ferias.Value;
            chbListPlataforma.Items[5].Selected = redesSociale.LocalComercial.Value;
            chbListPlataforma.Items[6].Selected = redesSociale.Personal.Value;
            chbListPlataforma.Items[7].Selected = redesSociale.ShowRoom.Value;
            chbListPlataforma.Items[8].Selected = redesSociale.NoComercializa.Value;
            //chkRedesSociales.Checked = redesSociale.RedesSociales.Value;
            //chkMercadoLibre.Checked = redesSociale.MercadoLibre.Value;
            //chkSitioWeb.Checked = redesSociale.SitioWeb.Value;
            //chkTiendaNube.Checked = redesSociale.TiendaNube.Value;
            //chkFerias.Checked = redesSociale.Ferias.Value;
            //chkLocalComercial.Checked = redesSociale.LocalComercial.Value;
            //chkPersonal.Checked = redesSociale.Personal.Value;
            //chkShowRoom.Checked = redesSociale.ShowRoom.Value;
            //chkNoComercializa.Checked = redesSociale.NoComercializa.Value;
            //fin
            txtPlataformaComercializacionOtro.Text = redesSociale.PlataformaOtra;

            FormacionAcademica formacionAcademica = formacionAcademicaNego.ObtenerFormacionAcademica(globalIdUsuario);
            RBEstudiosOficiales.SelectedValue = formacionAcademica.EstudiosOficiales;
            txtEstudiosOficialesOtro.Text = formacionAcademica.EstudiosOficialesOtro;
            txtTituloObtenido.Text = formacionAcademica.TituloObtenido;
            txtInstitucionEmisoraTitulo.Text = formacionAcademica.InstitucionEmisoraTitulo;
            txtOtrosEstudios.Text = formacionAcademica.OtrosEstudios;
            chkEstudianteVinculado.Checked = formacionAcademica.EsEstudiante.Value;
            txtCarreraNombre.Text = formacionAcademica.CarreraNombre;
            txtCarreraAnioIngreso.Text = formacionAcademica.CarreraAnioIngreso;
            txtCarreraAnioCursada.Text = formacionAcademica.CarreraAnioCursada;
            txtCarreraDuracion.Text = formacionAcademica.CarreraDuracion;
            txtCarreraInstitucion.Text = formacionAcademica.CarreraInstitucion;

            ActividadProfesional actividadProfesional = actividadProfesionalNego.ObtenerActividadProfesional(globalIdUsuario);
            RBDisciplinaProyectual.SelectedValue = actividadProfesional.DisciplinaProyectual;
            txtDisciplinaProyectualOtra.Text = actividadProfesional.DisciplinaProyectualOtra;
            //ini
            chbListSubSector.Items[0].Selected = actividadProfesional.Cinematograficas.Value;
            chbListSubSector.Items[1].Selected = actividadProfesional.Audiovisuales.Value;
            chbListSubSector.Items[2].Selected = actividadProfesional.Escenicas.Value;
            chbListSubSector.Items[3].Selected = actividadProfesional.Musicales.Value;
            chbListSubSector.Items[4].Selected = actividadProfesional.Literarias.Value;
            chbListSubSector.Items[5].Selected = actividadProfesional.Plasticas.Value;
            chbListSubSector.Items[6].Selected = actividadProfesional.Graficas.Value;
            chbListSubSector.Items[7].Selected = actividadProfesional.Digitales.Value;
            chbListSubSector.Items[8].Selected = actividadProfesional.Accesorios.Value;
            chbListSubSector.Items[9].Selected = actividadProfesional.Calzado.Value;
            chbListSubSector.Items[10].Selected = actividadProfesional.Ceramica.Value;
            chbListSubSector.Items[11].Selected = actividadProfesional.DisenioEditorial.Value;
            chbListSubSector.Items[12].Selected = actividadProfesional.DisenioWeb.Value;
            chbListSubSector.Items[13].Selected = actividadProfesional.Joyeria.Value;
            chbListSubSector.Items[14].Selected = actividadProfesional.Madera.Value;
            chbListSubSector.Items[15].Selected = actividadProfesional.Mobiliario.Value;
            chbListSubSector.Items[16].Selected = actividadProfesional.Tejidos.Value;
            //chkAPArtesCinematograficas.Checked = actividadProfesional.Cinematograficas.Value;
            //chkAPArtesAudiovisuales.Checked = actividadProfesional.Audiovisuales.Value;
            //chkAPArtesEscenicas.Checked = actividadProfesional.Escenicas.Value;
            //chkAPArtesMusicales.Checked = actividadProfesional.Musicales.Value;
            //chkAPArtesLiterarias.Checked = actividadProfesional.Literarias.Value;
            //chkAPArtesPlasticas.Checked = actividadProfesional.Plasticas.Value;
            //chkAPArtesGraficas.Checked = actividadProfesional.Graficas.Value;
            //chkAPArtesDigitales.Checked = actividadProfesional.Digitales.Value;
            //chkAPAccesorios.Checked = actividadProfesional.Accesorios.Value;
            //chkAPCalzado.Checked = actividadProfesional.Calzado.Value;
            //chkAPCeramica.Checked = actividadProfesional.Ceramica.Value;
            //chkAPDisenioEditorial.Checked = actividadProfesional.DisenioEditorial.Value;
            //chkAPDisenioWeb.Checked = actividadProfesional.DisenioWeb.Value;
            //chkAPJoyeria.Checked = actividadProfesional.Joyeria.Value;
            //chkAPMadera.Checked = actividadProfesional.Madera.Value;
            //chkAPMobiliario.Checked = actividadProfesional.Mobiliario.Value;
            //chkAPTejidos.Checked = actividadProfesional.Tejidos.Value;
            //fin
            txtSubSectorOtro.Text = actividadProfesional.SubSectorOtro;
            RBTipoRelacionLaboral.SelectedValue = actividadProfesional.TipoRelacionLaboral;
            txtTipoRelacionLaboralOtro.Text = actividadProfesional.TipoRelacionLaboralOtro;
            txtNombreEmpresa.Text = actividadProfesional.NombreEmpresaAP;
            txtLinkEmpresa.Text = actividadProfesional.LinkEmpresaAP;
            txtDescripcion.Text = actividadProfesional.DescripcionAP;

            ActividadIndependiente actividadIndependiente = actividadIndependienteNego.ObtenerActividadIndependiente(globalIdUsuario);
            RBSustentoDeVida.SelectedValue = actividadIndependiente.SustentoDeVida;
            txtSustentoDeVidaOtro.Text = actividadIndependiente.SustentoDeVidaOtro;
            RBActividadFuncionamiento.SelectedValue = actividadIndependiente.TiempoActividadFuncionamiento;
            RBSituacionTributaria.SelectedValue = actividadIndependiente.SituacionTributaria;
            RBEstaRegistrado.SelectedValue = actividadIndependiente.EstaRegistrado;
            txtEstaRegistradoOtro.Text = actividadIndependiente.EstaRegistradoOtro;
            RBEmpleadosACargo.SelectedValue = actividadIndependiente.TieneEmpleadosACargo;
            txtCantidadEmpleadosACargo.Text = actividadIndependiente.CantidadEmpleadosACargo;
            //ini
            chbListComoComercializa.Items[0].Selected = actividadIndependiente.FeriasItinerantes.Value;
            chbListComoComercializa.Items[1].Selected = actividadIndependiente.InternetWeb.Value;
            chbListComoComercializa.Items[2].Selected = actividadIndependiente.InternetRedesSociales.Value;
            chbListComoComercializa.Items[3].Selected = actividadIndependiente.LocalEstudioPropio.Value;
            chbListComoComercializa.Items[4].Selected = actividadIndependiente.LocalesOficinas.Value;
            chbListComoComercializa.Items[5].Selected = actividadIndependiente.OficinaPrivadaShowroom.Value;
            chbListComoComercializa.Items[6].Selected = actividadIndependiente.NoComercializaAun.Value;
            //chkAIFerias.Checked = actividadIndependiente.FeriasItinerantes.Value;
            //chkAIInternetWeb.Checked = actividadIndependiente.InternetWeb.Value;
            //chkAIInternetRedesSociales.Checked = actividadIndependiente.InternetRedesSociales.Value;
            //chkAILocalEstudioPropio.Checked = actividadIndependiente.LocalEstudioPropio.Value;
            //chkAILocalesOficinas.Checked = actividadIndependiente.LocalesOficinas.Value;
            //chkAIOficinaPrivadaShowroom.Checked = actividadIndependiente.OficinaPrivadaShowroom.Value;
            //fin
            txtComercializaOtro.Text = actividadIndependiente.ComoComercializaOtro;
            txtComercializaNombreEspacio.Text = actividadIndependiente.NombreEspacio;
            txtComercializaLinkEspacio.Text = actividadIndependiente.LinkEspacio;
            txtComercializaUbicacionEspacio.Text = actividadIndependiente.UbicacionEspacio;
            chbListComoFinancia.Items[0].Selected = actividadIndependiente.FondosPropios.Value;
            chbListComoFinancia.Items[1].Selected = actividadIndependiente.PrestamosEntidadesPrivadas.Value;
            chbListComoFinancia.Items[2].Selected = actividadIndependiente.PrestamosEntidadesPublicas.Value;
            chbListComoFinancia.Items[3].Selected = actividadIndependiente.SociosCapitalistas.Value;
            chbListComoFinancia.Items[4].Selected = actividadIndependiente.GananciasGenerales.Value;
            chbListComoFinancia.Items[5].Selected = actividadIndependiente.SinFinanciamiento.Value;
            txtFinanciaActividadProfesionalOtro.Text = actividadIndependiente.ComoFinanciaActividadProfesionalOtro;
            RBVentasOtrosPaises.SelectedValue = actividadIndependiente.RealizaVentasServicios;
            txtVentasOtrosPaisesCuales.Text = actividadIndependiente.Cuales;

            Producto producto = productoNego.ObtenerProducto(globalIdUsuario);
            txtCantidadProductosAnio.Text = producto.CantidadProductosAnio;
            chkPRTalleresPropios.Checked = producto.TalleresPropios.Value;
            chkPRTalleresTercerizados.Checked = producto.TalleresTercerizados.Value;
            txtDondeRealizaProduccionOtro.Text = producto.DondeRealizaProduccionOtro;
            RBPorcentajeProcesoProductivoNeuquen.SelectedValue = producto.PorcentajeProcesoProductivoNeuquen;

            MateriaPrima materiaPrima = materiaPrimaNego.ObtenerMateriaPrima(globalIdUsuario);
            RBPorcentajeAdquiereNeuquen.SelectedValue = materiaPrima.PorcentajeAdquiereNeuquen;
            txtDificultades.Text = materiaPrima.Dificultades;

            Maquinarium maquinarium = maquinariaNego.ObtenerMaquinaria(globalIdUsuario);
            if (maquinarium.DisponeEquipo == "")
            {
                RBDisponeEquipoSi.Checked = false;
                RBDisponeEquipoNo.Checked = false;
            }
            else if (maquinarium.DisponeEquipo == "Si")
            {
                RBDisponeEquipoSi.Checked = true;
                RBDisponeEquipoNo.Checked = false;
            }
            else if (maquinarium.DisponeEquipo == "No")
            {
                RBDisponeEquipoSi.Checked = false;
                RBDisponeEquipoNo.Checked = true;
            }
            chkMPPEquiposPropios.Checked = maquinarium.EquiposPropios.Value;
            chkMPPEquiposPrestados.Checked = maquinarium.EquiposPrestados.Value;
            chkMPPEquiposAlquilados.Checked = maquinarium.EquiposAlquilados.Value;
            txtDisponeEquipoOtro.Text = maquinarium.DisponeEquipoOtro;
            //ini
            chbListPrincipalFalencia.Items[0].Selected = maquinarium.Maquinas.Value;
            chbListPrincipalFalencia.Items[1].Selected = maquinarium.RecursosInformaticos.Value;
            chbListPrincipalFalencia.Items[2].Selected = maquinarium.Herramientas.Value;
            chbListPrincipalFalencia.Items[3].Selected = maquinarium.Espacio.Value;
            chbListPrincipalFalencia.Items[4].Selected = maquinarium.ManoDeObra.Value;
            //fin
            txtFalenciaOtra.Text = maquinarium.FalenciaOtra;

            Identidad identidad = identidadNego.ObtenerIdentidad(globalIdUsuario);
            txtAtributos.Text = identidad.Atributos;
            txtRasgos.Text = identidad.Rasgos;
            RBAspectosRelevantes.SelectedValue = identidad.AspectoRelevante;
            txtAspectosRelevantesOtro.Text = identidad.AspectoRelevanteOtro;
            txtTemasParaCapacitarse.Text = identidad.TemasParaCapacitarse;

            Innovacion innovacion = innovacionNego.ObtenerInnovacion(globalIdUsuario);
            RBIncorporaInnovacion.SelectedValue = innovacion.IncorporaInnovacion;
            txtIncorporaInnovacionOtro.Text = innovacion.IncorporaInnovacionOtra;
            //chkINNLegalesBurocraticas.Checked = innovacion.Legales.Value;
            //chkINNFinancieras.Checked = innovacion.Financieras.Value;
            //chkINNProblemasTecnicos.Checked = innovacion.ProblemasTecnicos.Value;
            //chkINNRecursosHumanos.Checked = innovacion.RecursosHumanos.Value;

            //PRUEBA: aca pongo el checkBoxList nuevo
            chbListInn.Items[0].Selected = innovacion.Legales.Value;
            chbListInn.Items[1].Selected = innovacion.Financieras.Value;
            chbListInn.Items[2].Selected = innovacion.ProblemasTecnicos.Value;
            chbListInn.Items[3].Selected = innovacion.RecursosHumanos.Value;
            //fin

            txtDificultadesInnovarOtro.Text = innovacion.DificultadesOtra;
            txtInnovacionesPropuestas.Text = innovacion.ComoTomaronInnovacion;
            txtAlgunaExperiencia.Text = innovacion.ContarExperiencia;

            Vinculacion vinculacion = vinculacionNego.ObtenerVinculacion(globalIdUsuario);
            if (vinculacion.RecibioApoyo == "")
            {
                RBApoyoSi.Checked = false;
                RBApoyoNo.Checked = false;
            }
            else if (vinculacion.RecibioApoyo == "Si")
            {
                RBApoyoSi.Checked = true;
                RBApoyoNo.Checked = false;
            }
            else if (vinculacion.RecibioApoyo == "No")
            {
                RBApoyoSi.Checked = false;
                RBApoyoNo.Checked = true;
            }
            chkVINApoyoTecnico.Checked = vinculacion.ApoyoTecnico.Value;
            chkVINApoyoFinanciero.Checked = vinculacion.ApoyoFinanciero.Value;
            txtApoyoOtro.Text = vinculacion.OtroApoyo;
            txtOrganismoApoyoNombre.Text = vinculacion.OrganismoApoyoNombre;
            txtOrganismoApoyoAnio.Text = vinculacion.OrganismoApoyoAnio;
            RBSelloBuenDisenio.SelectedValue = vinculacion.SelloBuenDisenioArgentino;
            txtSelloBuenDisenioOtro.Text = vinculacion.SelloBuenDisenioArgentinoOtro;
            RBMICA.SelectedValue = vinculacion.Mica;
            txtMICAOtro.Text = vinculacion.MicaOtro;
            RBAporteCDNEU.SelectedValue = vinculacion.AporteCdneu;
            txtAporteCDNEUOtro.Text = vinculacion.AporteCdneuOtro;
            txtComentariosFinales.Text = vinculacion.ComentariosFinales;
        }

        protected void btnEnviarDatosFormacionAcademica_Click(object sender, EventArgs e)
        {
            //FORMACION ACADEMICA
            FormacionAcademica formacionAcademica = new FormacionAcademica();
            formacionAcademica.IdFormacionAcademica = formacionAcademicaNego.ObtenerFormacionAcademicaSegunIdUsuario(globalIdUsuario);
            formacionAcademica.IdUsuario = globalIdUsuario;
            formacionAcademica.EstudiosOficiales = RBEstudiosOficiales.SelectedValue;
            formacionAcademica.EstudiosOficialesOtro = txtEstudiosOficialesOtro.Text;
            formacionAcademica.TituloObtenido = txtTituloObtenido.Text;
            formacionAcademica.InstitucionEmisoraTitulo = txtInstitucionEmisoraTitulo.Text;
            formacionAcademica.OtrosEstudios = txtOtrosEstudios.Text;
            formacionAcademica.EsEstudiante = chkEstudianteVinculado.Checked;
            formacionAcademica.CarreraNombre = txtCarreraNombre.Text;
            formacionAcademica.CarreraAnioIngreso = txtCarreraAnioIngreso.Text;
            formacionAcademica.CarreraAnioCursada = txtCarreraAnioCursada.Text;
            formacionAcademica.CarreraDuracion = txtCarreraDuracion.Text;
            formacionAcademica.CarreraInstitucion = txtCarreraInstitucion.Text;
            //if (formacionAcademica.EstudiosOficiales != "5") { formacionAcademica.EstudiosOficialesOtro = null; }
            formacionAcademicaNego.ActualizarFormacionAcademica(formacionAcademica);
            Response.Redirect("EditarUsuario.aspx");
        }

        protected void btnEnviarDatosActividadProfesional_Click(object sender, EventArgs e)
        {
            //ACTIVIDAD PROFESIONAL

            ActividadProfesional actividadProfesional = new ActividadProfesional();

            actividadProfesional.IdActividadProfesional = actividadProfesionalNego.ObtenerActividadProfesionalSegunIdUsuario(globalIdUsuario);
            actividadProfesional.IdUsuario = globalIdUsuario;
            actividadProfesional.DisciplinaProyectual = RBDisciplinaProyectual.SelectedValue;
            actividadProfesional.DisciplinaProyectualOtra = txtDisciplinaProyectualOtra.Text;
            //ini
            actividadProfesional.Cinematograficas = chbListSubSector.Items[0].Selected;
            actividadProfesional.Audiovisuales = chbListSubSector.Items[1].Selected;
            actividadProfesional.Escenicas = chbListSubSector.Items[2].Selected;
            actividadProfesional.Musicales = chbListSubSector.Items[3].Selected;
            actividadProfesional.Literarias = chbListSubSector.Items[4].Selected;
            actividadProfesional.Plasticas = chbListSubSector.Items[5].Selected;
            actividadProfesional.Graficas = chbListSubSector.Items[6].Selected;
            actividadProfesional.Digitales = chbListSubSector.Items[7].Selected;
            actividadProfesional.Accesorios = chbListSubSector.Items[8].Selected;
            actividadProfesional.Calzado = chbListSubSector.Items[9].Selected;
            actividadProfesional.Ceramica = chbListSubSector.Items[10].Selected;
            actividadProfesional.DisenioEditorial = chbListSubSector.Items[11].Selected;
            actividadProfesional.DisenioWeb = chbListSubSector.Items[12].Selected;
            actividadProfesional.Joyeria = chbListSubSector.Items[13].Selected;
            actividadProfesional.Madera = chbListSubSector.Items[14].Selected;
            actividadProfesional.Mobiliario = chbListSubSector.Items[15].Selected;
            actividadProfesional.Tejidos = chbListSubSector.Items[16].Selected;
            //actividadProfesional.Cinematograficas = chkAPArtesCinematograficas.Checked;
            //actividadProfesional.Audiovisuales = chkAPArtesAudiovisuales.Checked;
            //actividadProfesional.Escenicas = chkAPArtesEscenicas.Checked;
            //actividadProfesional.Musicales = chkAPArtesMusicales.Checked;
            //actividadProfesional.Literarias = chkAPArtesLiterarias.Checked;
            //actividadProfesional.Plasticas = chkAPArtesPlasticas.Checked;
            //actividadProfesional.Graficas = chkAPArtesGraficas.Checked;
            //actividadProfesional.Digitales = chkAPArtesDigitales.Checked;
            //actividadProfesional.Accesorios = chkAPAccesorios.Checked;
            //actividadProfesional.Calzado = chkAPCalzado.Checked;
            //actividadProfesional.Ceramica = chkAPCeramica.Checked;
            //actividadProfesional.DisenioEditorial = chkAPDisenioEditorial.Checked;
            //actividadProfesional.DisenioWeb = chkAPDisenioWeb.Checked;
            //actividadProfesional.Joyeria = chkAPJoyeria.Checked;
            //actividadProfesional.Madera = chkAPMadera.Checked;
            //actividadProfesional.Mobiliario = chkAPMobiliario.Checked;
            //actividadProfesional.Tejidos = chkAPTejidos.Checked;
            //fin
            actividadProfesional.SubSectorOtro = txtSubSectorOtro.Text;
            actividadProfesional.TipoRelacionLaboral = RBTipoRelacionLaboral.SelectedValue;
            actividadProfesional.TipoRelacionLaboralOtro = txtTipoRelacionLaboralOtro.Text;
            actividadProfesional.NombreEmpresaAP = txtNombreEmpresa.Text;
            actividadProfesional.LinkEmpresaAP = txtLinkEmpresa.Text;
            actividadProfesional.DescripcionAP = txtDescripcion.Text;
            //if (actividadProfesional.DisciplinaProyectual != "9") { actividadProfesional.DisciplinaProyectualOtra = null; }
            actividadProfesionalNego.ActualizarActividadProfesional(actividadProfesional);
            Response.Redirect("EditarUsuario.aspx");
        }

        protected void btnEnviarDatosActividadIndependiente_Click(object sender, EventArgs e)
        {
            //ACTIVIDAD INDEPENDIENTE

            ActividadIndependiente actividadIndependiente = new ActividadIndependiente();

            actividadIndependiente.IdActividadIndependiente = actividadIndependienteNego.ObtenerActividadIndependienteSegunIdUsuario(globalIdUsuario);
            actividadIndependiente.IdUsuario = globalIdUsuario;
            actividadIndependiente.SustentoDeVida = RBSustentoDeVida.SelectedValue;
            actividadIndependiente.SustentoDeVidaOtro = txtSustentoDeVidaOtro.Text;
            actividadIndependiente.TiempoActividadFuncionamiento = RBActividadFuncionamiento.SelectedValue;
            actividadIndependiente.SituacionTributaria = RBSituacionTributaria.SelectedValue;
            actividadIndependiente.EstaRegistrado = RBEstaRegistrado.SelectedValue;
            actividadIndependiente.EstaRegistradoOtro = txtEstaRegistradoOtro.Text;
            actividadIndependiente.TieneEmpleadosACargo = RBEmpleadosACargo.SelectedValue;
            actividadIndependiente.CantidadEmpleadosACargo = txtCantidadEmpleadosACargo.Text;
            //ini
            actividadIndependiente.FeriasItinerantes = chbListComoComercializa.Items[0].Selected;
            actividadIndependiente.InternetWeb = chbListComoComercializa.Items[1].Selected;
            actividadIndependiente.InternetRedesSociales = chbListComoComercializa.Items[2].Selected;
            actividadIndependiente.LocalEstudioPropio = chbListComoComercializa.Items[3].Selected;
            actividadIndependiente.LocalesOficinas = chbListComoComercializa.Items[4].Selected;
            actividadIndependiente.OficinaPrivadaShowroom = chbListComoComercializa.Items[5].Selected;
            actividadIndependiente.NoComercializaAun = chbListComoComercializa.Items[6].Selected;
            //actividadIndependiente.FeriasItinerantes = chkAIFerias.Checked;
            //actividadIndependiente.InternetWeb = chkAIInternetWeb.Checked;
            //actividadIndependiente.InternetRedesSociales = chkAIInternetRedesSociales.Checked;
            //actividadIndependiente.LocalEstudioPropio = chkAILocalEstudioPropio.Checked;
            //actividadIndependiente.LocalesOficinas = chkAILocalesOficinas.Checked;
            //actividadIndependiente.OficinaPrivadaShowroom = chkAIOficinaPrivadaShowroom.Checked;
            //fin
            actividadIndependiente.ComoComercializaOtro = txtComercializaOtro.Text;
            actividadIndependiente.NombreEspacio = txtComercializaNombreEspacio.Text;
            actividadIndependiente.LinkEspacio = txtComercializaLinkEspacio.Text;
            actividadIndependiente.UbicacionEspacio = txtComercializaUbicacionEspacio.Text;
            actividadIndependiente.FondosPropios = chbListComoFinancia.Items[0].Selected;
            actividadIndependiente.PrestamosEntidadesPrivadas = chbListComoFinancia.Items[1].Selected;
            actividadIndependiente.PrestamosEntidadesPublicas = chbListComoFinancia.Items[2].Selected;
            actividadIndependiente.SociosCapitalistas = chbListComoFinancia.Items[3].Selected;
            actividadIndependiente.GananciasGenerales = chbListComoFinancia.Items[4].Selected;
            actividadIndependiente.SinFinanciamiento = chbListComoFinancia.Items[5].Selected;
            actividadIndependiente.ComoFinanciaActividadProfesionalOtro = txtFinanciaActividadProfesionalOtro.Text;
            actividadIndependiente.RealizaVentasServicios = RBVentasOtrosPaises.SelectedValue;
            actividadIndependiente.Cuales = txtVentasOtrosPaisesCuales.Text;
            actividadIndependienteNego.ActualizarActividadIndependiente(actividadIndependiente);
            Response.Redirect("EditarUsuario.aspx");
        }

        protected void btnEnviarDatosProductos_Click(object sender, EventArgs e)
        {
            //PRODUCTO

            Producto producto = new Producto();

            producto.IdProducto = productoNego.ObtenerProductoSegunIdUsuario(globalIdUsuario);
            producto.IdUsuario = globalIdUsuario;
            producto.CantidadProductosAnio = txtCantidadProductosAnio.Text;
            producto.TalleresPropios = chkPRTalleresPropios.Checked;
            producto.TalleresTercerizados = chkPRTalleresTercerizados.Checked;
            producto.DondeRealizaProduccionOtro = txtDondeRealizaProduccionOtro.Text;
            producto.PorcentajeProcesoProductivoNeuquen = RBPorcentajeProcesoProductivoNeuquen.SelectedValue;
            productoNego.ActualizarProducto(producto);
            Response.Redirect("EditarUsuario.aspx");
        }

        protected void btnEnviarDatosMateriaPrima_Click(object sender, EventArgs e)
        {
            //MATERIA PRIMA

            MateriaPrima materiaPrima = new MateriaPrima();

            materiaPrima.IdMateriaPrima = materiaPrimaNego.ObtenerMateriaPrimaSegunIdUsuario(globalIdUsuario);
            materiaPrima.IdUsuario = globalIdUsuario;
            materiaPrima.PorcentajeAdquiereNeuquen = RBPorcentajeAdquiereNeuquen.SelectedValue;
            materiaPrima.Dificultades = txtDificultades.Text;
            materiaPrimaNego.ActualizarMateriaPrima(materiaPrima);
            Response.Redirect("EditarUsuario.aspx");
        }

        protected void btnEnviarDatosMaquinaria_Click(object sender, EventArgs e)
        {
            //MAQUINARIA Y PROCESOS

            Maquinarium maquinarium = new Maquinarium();

            maquinarium.IdMaquinaria = maquinariaNego.ObtenerMaquinariaSegunIdUsuario(globalIdUsuario);
            maquinarium.IdUsuario = globalIdUsuario;
            if (RBDisponeEquipoSi.Checked == true) { maquinarium.DisponeEquipo = "Si"; }
            else if (RBDisponeEquipoSi.Checked == false)
            {
                if (RBDisponeEquipoNo.Checked == true) { maquinarium.DisponeEquipo = "No"; }
                else { maquinarium.DisponeEquipo = ""; }
            }
            maquinarium.DisponeEquipoOtro = txtDisponeEquipoOtro.Text;
            maquinarium.EquiposPropios = chkMPPEquiposPropios.Checked;
            maquinarium.EquiposPrestados = chkMPPEquiposPrestados.Checked;
            maquinarium.EquiposAlquilados = chkMPPEquiposAlquilados.Checked;
            //ini
            maquinarium.Maquinas = chbListPrincipalFalencia.Items[0].Selected;
            maquinarium.RecursosInformaticos = chbListPrincipalFalencia.Items[1].Selected;
            maquinarium.Herramientas = chbListPrincipalFalencia.Items[2].Selected;
            maquinarium.Espacio = chbListPrincipalFalencia.Items[3].Selected;
            maquinarium.ManoDeObra = chbListPrincipalFalencia.Items[4].Selected;
            //fin
            maquinarium.FalenciaOtra = txtFalenciaOtra.Text;
            maquinariaNego.ActualizarMaquinaria(maquinarium);
            Response.Redirect("EditarUsuario.aspx");
        }

        protected void btnEnviarDatosIdentidadDisenio_Click(object sender, EventArgs e)
        {
            //IDENTIDAD

            Identidad identidad = new Identidad();

            identidad.IdIdentidad = identidadNego.ObtenerIdentidadSegunIdUsuario(globalIdUsuario);
            identidad.IdUsuario = globalIdUsuario;
            identidad.Atributos = txtAtributos.Text;
            identidad.Rasgos = txtRasgos.Text;
            identidad.AspectoRelevante = RBAspectosRelevantes.SelectedValue;
            identidad.AspectoRelevanteOtro = txtAspectosRelevantesOtro.Text;
            identidad.TemasParaCapacitarse = txtTemasParaCapacitarse.Text;
            identidadNego.ActualizarIdentidad(identidad);
            Response.Redirect("EditarUsuario.aspx");
        }

        protected void btnEnviarDatosInnovacion_Click(object sender, EventArgs e)
        {
            //INNOVACION

            Innovacion innovacion = new Innovacion();

            innovacion.IdInnovacion = innovacionNego.ObtenerInnovacionSegunIdUsuario(globalIdUsuario);
            innovacion.IdUsuario = globalIdUsuario;
            innovacion.IncorporaInnovacion = RBIncorporaInnovacion.SelectedValue;
            innovacion.IncorporaInnovacionOtra = txtIncorporaInnovacionOtro.Text;
            //PRUEBA
            //innovacion.Legales = chkINNLegalesBurocraticas.Checked;
            //innovacion.Financieras = chkINNFinancieras.Checked;
            //innovacion.ProblemasTecnicos = chkINNProblemasTecnicos.Checked;
            //innovacion.RecursosHumanos = chkINNRecursosHumanos.Checked;
            innovacion.Legales = chbListInn.Items[0].Selected;
            innovacion.Financieras = chbListInn.Items[1].Selected;
            innovacion.ProblemasTecnicos = chbListInn.Items[2].Selected;
            innovacion.RecursosHumanos = chbListInn.Items[3].Selected;
            //fin
            innovacion.DificultadesOtra = txtDificultadesInnovarOtro.Text;
            innovacion.ComoTomaronInnovacion = txtInnovacionesPropuestas.Text;
            innovacion.ContarExperiencia = txtAlgunaExperiencia.Text;
            innovacionNego.ActualizarInnovacion(innovacion);
            Response.Redirect("EditarUsuario.aspx");

        }

        protected void btnEnviarDatosVinculacion_Click(object sender, EventArgs e)
        {
            //VINCULACION

            Vinculacion vinculacion = new Vinculacion();

            vinculacion.IdVinculacion = vinculacionNego.ObtenerVinculacionSegunIdUsuario(globalIdUsuario);
            vinculacion.IdUsuario = globalIdUsuario;
            if (RBApoyoSi.Checked == true) { vinculacion.RecibioApoyo = "Si"; }
            else if (RBApoyoSi.Checked == false)
            {
                if (RBApoyoNo.Checked == true) { vinculacion.RecibioApoyo = "No"; }
                else { vinculacion.RecibioApoyo = ""; }
            }
            vinculacion.ApoyoTecnico = chkVINApoyoTecnico.Checked;
            vinculacion.ApoyoFinanciero = chkVINApoyoFinanciero.Checked;
            vinculacion.OtroApoyo = txtApoyoOtro.Text;
            vinculacion.OrganismoApoyoNombre = txtOrganismoApoyoNombre.Text;
            vinculacion.OrganismoApoyoAnio = txtOrganismoApoyoAnio.Text;
            vinculacion.SelloBuenDisenioArgentino = RBSelloBuenDisenio.SelectedValue;
            vinculacion.SelloBuenDisenioArgentinoOtro = txtSelloBuenDisenioOtro.Text;
            vinculacion.Mica = RBMICA.SelectedValue;
            vinculacion.MicaOtro = txtMICAOtro.Text;
            vinculacion.AporteCdneu = RBAporteCDNEU.SelectedValue;
            vinculacion.AporteCdneuOtro = txtAporteCDNEUOtro.Text;
            vinculacion.ComentariosFinales = txtComentariosFinales.Text;
            vinculacionNego.ActualizarVinculacion(vinculacion);
            Response.Redirect("EditarUsuario.aspx");
        }
    }
}