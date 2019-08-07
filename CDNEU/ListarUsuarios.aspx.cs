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
    public partial class ListarUsuarios : System.Web.UI.Page
    {
        UsuarioNego usuarioNego = new UsuarioNego();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if ((string)Session["usergrupo"].ToString() == "1")
                {
                    PanelListar.Visible = true;
                }
                else
                {
                    PanelListar.Visible = false;
                }

                MostrarGrillaUsuarios();
            }
        }
        public void MostrarGrillaUsuarios()
        {
            dgvUsuario.DataSource = usuarioNego.MostrarUsuarios().ToList().OrderBy(c => c.NombreUsuario);
            dgvUsuario.DataBind();
        }
    }
}