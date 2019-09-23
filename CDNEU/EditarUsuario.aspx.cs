﻿using System;
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
            txtDatosPersonalesNombre.Text = usuario.Nombre.ToString();
            txtDatosPersonalesApellido.Text = usuario.Apellido.ToString();
            txtDatosPersonalesCorreoElectronico.Text = usuario.CorreoElectronico.ToString();

            if (usuario.Telefono == null) { txtDatosPersonalesTelefono.Text = null; }
            else { txtDatosPersonalesTelefono.Text = usuario.Telefono.ToString(); }
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
            if (redesSociale.RedesSociales == true) { chkRedesSociales.Checked = true; }
            else { chkRedesSociales.Checked = false; }
            if (redesSociale.MercadoLibre == true) { chkMercadoLibre.Checked = true; }
            else { chkMercadoLibre.Checked = false; }
            if (redesSociale.SitioWeb == true) { chkSitioWeb.Checked = true; }
            else { chkSitioWeb.Checked = false; }
            if (redesSociale.TiendaNube == true) { chkTiendaNube.Checked = true; }
            else { chkTiendaNube.Checked = false; }
            if (redesSociale.Ferias == true) { chkFerias.Checked = true; }
            else { chkFerias.Checked = false; }
            if (redesSociale.LocalComercial == true) { chkLocalComercial.Checked = true; }
            else { chkLocalComercial.Checked = false; }
            if (redesSociale.Personal == true) { chkPersonal.Checked = true; }
            else { chkPersonal.Checked = false; }
            if (redesSociale.ShowRoom == true) { chkShowRoom.Checked = true; }
            else { chkShowRoom.Checked = false; }
            if (redesSociale.NoComercializa == true) { chkNoComercializa.Checked = true; }
            else { chkNoComercializa.Checked = false; }
            txtPlataformaComercializacionOtro.Text = redesSociale.PlataformaOtra;

            FormacionAcademica formacionAcademica = formacionAcademicaNego.ObtenerFormacionAcademica(globalIdUsuario);
            if (formacionAcademica.EstudiosOficiales == null) { RBEstudiosOficiales.SelectedValue = ""; }
            else if (formacionAcademica.EstudiosOficiales == "Secundario") { RBEstudiosOficiales.SelectedValue = "Secundario"; }
            else if (formacionAcademica.EstudiosOficiales == "Terciario") { RBEstudiosOficiales.SelectedValue = "Terciario"; }
            else if (formacionAcademica.EstudiosOficiales == "Universitario") { RBEstudiosOficiales.SelectedValue = "Universitario"; }
            else if (formacionAcademica.EstudiosOficiales == "Posgrado") { RBEstudiosOficiales.SelectedValue = "Posgrado"; }
            else if (formacionAcademica.EstudiosOficiales == "Otro") { RBEstudiosOficiales.SelectedValue = "Otro"; }
            if (formacionAcademica.EstudiosOficialesOtro == null) { txtEstudiosOficialesOtro.Text = ""; }
            else { txtEstudiosOficialesOtro.Text = formacionAcademica.EstudiosOficialesOtro; }
            if (formacionAcademica.TituloObtenido == null) { txtTituloObtenido.Text = ""; }
            else { txtTituloObtenido.Text = formacionAcademica.TituloObtenido; }
            if (formacionAcademica.InstitucionEmisoraTitulo == null) { txtInstitucionEmisoraTitulo.Text = ""; }
            else { txtInstitucionEmisoraTitulo.Text = formacionAcademica.InstitucionEmisoraTitulo; }
            if (formacionAcademica.OtrosEstudios == null) { txtOtrosEstudios.Text = ""; }
            else { txtOtrosEstudios.Text = formacionAcademica.OtrosEstudios; }
            if (formacionAcademica.EsEstudiante == true) { chkEstudianteVinculado.Checked = true; }
            else { chkEstudianteVinculado.Checked = false; }
            txtCarreraNombre.Text = formacionAcademica.CarreraNombre;
            txtCarreraAnioIngreso.Text = formacionAcademica.CarreraAnioIngreso;
            txtCarreraAnioCursada.Text = formacionAcademica.CarreraAnioCursada;
            txtCarreraDuracion.Text = formacionAcademica.CarreraDuracion;
            txtCarreraInstitucion.Text = formacionAcademica.CarreraInstitucion;

            //ACTIVIDAD PROFESIONAL
            ActividadProfesional actividadProfesional = actividadProfesionalNego.ObtenerActividadProfesional(globalIdUsuario);
            if (actividadProfesional.DisciplinaProyectual == null) { RBDisciplinaProyectual.SelectedValue = ""; }
            else if (actividadProfesional.DisciplinaProyectual == "1") { RBDisciplinaProyectual.SelectedValue = "1"; }
            else if (actividadProfesional.DisciplinaProyectual == "2") { RBDisciplinaProyectual.SelectedValue = "2"; }
            else if (actividadProfesional.DisciplinaProyectual == "3") { RBDisciplinaProyectual.SelectedValue = "3"; }
            else if (actividadProfesional.DisciplinaProyectual == "4") { RBDisciplinaProyectual.SelectedValue = "4"; }
            else if (actividadProfesional.DisciplinaProyectual == "5") { RBDisciplinaProyectual.SelectedValue = "5"; }
            else if (actividadProfesional.DisciplinaProyectual == "6") { RBDisciplinaProyectual.SelectedValue = "6"; }
            else if (actividadProfesional.DisciplinaProyectual == "7") { RBDisciplinaProyectual.SelectedValue = "7"; }
            else if (actividadProfesional.DisciplinaProyectual == "8") { RBDisciplinaProyectual.SelectedValue = "8"; }
            else if (actividadProfesional.DisciplinaProyectual == "9") { RBDisciplinaProyectual.SelectedValue = "9"; }
            txtDisciplinaProyectualOtra.Text = actividadProfesional.DisciplinaProyectualOtra;
            if (actividadProfesional.Accesorios == true) { chkAPAccesorios.Checked = true; }
            else { chkAPAccesorios.Checked = false; }
            if (actividadProfesional.Calzado == true) { chkAPCalzado.Checked = true; }
            else { chkAPCalzado.Checked = false; }
            if (actividadProfesional.Ceramica == true) { chkAPCeramica.Checked = true; }
            else { chkAPCeramica.Checked = false; }
            if (actividadProfesional.DisenioEditorial == true) { chkAPDisenioEditorial.Checked = true; }
            else { chkAPDisenioEditorial.Checked = false; }
            if (actividadProfesional.DisenioWeb == true) { chkAPDisenioWeb.Checked = true; }
            else { chkAPDisenioWeb.Checked = false; }
            if (actividadProfesional.Joyeria == true) { chkAPJoyeria.Checked = true; }
            else { chkAPJoyeria.Checked = false; }
            if (actividadProfesional.Madera == true) { chkAPMadera.Checked = true; }
            else { chkAPMadera.Checked = false; }
            if (actividadProfesional.Mobiliario == true) { chkAPMobiliario.Checked = true; }
            else { chkAPMobiliario.Checked = false; }
            if (actividadProfesional.Tejidos == true) { chkAPTejidos.Checked = true; }
            else { chkAPTejidos.Checked = false; }
            txtSubSectorOtro.Text = actividadProfesional.SubSectorOtro;
            if (actividadProfesional.TipoRelacionLaboral == null) { RBTipoRelacionLaboral.SelectedValue = ""; }
            else if (actividadProfesional.TipoRelacionLaboral == "1") { RBTipoRelacionLaboral.SelectedValue = "1"; }
            else if (actividadProfesional.TipoRelacionLaboral == "2") { RBTipoRelacionLaboral.SelectedValue = "2"; }
            else if (actividadProfesional.TipoRelacionLaboral == "3") { RBTipoRelacionLaboral.SelectedValue = "3"; }
            else if (actividadProfesional.TipoRelacionLaboral == "4") { RBTipoRelacionLaboral.SelectedValue = "4"; }
            else if (actividadProfesional.TipoRelacionLaboral == "5") { RBTipoRelacionLaboral.SelectedValue = "5"; }
            else if (actividadProfesional.TipoRelacionLaboral == "6") { RBTipoRelacionLaboral.SelectedValue = "6"; }
            txtTipoRelacionLaboralOtro.Text = actividadProfesional.TipoRelacionLaboralOtro;
            txtNombreEmpresa.Text = actividadProfesional.NombreEmpresaAP;
            txtLinkEmpresa.Text = actividadProfesional.LinkEmpresaAP;
            txtDescripcion.Text = actividadProfesional.DescripcionAP;

            //PROXIMA: ACTIVIDAD INDEPENDIENTE





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
            actividadProfesionalNego.ActualizarActividadProfesional(actividadProfesional);
            Response.Redirect("EditarUsuario.aspx");
        }





    }
}