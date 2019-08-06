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
    public partial class AltaPersona : System.Web.UI.Page
    {
        PersonaNego personaNego = new PersonaNego();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

        }

        protected void btnGuardarPersona_Click(object sender, EventArgs e)
        {
            if ((txtNombre.Text != "") && (txtApellido.Text != ""))
            {
                GuardarPersona();
                Response.Redirect("ListarPersonas.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('Complete los campos: NOMBRE y APELLIDO.')", true);
            }
        }
        private void GuardarPersona()
        {
            Persona persona = new Persona();

            persona.Nombre = txtNombre.Text;
            persona.Apellido = txtApellido.Text;
            //persona.TipoDocumento = ddlTipoDocumento.SelectedValue.ToString();
            //persona.Documento = txtDocumento.Text;
            //persona.Telefono = txtTelefono.Text;
            persona.CorreoElectronico = txtCorreoElectronico.Text;
            persona.Domicilio = txtDomicilio.Text;
            persona.Observaciones = txtObservaciones.Text;
            persona.Edad = Convert.ToInt32(txtEdad.Text);

            //if (ddlLocalidad.SelectedValue != "-1")
            //{
            //    persona.Localidad = localidadNego.TraerLocalidadIdSegunItem(ddlLocalidad.SelectedItem.ToString());
            //}

            personaNego.GuardarPersona(persona);
        }


        





    }
}