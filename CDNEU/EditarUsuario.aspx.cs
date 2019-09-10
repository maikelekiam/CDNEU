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
            if (txtDatosPersonalesEdad.Text == "") { usuario.Edad = null; }
            else { usuario.Edad = Convert.ToInt32(txtDatosPersonalesEdad.Text); }
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
            redesSociale.MercadoLibre = chkMercadoLibre.Checked;
            redesSociale.TiendaNube = chkTiendaNube.Checked;
            redesSociale.PlataformaOtra = txtPlataformaComercializacionOtro.Text;
            redesSocialesNego.ActualizarRedesSociales(redesSociale);
        }

        private void ObtenerUsuario()
        {
            Usuario usuario = usuarioNego.ObtenerUsuario(globalIdUsuario);
            txtDatosPersonalesNombre.Text = usuario.Nombre.ToString();
            txtDatosPersonalesApellido.Text = usuario.Apellido.ToString();
            txtDatosPersonalesCorreoElectronico.Text = usuario.CorreoElectronico.ToString();
            txtDatosPersonalesTelefono.Text = usuario.Telefono.ToString();
            if (usuario.Domicilio == null) { txtDatosPersonalesDomicilio.Text = null; }
            else { txtDatosPersonalesDomicilio.Text = usuario.Domicilio.ToString(); }
            if (usuario.Localidad == null) { txtDatosPersonalesLocalidad.Text = null; }
            else { txtDatosPersonalesLocalidad.Text = usuario.Localidad; }
            if (usuario.Provincia == null) { txtDatosPersonalesProvincia.Text = null; }
            else { txtDatosPersonalesProvincia.Text = usuario.Provincia; }
            if (usuario.Edad == null) { txtDatosPersonalesEdad.Text = null; }
            else { txtDatosPersonalesEdad.Text = Convert.ToString(usuario.Edad); }

            RedesSociale redesSociale = redesSocialesNego.ObtenerRedesSociale(globalIdUsuario);
            if (redesSociale.Facebook == null) { txtFacebook.Text = null; }
            else { txtFacebook.Text = redesSociale.Facebook; }
            if (redesSociale.Instagram == null) { txtInstagram.Text = null; }
            else { txtInstagram.Text = redesSociale.Instagram; }
            if (redesSociale.Twitter == null) { txtTwitter.Text = null; }
            else { txtTwitter.Text = redesSociale.Twitter; }
            if (redesSociale.Youtube == null) { txtYouTube.Text = null; }
            else { txtYouTube.Text = redesSociale.Youtube; }
            if (redesSociale.Flicker == null) { txtFlicker.Text = null; }
            else { txtFlicker.Text = redesSociale.Flicker; }
            if (redesSociale.MercadoLibre == true) { chkMercadoLibre.Checked = true; }
            else { chkMercadoLibre.Checked = false; }
            if (redesSociale.TiendaNube == true) { chkTiendaNube.Checked = true; }
            else { chkTiendaNube.Checked = false; }
            txtPlataformaComercializacionOtro.Text = redesSociale.PlataformaOtra;

            FormacionAcademica formacionAcademica = formacionAcademicaNego.ObtenerFormacionAcademica(globalIdUsuario);
            if (formacionAcademica.EstudiosOficiales == null) { RBEstudiosOficiales.SelectedValue = ""; }
            else if (formacionAcademica.EstudiosOficiales == "Secundario") { RBEstudiosOficiales.SelectedValue = "Secundario"; }
            else if (formacionAcademica.EstudiosOficiales == "Terciario") { RBEstudiosOficiales.SelectedValue = "Terciario"; }
            else if (formacionAcademica.EstudiosOficiales == "Universitario") { RBEstudiosOficiales.SelectedValue = "Universitario"; }
            else if (formacionAcademica.EstudiosOficiales == "Posgrado") { RBEstudiosOficiales.SelectedValue = "Posgrado"; }
            else if (formacionAcademica.EstudiosOficiales == "Otro") { RBEstudiosOficiales.SelectedValue = "Otro"; }
            if (formacionAcademica.EstudiosOficialesOtro == null) { txtEstudiosOficialesOtro.Text = ""; }
            else { txtEstudiosOficialesOtro.Text = formacionAcademica.EstudiosOficialesOtro; txtEstudiosOficialesOtro.Visible = true; }
            if (formacionAcademica.TituloObtenido == null) { txtTituloObtenido.Text = ""; }
            else { txtTituloObtenido.Text = formacionAcademica.TituloObtenido; }
            if (formacionAcademica.InstitucionEmisoraTitulo == null) { txtInstitucionEmisoraTitulo.Text = ""; }
            else { txtInstitucionEmisoraTitulo.Text = formacionAcademica.InstitucionEmisoraTitulo; }
            if (formacionAcademica.OtrosEstudios == null) { txtOtrosEstudios.Text = ""; }
            else { txtOtrosEstudios.Text = formacionAcademica.OtrosEstudios; }
            if (formacionAcademica.EsEstudiante == true) { chkEstudianteVinculado.Checked = true; PanelEstudianteVinculado.Visible = true; }
            else { chkEstudianteVinculado.Checked = false; PanelEstudianteVinculado.Visible = false; }

            txtCarreraNombre.Text = formacionAcademica.CarreraNombre;
            txtCarreraAnioIngreso.Text = formacionAcademica.CarreraAnioIngreso;
            txtCarreraAnioCursada.Text = formacionAcademica.CarreraAnioCursada;
            txtCarreraDuracion.Text = formacionAcademica.CarreraDuracion;
            txtCarreraInstitucion.Text = formacionAcademica.CarreraInstitucion;

            //PROXIMA: ACTIVIDAD PROFESIONAL




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

            if (RBEstudiosOficiales.SelectedValue != "Otro") { formacionAcademica.EstudiosOficialesOtro = null; }

            if (chkEstudianteVinculado.Checked == false)
            {
                formacionAcademica.CarreraNombre = null;
                formacionAcademica.CarreraAnioIngreso = null;
                formacionAcademica.CarreraAnioCursada = null;
                formacionAcademica.CarreraDuracion = null;
                formacionAcademica.CarreraInstitucion = null;
            }

            formacionAcademicaNego.ActualizarFormacionAcademica(formacionAcademica);

            Response.Redirect("EditarUsuario.aspx");
        }

        protected void RBEstudiosOficiales_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RBEstudiosOficiales.SelectedValue == "Otro") { txtEstudiosOficialesOtro.Visible = true; }
            else { txtEstudiosOficialesOtro.Visible = false; }
        }

        protected void chkEstudianteVinculado_CheckedChanged(object sender, EventArgs e)
        {
            PanelEstudianteVinculado.Visible = chkEstudianteVinculado.Checked;
            //if (chkEstudianteVinculado.Checked == true) { PanelEstudianteVinculado.Visible = true; }
            //if (chkEstudianteVinculado.Checked == false) { PanelEstudianteVinculado.Visible = false; }
        }



    }
}