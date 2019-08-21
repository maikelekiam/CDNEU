using System;
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
        public static int idUsuarioTemporal;
        protected void Page_Load(object sender, EventArgs e)
        {
            MostrarFoto();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Usuario usuario = ValidateUserDetail(txtLoginNombreUsuario.Text, txtLoginContrasenia.Text);

            if (usuario != null)
            {
                Session["userlogin"] = txtLoginNombreUsuario.Text;

                Session["userid"] = Convert.ToString(usuario.IdUsuario);

                Session["usergrupo"] = Convert.ToString(usuario.Grupo);

                Session["userCorreoElectronico"] = Convert.ToString(usuario.CorreoElectronico);

                //Session["usertelefono"] = txtTelefonoid.Text;

                Response.Redirect("Default.aspx");
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
                && (txtRegistroApellido.Text != "") && (txtRegistroCorreoElectronico.Text != "") && (txtRegistroDomicilio.Text != "")
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
            usuario.Contrasenia = txtRegistroContrasenia.Text;

            usuario.Nombre = txtRegistroNombre.Text;
            usuario.Apellido = txtRegistroApellido.Text;

            usuario.Telefono = txtRegistroTelefono.Text;
            usuario.CorreoElectronico = txtRegistroCorreoElectronico.Text;
            usuario.Domicilio = txtRegistroDomicilio.Text;
            usuario.Edad = Convert.ToInt32(txtRegistroEdad.Text);

            //usuario.Observaciones = txtObservaciones.Text;
            //usuario.TipoDocumento = ddlTipoDocumento.SelectedValue.ToString();
            //usuario.Documento = txtDocumento.Text;

            //if (ddlLocalidad.SelectedValue != "-1")
            //{
            //    persona.Localidad = localidadNego.TraerLocalidadIdSegunItem(ddlLocalidad.SelectedItem.ToString());
            //}

            idUsuarioTemporal = usuarioNego.GuardarUsuario(usuario);

            GuardarFotoPerfil();
        }
        private void GuardarFotoPerfil()
        {
            try
            {
                SqlConnection conectar = new ConectarSQLServer().conectarSQL();

                String comandoInsertar = "INSERT INTO FotoUsuario(fotoUsuarioCodigo, idUsuario) VALUES(@fotoUsuarioCodigo, @idUsuario)";
                SqlCommand comando = new SqlCommand(comandoInsertar, conectar);

                FileUpload fu = new FileUpload();
                fu.SaveAs("../imagenes/FotoUsuariosx2.png");

                comando.Parameters.Add("@fotoUsuarioCodigo", SqlDbType.VarBinary).Value = fu.FileBytes;
                comando.Parameters.Add("@idUsuario", SqlDbType.Int).Value = idUsuarioTemporal; //Session["userid"].ToString();
                comando.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }
        }

        private void MostrarFoto()
        {
            Image img = (Image)FindControl("setincode");
            img.ImageUrl = "../imagenes/FotoUsuariosx2.png";

            //FileUpload fu = new FileUpload();
            //fu.SaveAs("../imagenes/FotoUsuariosx2.png");
        }

    }
}