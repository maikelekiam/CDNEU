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

namespace CDNEU
{
    public partial class ListaFotoProducto : System.Web.UI.Page
    {
        FotoProductoNego fotoProductoNego = new FotoProductoNego();

        public static Byte[] bait;

        int idUsuarioTemporal;
        int globalIdUsuario;

        string[] validFileTypes = { ".bmp", ".gif", ".png", ".jpg", ".jpeg" };
        public static string archivoExtension;
        public static string archivoTipoContenido;
        public static int archivoTamanio;
        string archivoNombre;
        int idFotoProductoTemporal;
        public static int idFotoProductoParaEditar;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //txtNuevaFotoProductoDescripcion.Text = "";
                //txtNuevaFotoProductoNombre.Text = "";
                return;
            }

            txtNuevaFotoProductoNombre.Attributes.Add("maxlength", "50");
            txtNuevaFotoProductoDescripcion.Attributes.Add("maxlength", "80");

            panelFU.Visible = true;
            panelEditarFoto.Visible = false;
            panelNombreDescripcion.Visible = false;
            imgTemporal.Visible = false;
            btnGuardarNuevaFotoProducto.Visible = false;

            lblMensaje.Text = "";
            txtNuevaFotoProductoDescripcion.Text = "";
            txtNuevaFotoProductoNombre.Text = "";

            CargarGrilla();

            globalIdUsuario = Convert.ToInt32(Session["userid"].ToString());
            idUsuarioTemporal = Convert.ToInt32(Session["userid"].ToString());
        }

        private void CargarGrilla()
        {
            dgFotoProducto.DataSourceID = "SqlDataSource1";
            dgFotoProducto.DataBind();
        }

        protected void btnMostrarFotoTemporal_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            MostrarFotoTemporal();
        }

        private void MostrarFotoTemporal()
        {
            if (fuploadNuevaFotoProducto.HasFile)
            {
                //imgTemporal.Visible = true;
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
                    lblMensaje.Text = "Imagen cargada con éxito.";

                    // metodo que guarda la imagen en una carpeta y luego en la base de datos
                    //GuardarArchivoEnBaseDeDatos(fuploadNuevaFotoProducto.PostedFile); ************************SIRVE!!!!



                    //GuardarArchivoEnCarpeta(fuploadNuevaFotoProducto.PostedFile);

                    panelFU.Visible = false;
                    panelNombreDescripcion.Visible = true;
                    panelEditarFoto.Visible = true;
                    imgTemporal.Visible = true;
                    btnGuardarNuevaFotoProducto.Visible = true;
                    btnMostrarFotoTemporal.Visible = false;

                    bait = fuploadNuevaFotoProducto.FileBytes;

                    archivoTamanio = fuploadNuevaFotoProducto.PostedFile.ContentLength;
                    archivoTipoContenido = fuploadNuevaFotoProducto.PostedFile.ContentType.ToLower();

                    //archivoExtension = System.IO.Path.GetExtension(fuploadNuevaFotoProducto.PostedFile.FileName).ToLower();
                    string path = "~/imagenes_productos/" + Session["userid"].ToString() + "temporal" + archivoExtension;

                    fuploadNuevaFotoProducto.SaveAs(MapPath(path));
                    imgTemporal.ImageUrl = path;
                }
            }
            else
            {
                lblMensaje.Visible = true;
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "No se ha cargado ningun archivo !!!";
            }
        }

        protected void btnGuardarNuevaFotoProducto_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            GuardarNuevaFotoProducto();

            //imgTemporal.Visible = false;
        }

        private void GuardarNuevaFotoProducto()
        {
            if (bait != null)
            {
                byte[] b1 = bait;

                System.Drawing.Image imagen = byteArrayToImage(b1);

                idUsuarioTemporal = Convert.ToInt32(Session["userid"].ToString());



                FotoProducto fotoProducto = new FotoProducto();

                fotoProducto.IdUsuario = idUsuarioTemporal;
                fotoProducto.NombreFotoProducto = txtNuevaFotoProductoNombre.Text;
                fotoProducto.DescripcionFotoProducto = txtNuevaFotoProductoDescripcion.Text;
                fotoProducto.ExtensionFotoProducto = archivoExtension;
                fotoProducto.TipoContenidoFotoProducto = archivoTipoContenido;
                fotoProducto.TamanioFotoProducto = archivoTamanio;
                fotoProducto.RutaFotoProducto = "US";
                idFotoProductoTemporal = fotoProductoNego.GuardarFotoProducto(fotoProducto);

                fotoProducto = new FotoProducto();
                fotoProducto.IdFotoProducto = idFotoProductoTemporal;
                fotoProducto.IdUsuario = idUsuarioTemporal;
                fotoProducto.NombreFotoProducto = txtNuevaFotoProductoNombre.Text;
                fotoProducto.DescripcionFotoProducto = txtNuevaFotoProductoDescripcion.Text;
                fotoProducto.ExtensionFotoProducto = archivoExtension;
                fotoProducto.TipoContenidoFotoProducto = archivoTipoContenido;
                fotoProducto.TamanioFotoProducto = archivoTamanio;
                fotoProducto.RutaFotoProducto = "US" + Convert.ToString(idUsuarioTemporal) + "IM" + Convert.ToString(idFotoProductoTemporal) + archivoExtension;

                fotoProductoNego.ActualizarFotoProducto(fotoProducto);


                string ruta = Server.MapPath("~/imagenes_productos/");

                //hay que calcular el nombre del archivo y su extension
                archivoNombre = "US" + Convert.ToString(idUsuarioTemporal) + "IM" + Convert.ToString(idFotoProductoTemporal) + archivoExtension;

                string fullPath = Path.Combine(Server.MapPath("~/imagenes_productos/"), archivoNombre);
                imagen.Save(fullPath);


                CargarGrilla();

                panelFU.Visible = true;
                panelNombreDescripcion.Visible = false;
                panelEditarFoto.Visible = false;
                imgTemporal.Visible = false;
                btnGuardarNuevaFotoProducto.Visible = false;
                btnMostrarFotoTemporal.Visible = true;

            }
            else
            {
                lblMensaje.Text = "Archivo NULO";
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

        //private void GuardarArchivoEnCarpeta(HttpPostedFile file)
        //{
        //    string ruta = Server.MapPath("~/imagenes_productos/");

        //    //hay que calcular el nombre del archivo y su extension
        //    string nombreArchivoNuevo = "US0001IM000001";

        //    string fullPath = Path.Combine(Server.MapPath("~/imagenes_productos/"), nombreArchivoNuevo);
        //    file.SaveAs(fullPath);



        //    lblMensaje.Visible = true;
        //    lblMensaje.ForeColor = System.Drawing.Color.BlueViolet;
        //    lblMensaje.Text = "PRUEBA OK : " + fullPath.ToString().ToLower();

        //    //string fullPath = Path.Combine(Server.MapPath("~/imagenes/"), file.FileName);


        //    //Obtengo el nombre del archivo enviado




        //    //Verificar que el archivo no exista
        //    //if (File.Exists(fullPath))
        //    //{
        //    //    lblMensaje.ForeColor = System.Drawing.Color.Red;
        //    //    lblMensaje.Text = "ya existe el archivo " + file.FileName;
        //    //    // en caso quisiera eliminar utilizaria esta linea de codigo
        //    //    // if (File.Exists(archivo)) File.Delete(archivo);
        //    //}
        //    //else
        //    //{
        //    //    file.SaveAs(fullPath);
        //    //    lblMensaje.ForeColor = System.Drawing.Color.Blue;
        //    //    lblMensaje.Text = "se guardo el archivo " + file.FileName;
        //    //}

        //}

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            idFotoProductoParaEditar = Convert.ToInt32(e.CommandArgument);
            lblMensaje.Text = e.CommandArgument.ToString();
            Response.Redirect("EditarFotoProducto.aspx");
        }

        protected void btnRotarIzquierda_Click(object sender, EventArgs e)
        {
            if (bait != null)
            {
                byte[] b1 = bait;

                System.Drawing.Image imagen01 = byteArrayToImage(b1);

                imagen01.RotateFlip(RotateFlipType.Rotate270FlipNone);

                bait = imageToByteArray(imagen01);

                //1ro Actualizo la foto temporal que ya esta guardada
                GuardarFotoRotadaTemporal(imagen01);

                //2do Muestro la foto rotada
                imgTemporal.ImageUrl = "~/imagenes_productos/" + Session["userid"].ToString() + "temporal" + archivoExtension;

                lblMensaje.Text = "Giro 90° hacia la izquierda.";
            }
        }

        protected void btnRotar180_Click(object sender, EventArgs e)
        {
            if (bait != null)
            {
                byte[] b1 = bait;

                System.Drawing.Image imagen01 = byteArrayToImage(b1);

                imagen01.RotateFlip(RotateFlipType.Rotate180FlipNone);

                bait = imageToByteArray(imagen01);

                //1ro Actualizo la foto temporal que ya esta guardada
                GuardarFotoRotadaTemporal(imagen01);

                //2do Muestro la foto rotada
                imgTemporal.ImageUrl = "~/imagenes_productos/" + Session["userid"].ToString() + "temporal" + archivoExtension;

                lblMensaje.Text = "Giro de 180°.";
            }
        }

        protected void btnRotarDerecha_Click(object sender, EventArgs e)
        {
            if (bait != null)
            {
                byte[] b1 = bait;

                System.Drawing.Image imagen01 = byteArrayToImage(b1);

                imagen01.RotateFlip(RotateFlipType.Rotate90FlipNone);

                bait = imageToByteArray(imagen01);

                //1ro Actualizo la foto temporal que ya esta guardada
                GuardarFotoRotadaTemporal(imagen01);

                //2do Muestro la foto rotada
                imgTemporal.ImageUrl = "~/imagenes_productos/" + Session["userid"].ToString() + "temporal" + archivoExtension;

                lblMensaje.Text = "Giro 90° hacia la derecha.";
            }
        }
        public byte[] imageToByteArray(System.Drawing.Image imageIn)
        {
            MemoryStream ms = new MemoryStream();
            imageIn.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
            return ms.ToArray();
        }

        public System.Drawing.Image byteArrayToImage(byte[] byteArrayIn)
        {
            MemoryStream ms = new MemoryStream(byteArrayIn);
            System.Drawing.Image returnImage = System.Drawing.Image.FromStream(ms);
            return returnImage;
        }

        private void GuardarFotoRotada()
        {
            //try
            //{
            //    idUsuarioTemporal = Convert.ToInt32(Session["userid"].ToString());

            //    FotoUsuario fotoUsuario2 = fotoUsuarioNego.ObtenerFotoUsuario(idUsuarioTemporal);
            //    FotoUsuario fotoUsuarioNuevo = new FotoUsuario();

            //    fotoUsuarioNuevo.IdFotoUsuario = fotoUsuario2.IdFotoUsuario;
            //    fotoUsuarioNuevo.FotoUsuarioCodigo = fotoUsuario2.FotoUsuarioCodigo;
            //    fotoUsuarioNuevo.IdUsuario = fotoUsuario2.IdUsuario;
            //    fotoUsuarioNuevo.FotoTemporal = bait;

            //    fotoUsuarioNego.ActualizarFotoUsuario(fotoUsuarioNuevo);
            //}
            //catch (Exception ex)
            //{
            //    lblMensaje.Text = ex.Message;
            //}
        }

        public void GuardarFotoRotadaTemporal(System.Drawing.Image imagen)
        {
            string archivoNombre = Session["userid"].ToString() + "temporal" + archivoExtension;
            string path = Path.Combine(Server.MapPath("~/imagenes_productos/"), archivoNombre);
            imagen.Save(path);
        }
    }
}


