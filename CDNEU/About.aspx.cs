using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDominio;
using CapaNegocio;

namespace CDNEU
{
    public partial class About : Page
    {
        FotoUsuarioNego fotoUsuarioNego = new FotoUsuarioNego();
        UsuarioNego usuarioNego = new UsuarioNego();
        ActividadProfesionalNego actividadProfesionalNego = new ActividadProfesionalNego();



        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            txtId.Text = Session["userid"].ToString();
            Ver();
            MostrarDatos();
        }
        protected void repeter_DataBinding(object sender, EventArgs e)
        {
            if (sender != null)
            {
                lblMisProductos.Text = "Mi Galería de Imágenes";
            }
        }
        private void Ver()
        {
            imgURL.ImageUrl = "~/MostrarFotoPerfil.aspx?idUsuario=" + txtId.Text;
        }
        public void MostrarDatos()
        {
            Usuario usuario = usuarioNego.MostrarUsuarios().Where(c => c.IdUsuario == Convert.ToInt32(Session["userid"].ToString())).FirstOrDefault();
            lblNombreApellido.Text = usuario.Nombre + " " + usuario.Apellido;
            lblCorreoTelefono.Text = usuario.CorreoElectronico + " / " + usuario.Telefono;
            lugar.InnerText = usuario.Localidad + " - " + usuario.Provincia;



            ActividadProfesional actividad = actividadProfesionalNego.ObtenerActividadProfesional(Convert.ToInt32(Session["userid"].ToString()));

            RBDisciplinaProyectual.SelectedValue = actividad.DisciplinaProyectual;

            if (RBDisciplinaProyectual.SelectedValue != "")
            {
                lblActividadProfesional.Text = "Disciplina Proyectual: " + RBDisciplinaProyectual.SelectedItem;
            }
            else
            {
                lblActividadProfesional.Text = "Disciplina Proyectual: ";
            }







        }
    }
}