using System;
using System.Web.UI;
using CapaDominio;
using CapaNegocio;

namespace CDNEU
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void repeter_DataBinding(object sender, EventArgs e)
        {
            if (sender != null)
            {
                lblMisProductos.Text = "Mi Galería de Imágenes";
            }
        }
    }
}