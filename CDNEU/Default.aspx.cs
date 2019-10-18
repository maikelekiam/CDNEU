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
            CargarDatos();
        }
        private void CargarDatos()
        {
            //repeter.DataSourceID = "SqlDataSource1";
            //repeter.DataBind();
        }
    }
}