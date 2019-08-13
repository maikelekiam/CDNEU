using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDominio;
using CapaNegocio;
using System.IO;

namespace CDNEU
{
    public partial class AltaUsuario : System.Web.UI.Page
    {
        UsuarioNego usuarioNego = new UsuarioNego();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
        }
        //protected void btnGuardar_Click(object sender, EventArgs e)
        //{
        //    if ((txtNombreUsuario.Text != "")
        //        && (txtContrasenia.Text != "")
        //        && (txtCorreoElectronico.Text != "")
        //        && (txtGrupo.Text != "")
        //        )
        //    {
        //        GuardarUsuario();
        //        Response.Redirect("Default.aspx");
        //    }
        //    else
        //    {
        //        Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('Complete todos los campos.')", true);
        //    }
        //}
        //private void GuardarUsuario()
        //{
        //    Usuario usuarioControl = usuarioNego.ControlarDuplicadoUsuario(txtNombreUsuario.Text);

        //    if (usuarioControl == null)
        //    {
        //        Usuario usuario = new Usuario();

        //        usuario.Grupo = Convert.ToInt32(txtGrupo.Text);

        //        if (chkActivo.Checked) { usuario.Activo = true; }
        //        else if (!chkActivo.Checked) { usuario.Activo = false; }

        //        usuario.NombreUsuario = txtNombreUsuario.Text;
        //        usuario.Contrasenia = txtContrasenia.Text;

        //        usuario.Nombre = txtNombre.Text;
        //        usuario.Apellido = txtApellido.Text;

        //        usuario.Telefono = txtTelefono.Text;
        //        usuario.CorreoElectronico = txtCorreoElectronico.Text;
        //        usuario.Domicilio = txtDomicilio.Text;
        //        usuario.Edad = Convert.ToInt32(txtEdad.Text);

        //        //usuario.Observaciones = txtObservaciones.Text;
        //        //usuario.TipoDocumento = ddlTipoDocumento.SelectedValue.ToString();
        //        //usuario.Documento = txtDocumento.Text;

        //        //if (ddlLocalidad.SelectedValue != "-1")
        //        //{
        //        //    persona.Localidad = localidadNego.TraerLocalidadIdSegunItem(ddlLocalidad.SelectedItem.ToString());
        //        //}

        //        usuarioNego.GuardarUsuario(usuario);
        //    }
        //    else
        //    {
        //        Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('El Nombre de Usuario ya existe. Ingrese otro.')", true);
        //    }
        //}
        //private void ActualizarUsuario()
        //{
        //    //FALTA DESARROLLAR

        //}





    }
}