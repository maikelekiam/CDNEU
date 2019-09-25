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

namespace CDNEU
{
    public partial class EditarUsuario : System.Web.UI.Page
    {
        UsuarioNego usuarioNego = new UsuarioNego();
        RedesSocialesNego redesSocialesNego = new RedesSocialesNego();
        FormacionAcademicaNego formacionAcademicaNego = new FormacionAcademicaNego();
        ActividadProfesionalNego actividadProfesionalNego = new ActividadProfesionalNego();
        ActividadIndependienteNego actividadIndependienteNego = new ActividadIndependienteNego();

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
            usuario.CorreoElectronico = txtDatosPersonalesCorreoElectronico.Text;
            usuario.Telefono = txtDatosPersonalesTelefono.Text;
            usuario.Domicilio = txtDatosPersonalesDomicilio.Text;
            usuario.Localidad = txtDatosPersonalesLocalidad.Text;
            usuario.Provincia = txtDatosPersonalesProvincia.Text;
            usuario.Edad = txtDatosPersonalesEdad.Text;
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
            redesSociale.RedesSociales = chkRedesSociales.Checked;
            redesSociale.MercadoLibre = chkMercadoLibre.Checked;
            redesSociale.SitioWeb = chkSitioWeb.Checked;
            redesSociale.TiendaNube = chkTiendaNube.Checked;
            redesSociale.Ferias = chkFerias.Checked;
            redesSociale.LocalComercial = chkLocalComercial.Checked;
            redesSociale.Personal = chkPersonal.Checked;
            redesSociale.ShowRoom = chkShowRoom.Checked;
            redesSociale.NoComercializa = chkNoComercializa.Checked;
            redesSociale.PlataformaOtra = txtPlataformaComercializacionOtro.Text;
            redesSocialesNego.ActualizarRedesSociales(redesSociale);
        }

        private void ObtenerUsuario()
        {
            Usuario usuario = usuarioNego.ObtenerUsuario(globalIdUsuario);
            txtDatosPersonalesNombre.Text = usuario.Nombre;
            txtDatosPersonalesApellido.Text = usuario.Apellido;
            txtDatosPersonalesCorreoElectronico.Text = usuario.CorreoElectronico;
            txtDatosPersonalesTelefono.Text = usuario.Telefono;
            txtDatosPersonalesDomicilio.Text = usuario.Domicilio;
            txtDatosPersonalesLocalidad.Text = usuario.Localidad;
            txtDatosPersonalesProvincia.Text = usuario.Provincia;
            txtDatosPersonalesEdad.Text = usuario.Edad;

            RedesSociale redesSociale = redesSocialesNego.ObtenerRedesSociale(globalIdUsuario);
            txtFacebook.Text = redesSociale.Facebook;
            txtInstagram.Text = redesSociale.Instagram;
            txtTwitter.Text = redesSociale.Twitter;
            txtYouTube.Text = redesSociale.Youtube;
            txtFlicker.Text = redesSociale.Flicker;
            chkRedesSociales.Checked = redesSociale.RedesSociales.Value;
            chkMercadoLibre.Checked = redesSociale.MercadoLibre.Value;
            chkSitioWeb.Checked = redesSociale.SitioWeb.Value;
            chkTiendaNube.Checked = redesSociale.TiendaNube.Value;
            chkFerias.Checked = redesSociale.Ferias.Value;
            chkLocalComercial.Checked = redesSociale.LocalComercial.Value;
            chkPersonal.Checked = redesSociale.Personal.Value;
            chkShowRoom.Checked = redesSociale.ShowRoom.Value;
            chkNoComercializa.Checked = redesSociale.NoComercializa.Value;
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
            chkAPAccesorios.Checked = actividadProfesional.Accesorios.Value;
            chkAPCalzado.Checked = actividadProfesional.Calzado.Value;
            chkAPCeramica.Checked = actividadProfesional.Ceramica.Value;
            chkAPDisenioEditorial.Checked = actividadProfesional.DisenioEditorial.Value;
            chkAPDisenioWeb.Checked = actividadProfesional.DisenioWeb.Value;
            chkAPJoyeria.Checked = actividadProfesional.Joyeria.Value;
            chkAPMadera.Checked = actividadProfesional.Madera.Value;
            chkAPMobiliario.Checked = actividadProfesional.Mobiliario.Value;
            chkAPTejidos.Checked = actividadProfesional.Tejidos.Value;
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
            chkAIFerias.Checked = actividadIndependiente.FeriasItinerantes.Value;
            chkAIInternetWeb.Checked = actividadIndependiente.InternetWeb.Value;
            chkAIInternetRedesSociales.Checked = actividadIndependiente.InternetRedesSociales.Value;
            chkAILocalEstudioPropio.Checked = actividadIndependiente.LocalEstudioPropio.Value;
            chkAILocalesOficinas.Checked = actividadIndependiente.LocalesOficinas.Value;
            chkAIOficinaPrivadaShowroom.Checked = actividadIndependiente.OficinaPrivadaShowroom.Value;
            txtComercializaOtro.Text = actividadIndependiente.ComoComercializaOtro;
            txtComercializaNombreEspacio.Text = actividadIndependiente.NombreEspacio;
            txtComercializaLinkEspacio.Text = actividadIndependiente.LinkEspacio;
            txtComercializaUbicacionEspacio.Text = actividadIndependiente.UbicacionEspacio;
            chkAIFondosPropios.Checked = actividadIndependiente.FondosPropios.Value;
            chkAIPrestamosEntidadesPrivadas.Checked = actividadIndependiente.PrestamosEntidadesPrivadas.Value;
            chkAIPrestamosEntidadesPublicas.Checked = actividadIndependiente.PrestamosEntidadesPublicas.Value;
            chkAISociosCapitalistas.Checked = actividadIndependiente.SociosCapitalistas.Value;
            chkAIGananciasGeneradas.Checked = actividadIndependiente.GananciasGenerales.Value;
            txtFinanciaActividadProfesionalOtro.Text = actividadIndependiente.ComoFinanciaActividadProfesionalOtro;
            RBVentasOtrosPaises.SelectedValue = actividadIndependiente.RealizaVentasServicios;
            txtVentasOtrosPaisesCuales.Text = actividadIndependiente.Cuales;

            //PROXIMA: PRODUCTO







        }

        protected void btnEnviarDatosFormacionAcademica_Click(object sender, EventArgs e)
        {
            //FORMACION ACADEMICA
            FormacionAcademica formacionAcademica = new FormacionAcademica();
            formacionAcademica.IdFormacionAcademica = formacionAcademicaNego.ObtenerFormacionAcademicaSegunIdUsuario(globalIdUsuario);
            formacionAcademica.IdUsuario = globalIdUsuario;
            formacionAcademica.EstudiosOficiales = RBEstudiosOficiales.SelectedValue.ToString();
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
            actividadProfesional.DisciplinaProyectual = RBDisciplinaProyectual.SelectedValue.ToString();
            actividadProfesional.DisciplinaProyectualOtra = txtDisciplinaProyectualOtra.Text;
            actividadProfesional.Accesorios = chkAPAccesorios.Checked;
            actividadProfesional.Calzado = chkAPCalzado.Checked;
            actividadProfesional.Ceramica = chkAPCeramica.Checked;
            actividadProfesional.DisenioEditorial = chkAPDisenioEditorial.Checked;
            actividadProfesional.DisenioWeb = chkAPDisenioWeb.Checked;
            actividadProfesional.Joyeria = chkAPJoyeria.Checked;
            actividadProfesional.Madera = chkAPMadera.Checked;
            actividadProfesional.Mobiliario = chkAPMobiliario.Checked;
            actividadProfesional.Tejidos = chkAPTejidos.Checked;
            actividadProfesional.SubSectorOtro = txtSubSectorOtro.Text;
            actividadProfesional.TipoRelacionLaboral = RBTipoRelacionLaboral.SelectedValue.ToString();
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
            actividadIndependiente.SustentoDeVida = RBSustentoDeVida.SelectedValue.ToString();
            actividadIndependiente.SustentoDeVidaOtro = txtSustentoDeVidaOtro.Text;
            actividadIndependiente.TiempoActividadFuncionamiento = RBActividadFuncionamiento.SelectedValue.ToString();
            actividadIndependiente.SituacionTributaria = RBSituacionTributaria.SelectedValue.ToString();
            actividadIndependiente.EstaRegistrado = RBEstaRegistrado.SelectedValue.ToString();
            actividadIndependiente.EstaRegistradoOtro = txtEstaRegistradoOtro.Text;
            actividadIndependiente.TieneEmpleadosACargo = RBEmpleadosACargo.SelectedValue.ToString();
            actividadIndependiente.CantidadEmpleadosACargo = txtCantidadEmpleadosACargo.Text;
            actividadIndependiente.FeriasItinerantes = chkAIFerias.Checked;
            actividadIndependiente.InternetWeb = chkAIInternetWeb.Checked;
            actividadIndependiente.InternetRedesSociales = chkAIInternetRedesSociales.Checked;
            actividadIndependiente.LocalEstudioPropio = chkAILocalEstudioPropio.Checked;
            actividadIndependiente.LocalesOficinas = chkAILocalesOficinas.Checked;
            actividadIndependiente.OficinaPrivadaShowroom = chkAIOficinaPrivadaShowroom.Checked;
            actividadIndependiente.ComoComercializaOtro = txtComercializaOtro.Text;
            actividadIndependiente.NombreEspacio = txtComercializaNombreEspacio.Text;
            actividadIndependiente.LinkEspacio = txtComercializaLinkEspacio.Text;
            actividadIndependiente.UbicacionEspacio = txtComercializaUbicacionEspacio.Text;
            actividadIndependiente.FondosPropios = chkAIFondosPropios.Checked;
            actividadIndependiente.PrestamosEntidadesPrivadas = chkAIPrestamosEntidadesPrivadas.Checked;
            actividadIndependiente.PrestamosEntidadesPublicas = chkAIPrestamosEntidadesPublicas.Checked;
            actividadIndependiente.SociosCapitalistas = chkAISociosCapitalistas.Checked;
            actividadIndependiente.GananciasGenerales = chkAIGananciasGeneradas.Checked;
            actividadIndependiente.ComoFinanciaActividadProfesionalOtro = txtFinanciaActividadProfesionalOtro.Text;
            actividadIndependiente.RealizaVentasServicios = RBVentasOtrosPaises.SelectedValue.ToString();
            actividadIndependiente.Cuales = txtVentasOtrosPaisesCuales.Text;
            actividadIndependienteNego.ActualizarActividadIndependiente(actividadIndependiente);
            Response.Redirect("EditarUsuario.aspx");
        }





    }
}