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
    public partial class EditarFotoProducto : System.Web.UI.Page
    {
        FotoProductoNego fotoProductoNego = new FotoProductoNego();

        int idFotoProductoTemporal = ListaFotoProducto.idFotoProductoParaEditar;
        int idUsuarioTemporal;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            txtDescripcion.Attributes.Add("maxlength", "80");
            txtNombre.Attributes.Add("maxlength", "50");

            MostrarFotoProducto();

        }

        public void MostrarFotoProducto()
        {
            FotoProducto fp = fotoProductoNego.MostrarFotoProducto(idFotoProductoTemporal);

            string ruta = fp.RutaFotoProducto;

            imgURL.ImageUrl = "~/imagenes_productos/" + ruta;

            txtNombre.Text = fp.NombreFotoProducto;
            txtDescripcion.Text = fp.DescripcionFotoProducto;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            FotoProducto fp = fotoProductoNego.MostrarFotoProducto(idFotoProductoTemporal);
            FotoProducto fotoProducto = new FotoProducto();

            fotoProducto.IdFotoProducto = idFotoProductoTemporal;
            fotoProducto.IdUsuario = fp.IdUsuario;
            fotoProducto.NombreFotoProducto = fp.NombreFotoProducto;
            fotoProducto.DescripcionFotoProducto = fp.DescripcionFotoProducto;
            fotoProducto.ExtensionFotoProducto = fp.ExtensionFotoProducto;
            fotoProducto.TipoContenidoFotoProducto = fp.TipoContenidoFotoProducto;
            fotoProducto.TamanioFotoProducto = fp.TamanioFotoProducto;
            fotoProducto.RutaFotoProducto = fp.RutaFotoProducto;

            fotoProductoNego.EliminarFotoProducto(fotoProducto);

            Response.Redirect("ListaFotoProducto.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            FotoProducto fp = fotoProductoNego.MostrarFotoProducto(idFotoProductoTemporal);
            FotoProducto fotoProducto = new FotoProducto();

            fotoProducto.IdFotoProducto = idFotoProductoTemporal;
            fotoProducto.IdUsuario = fp.IdUsuario;
            fotoProducto.NombreFotoProducto = txtNombre.Text;
            fotoProducto.DescripcionFotoProducto = txtDescripcion.Text;
            fotoProducto.ExtensionFotoProducto = fp.ExtensionFotoProducto;
            fotoProducto.TipoContenidoFotoProducto = fp.TipoContenidoFotoProducto;
            fotoProducto.TamanioFotoProducto = fp.TamanioFotoProducto;
            fotoProducto.RutaFotoProducto = fp.RutaFotoProducto;

            fotoProductoNego.ActualizarFotoProducto(fotoProducto);

            Response.Redirect("ListaFotoProducto.aspx");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaFotoProducto.aspx");
        }
    }
}