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
    public partial class MostrarUsuario : System.Web.UI.Page
    {
        UsuarioNego usuarioNego = new UsuarioNego();

        int idUsuarioTemporal = ListarUsuarios.idUsuarioParaEditar;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}