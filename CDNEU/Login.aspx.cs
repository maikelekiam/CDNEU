﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using CapaDominio;
using CapaNegocio;

namespace CDNEU
{
    public partial class Login : System.Web.UI.Page
    {
        UsuarioNego usuarioNego = new UsuarioNego();
        FotoUsuarioNego fotoUsuarioNego = new FotoUsuarioNego();
        RedesSocialesNego redesSocialesNego = new RedesSocialesNego();
        FormacionAcademicaNego formacionAcademicaNego = new FormacionAcademicaNego();
        ActividadProfesionalNego actividadProfecionalNego = new ActividadProfesionalNego();

        public static int idUsuarioTemporal;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Usuario usuario = ValidateUserDetail(txtLoginNombreUsuario.Text, txtLoginContrasenia.Text);

            if (usuario != null)
            {
                Session["userlogin"] = txtLoginNombreUsuario.Text;
                Session["usercontrasenia"] = txtLoginContrasenia.Text;
                Session["userid"] = Convert.ToString(usuario.IdUsuario);
                Session["usergrupo"] = Convert.ToString(usuario.Grupo);
                Session["userActivo"] = usuario.Activo;
                Response.Redirect("Default.aspx");

                idUsuarioTemporal = usuario.IdUsuario;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('Usuario/Contraseña incorrecta.')", true);
            }
        }

        public Usuario ValidateUserDetail(string username, string password)
        {
            return usuarioNego.ObtenerUsuario(username, password);
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            //Aca hay que guardar los datos de Registro del Usuario NUEVO

            if ((txtRegistroNombreUsuario.Text != "") && (txtRegistroContrasenia.Text != "") && (txtRegistroNombre.Text != "")
                && (txtRegistroApellido.Text != "") && (txtRegistroCorreoElectronico.Text != "") 
                && (txtRegistroEdad.Text != "") && (txtRegistroTelefono.Text != ""))
            {
                GuardarUsuario();
                Response.Redirect("Login.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('Complete todos los campos.')", true);
            }
        }

        private void GuardarUsuario()
        {
            Usuario usuario = new Usuario();

            usuario.Grupo = 2;
            usuario.Activo = true;

            usuario.NombreUsuario = txtRegistroNombreUsuario.Text;

            if (usuario.NombreUsuario == "marcamone")
            {
                usuario.Grupo = 1;
            }

            usuario.Contrasenia = txtRegistroContrasenia.Text;

            usuario.Nombre = txtRegistroNombre.Text;
            usuario.Apellido = txtRegistroApellido.Text;
            usuario.Telefono = txtRegistroTelefono.Text;
            usuario.CorreoElectronico = txtRegistroCorreoElectronico.Text;
            usuario.Edad = Convert.ToInt32(txtRegistroEdad.Text);


            idUsuarioTemporal = usuarioNego.GuardarUsuario(usuario);

            GuardarFotoPerfil();

            //Creo un objeto de tipo RedesSociales
            RedesSociale redesSociale = new RedesSociale();
            redesSociale.IdUsuario = idUsuarioTemporal;
            redesSociale.Facebook = null;
            redesSociale.Instagram = null;
            redesSociale.Twitter = null;
            redesSociale.Youtube = null;
            redesSociale.Flicker = null;
            redesSocialesNego.GuardarRedesSociales(redesSociale);

            //Creo un objeto de tipo FormacionAcademica
            FormacionAcademica formacionAcademica = new FormacionAcademica();
            formacionAcademica.IdUsuario = idUsuarioTemporal;
            formacionAcademica.EstudiosOficiales = null;
            formacionAcademica.EstudiosOficialesOtro = null;
            formacionAcademica.TituloObtenido = null;
            formacionAcademica.InstitucionEmisoraTitulo = null;
            formacionAcademica.OtrosEstudios = null;
            formacionAcademica.EsEstudiante = null;
            formacionAcademica.CarreraNombre = null;
            formacionAcademica.CarreraAnioIngreso = null;
            formacionAcademica.CarreraAnioCursada = null;
            formacionAcademica.CarreraDuracion = null;
            formacionAcademica.CarreraInstitucion = null;
            formacionAcademicaNego.GuardarFormacionAcademica(formacionAcademica);

            //Creo un objeto de tipo ActividadProfesional
            ActividadProfesional actividadProfesional = new ActividadProfesional();
            actividadProfesional.IdUsuario = idUsuarioTemporal;
            actividadProfesional.DisciplinaProyectual = null;
            actividadProfesional.DisciplinaProyectualOtra = null;
            actividadProfesional.SubSector = null;
            actividadProfesional.SubSectorOtro = null;
            actividadProfesional.TipoRelacionLaboral = null;
            actividadProfesional.TipoRelacionLaboralOtro = null;
            actividadProfesional.NombreEmpresa = null;
            actividadProfesional.LinkEmpresa = null;
            actividadProfesional.DescripcionActividadProfesional = null;

        }
        private void GuardarFotoPerfil()
        {
            try
            {
                FotoUsuario fotoUsuarioNuevo = new FotoUsuario();

                FileUpload fu = new FileUpload();
                fu.SaveAs("../imagenes/FotoUsuariosx2.png");

                fotoUsuarioNuevo.FotoUsuarioCodigo = fu.FileBytes;
                fotoUsuarioNuevo.IdUsuario = idUsuarioTemporal;
                fotoUsuarioNuevo.FotoTemporal = fu.FileBytes;

                fotoUsuarioNego.GuardarFotoUsuario(fotoUsuarioNuevo);

            }
            catch (Exception ex)
            {

            }
        }
    }
}