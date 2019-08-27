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
            if ((txtDatosPersonalesNombre.Text != "")
                && (txtDatosPersonalesApellido.Text != "")
                && (txtDatosPersonalesCorreoElectronico.Text != "")


                )
            {
                ActualizarDatosPersonales();
                //Response.Redirect("ListarPersonas.aspx");
            }
        }
        private void ActualizarDatosPersonales()
        {
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



            RedesSociale redesSociale = new RedesSociale();

            //Aca hay que averiguar cual es este IdRedes...
            redesSociale.IdRedesSociales=redesSocialesNego.ObtenerRedesSocialeSegunIdUsuario(globalIdUsuario);

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
        }
    }
}