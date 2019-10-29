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

        public string subsectores = "";
        public List<string> lista;

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

            if (actividad.DisciplinaProyectualOtra == "")
            {
                if (RBDisciplinaProyectual.SelectedValue != "")
                {
                    lblActividadProfesional.Text = "Actividad Profesional: " + RBDisciplinaProyectual.SelectedItem;
                }
                else
                {
                    lblActividadProfesional.Text = "";
                }
            }
            else if (actividad.DisciplinaProyectualOtra == null)
            {
                if (RBDisciplinaProyectual.SelectedValue != "")
                {
                    lblActividadProfesional.Text = "Actividad Profesional: " + RBDisciplinaProyectual.SelectedItem;
                }
                else
                {
                    lblActividadProfesional.Text = "";
                }
            }
            else { lblActividadProfesional.Text = "Actividad Profesional: " + actividad.DisciplinaProyectualOtra; }

            List<string> lista = new List<string>();

            if (actividad.SubSectorOtro == "") { }
            else if (actividad.SubSectorOtro == null) { }
            else { lista.Add(actividad.SubSectorOtro); }





            if (actividad.Cinematograficas == true) { lista.Add("Artes Cinematográficas"); }
            if (actividad.Audiovisuales == true) { lista.Add("Artes Audiovisuales"); }
            if (actividad.Escenicas == true) { lista.Add("Artes Escénicas"); }
            if (actividad.Musicales == true) { lista.Add("Artes Musicales y Sonoras"); }
            if (actividad.Literarias == true) { lista.Add("Artes Literarias, Narrativas y Producción Editorial"); }
            if (actividad.Plasticas == true) { lista.Add("Artes Plásticas y Visuales"); }
            if (actividad.Graficas == true) { lista.Add("Artes Gráficas e Ilustración"); }
            if (actividad.Digitales == true) { lista.Add("Artes Digitales"); }
            if (actividad.Accesorios == true) { lista.Add("Accesorios"); }
            if (actividad.Calzado == true) { lista.Add("Calzado"); }
            if (actividad.Ceramica == true) { lista.Add("Cerámica"); }
            if (actividad.DisenioEditorial == true) { lista.Add("Diseño Editorial"); }
            if (actividad.DisenioWeb == true) { lista.Add("Diseño WEB"); }
            if (actividad.Joyeria == true) { lista.Add("Joyería"); }
            if (actividad.Madera == true) { lista.Add("Madera"); }
            if (actividad.Mobiliario == true) { lista.Add("Mobiliario"); }
            if (actividad.Tejidos == true) { lista.Add("Tejidos"); }

            int cantidadElementos = lista.Count;

            //lblSubSectores.Text = Convert.ToString(cantidadElementos) + lista;


            if (cantidadElementos == 0)
            {
                subsectores = "";
            }
            else if (cantidadElementos == 1)
            {
                subsectores = lista[0];
            }
            else if (cantidadElementos > 1)
            {
                subsectores = lista[0];

                for (int i = 1; i < cantidadElementos; i++)
                {
                    subsectores = subsectores + ", " + lista[i];
                }
            }

            if (subsectores == "")
            {
                lblSubSectores.Text = "";
            }
            else if (cantidadElementos == 1)
            {
                lblSubSectores.Text = "Sub Sector: " + subsectores;
            }
            else
            {
                lblSubSectores.Text = "Sub Sectores: " + subsectores;
            }
        }
    }
}