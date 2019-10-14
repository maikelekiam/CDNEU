using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDominio;
using CapaNegocio;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Configuration;

namespace CDNEU
{
    public partial class ListaFotoProducto : System.Web.UI.Page
    {
        FotoProductoNego fotoProductoNego = new FotoProductoNego();

        int idUsuarioTemporal;
        int globalIdUsuario;
        string[] validFileTypes = { ".bmp", ".gif", ".png", ".jpg", ".jpeg" };

        string archivoExtension;
        string archivoNombre;
        int idFotoProductoTemporal;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            lblMensaje.Text = "";
            txtNuevaFotoProductoDescripcion.Text = "";
            txtNuevaFotoProductoNombre.Text = "";
            CargarGrilla();

            globalIdUsuario = Convert.ToInt32(Session["userid"].ToString());
            idUsuarioTemporal = Convert.ToInt32(Session["userid"].ToString());
        }

        private void CargarGrilla()
        {
            //dgFotoProducto.DataSource = fotoProductoNego.MostrarFotoProductos(idUsuarioTemporal);
            dgFotoProducto.DataSourceID = "SqlDataSource1";
            dgFotoProducto.DataBind();
            //DataKeyNames="idFotoProducto" DataSourceID="SqlDataSource1"
        }

        protected void btnGuardarNuevaFotoProducto_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            GuardarNuevaFotoProducto();
        }

        protected void btnMostrarFotoTemporal_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            MostrarFotoTemporal();
        }

        private void MostrarFotoTemporal()
        {
            //FALTA DESARROLLAR hay que fijarse del fotoperfil



        }
        private void GuardarNuevaFotoProducto()
        {
            //idUsuarioTemporal = Convert.ToInt32(Session["userid"].ToString());
            //string folderPath = Server.MapPath("~/imagenes/");

            if (fuploadNuevaFotoProducto.HasFile)
            {
                archivoExtension = System.IO.Path.GetExtension(fuploadNuevaFotoProducto.PostedFile.FileName).ToLower();
                bool isValidFile = false;

                // Validar extension de archivo cargado sea tipo imagen  
                for (int i = 0; i < validFileTypes.Length; i++)
                {
                    if (archivoExtension == validFileTypes[i])
                    {
                        isValidFile = true;
                        break;
                    }
                }
                // En caso de no tener una extension permitida
                if (!isValidFile)
                {
                    lblMensaje.Visible = true;
                    lblMensaje.ForeColor = System.Drawing.Color.Red;
                    lblMensaje.Text = "Formato de Archivo no reconocido.";
                }
                else
                {
                    lblMensaje.Visible = true;
                    lblMensaje.ForeColor = System.Drawing.Color.Green;
                    lblMensaje.Text = "Archivo cargado exitosamente.";
                }
                // metodo que guarda la imagen en una carpeta y luego en la base de datos
                GuardarArchivoEnBaseDeDatos(fuploadNuevaFotoProducto.PostedFile);
                //GuardarArchivoEnCarpeta(fuploadNuevaFotoProducto.PostedFile);
            }
            else
            {
                lblMensaje.Visible = true;
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "No se ha cargado ningun archivo !!!";
            }
        }

        private void GuardarArchivoEnBaseDeDatos(HttpPostedFile imagen)
        {
            idUsuarioTemporal = Convert.ToInt32(Session["userid"].ToString());
            //Byte[] bytes = null;

            // obtiene el nombre del archivo cargado por ej: pablo.docx - pablo.pdf - pablo.bmp
            //string filename = imagen.FileName;

            // obtiene a extension del archivo .png .jpg .bmp
            //string ext = Path.GetExtension(imagen).ToLower();
            archivoExtension = Path.GetExtension(imagen.FileName).ToLower();

            FotoProducto fotoProducto = new FotoProducto();

            fotoProducto.IdUsuario = idUsuarioTemporal;
            fotoProducto.NombreFotoProducto = txtNuevaFotoProductoNombre.Text;
            fotoProducto.DescripcionFotoProducto = txtNuevaFotoProductoDescripcion.Text;
            fotoProducto.ExtensionFotoProducto = archivoExtension;
            fotoProducto.TipoContenidoFotoProducto = imagen.ContentType.ToString().ToLower();
            fotoProducto.TamanioFotoProducto = imagen.ContentLength;
            fotoProducto.RutaFotoProducto = "US";
            idFotoProductoTemporal = fotoProductoNego.GuardarFotoProducto(fotoProducto);

            fotoProducto = new FotoProducto();
            fotoProducto.IdFotoProducto = idFotoProductoTemporal;
            fotoProducto.IdUsuario = idUsuarioTemporal;
            fotoProducto.NombreFotoProducto = txtNuevaFotoProductoNombre.Text;
            fotoProducto.DescripcionFotoProducto = txtNuevaFotoProductoDescripcion.Text;
            fotoProducto.ExtensionFotoProducto = archivoExtension;
            fotoProducto.TipoContenidoFotoProducto = imagen.ContentType.ToString().ToLower();
            fotoProducto.TamanioFotoProducto = imagen.ContentLength;
            fotoProducto.RutaFotoProducto = "US" + Convert.ToString(idUsuarioTemporal) + "IM" + Convert.ToString(idFotoProductoTemporal) + archivoExtension;

            fotoProductoNego.ActualizarFotoProducto(fotoProducto);

            string ruta = Server.MapPath("~/imagenes_productos/");

            //hay que calcular el nombre del archivo y su extension
            archivoNombre = "US" + Convert.ToString(idUsuarioTemporal) + "IM" + Convert.ToString(idFotoProductoTemporal) + archivoExtension;

            string fullPath = Path.Combine(Server.MapPath("~/imagenes_productos/"), archivoNombre);
            imagen.SaveAs(fullPath);


            CargarGrilla();

            // obtiene la longitud del archivo cargado
            ////int img_len = imagen.ContentLength;

            // obtiene a extension del archivo .png .jpg .bmp
            //string ext = Path.GetExtension(filename).ToLower();
            //string ext1 = Path.GetExtension(imagen.FileName).ToLower();

            //obtiene el tipo de archivo cargado, es diferente a la extension, por ej: image/png - text/html - text/plain - application/pdf  
            //string contenttype = String.Empty;



            //try
            //{
            //    //FotoProducto fotoProducto = new FotoProducto();

            //    //fotoProducto.IdUsuario = idUsuarioTemporal;
            //    //fotoProducto.NombreFotoProducto = txtNuevaFotoProductoNombre.Text;
            //    //fotoProducto.DescripcionFotoProducto = txtNuevaFotoProductoDescripcion.Text;

            //    //fotoProducto.ExtensionFotoProducto = ext;
            //    //fotoProducto.TipoContenidoFotoProducto = ext1;
            //    //fotoProducto.TamanioFotoProducto = 0;
            //    //fotoProducto.RutaFotoProducto = "US"+Convert.ToString(idUsuarioTemporal)+


            //    //fotoProductoNego.GuardarFotoProducto(fotoProducto);

            //    //fuploadNuevaFotoProducto.SaveAs(folderPath + "foto_guardada.jpg");

            //    //lblMensaje.Text = "La foto se guardó correctamente.";

            //    CargarGrilla();
            //}
            //catch (Exception ex)
            //{
            //    lblMensaje.Text = ex.Message;
            //}
        }














        private void GuardarArchivoEnCarpeta(HttpPostedFile file)
        {
            string ruta = Server.MapPath("~/imagenes_productos/");

            //hay que calcular el nombre del archivo y su extension
            string nombreArchivoNuevo = "US0001IM000001";

            string fullPath = Path.Combine(Server.MapPath("~/imagenes_productos/"), nombreArchivoNuevo);
            file.SaveAs(fullPath);



            lblMensaje.Visible = true;
            lblMensaje.ForeColor = System.Drawing.Color.BlueViolet;
            lblMensaje.Text = "PRUEBA OK : " + fullPath.ToString().ToLower();

            //string fullPath = Path.Combine(Server.MapPath("~/imagenes/"), file.FileName);


            //Obtengo el nombre del archivo enviado




            //Verificar que el archivo no exista
            //if (File.Exists(fullPath))
            //{
            //    lblMensaje.ForeColor = System.Drawing.Color.Red;
            //    lblMensaje.Text = "ya existe el archivo " + file.FileName;
            //    // en caso quisiera eliminar utilizaria esta linea de codigo
            //    // if (File.Exists(archivo)) File.Delete(archivo);
            //}
            //else
            //{
            //    file.SaveAs(fullPath);
            //    lblMensaje.ForeColor = System.Drawing.Color.Blue;
            //    lblMensaje.Text = "se guardo el archivo " + file.FileName;
            //}

        }

        


    }
}


