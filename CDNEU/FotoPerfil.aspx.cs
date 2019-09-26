using System;
using System.Data.SqlClient;
using System.Data;
using CapaDominio;
using CapaNegocio;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;


namespace CDNEU
{
    public partial class FotoPerfil : System.Web.UI.Page
    {
        FotoUsuarioNego fotoUsuarioNego = new FotoUsuarioNego();

        public static Byte[] bait;
        int idUsuarioTemporal;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            bait = null;
            lblMensaje.Text = "";
            txtId.Text = Session["userid"].ToString();
            Ver();
            ResetearFotoTemporal();
        }

        protected void btnGuardarFoto_Click(object sender, EventArgs e)
        {
            GuardarFoto();
            bait = null;
            ResetearFotoTemporal();
            Ver();
        }

        private void GuardarFoto()
        {
            idUsuarioTemporal = Convert.ToInt32(Session["userid"].ToString());

            if (fuImagen.HasFile)
            {
                try
                {
                    FotoUsuario fotoUsuario2 = fotoUsuarioNego.ObtenerFotoUsuario(idUsuarioTemporal);
                    FotoUsuario fotoUsuarioNuevo = new FotoUsuario();

                    fotoUsuarioNuevo.IdFotoUsuario = fotoUsuario2.IdFotoUsuario;
                    fotoUsuarioNuevo.FotoUsuarioCodigo = fuImagen.FileBytes;
                    fotoUsuarioNuevo.IdUsuario = fotoUsuario2.IdUsuario;
                    fotoUsuarioNuevo.FotoTemporal = fotoUsuario2.FotoTemporal;

                    fotoUsuarioNego.ActualizarFotoUsuario(fotoUsuarioNuevo);

                    lblMensaje.Text = "La foto se guardó correctamente.";
                }
                catch (Exception ex)
                {
                    lblMensaje.Text = ex.Message;
                }
            }
            else
            {
                try
                {
                    FotoUsuario fotoUsuario2 = fotoUsuarioNego.ObtenerFotoUsuario(idUsuarioTemporal);
                    FotoUsuario fotoUsuarioNuevo = new FotoUsuario();

                    fotoUsuarioNuevo.IdFotoUsuario = fotoUsuario2.IdFotoUsuario;
                    fotoUsuarioNuevo.FotoUsuarioCodigo = bait;
                    fotoUsuarioNuevo.IdUsuario = fotoUsuario2.IdUsuario;
                    fotoUsuarioNuevo.FotoTemporal = fotoUsuario2.FotoTemporal;

                    fotoUsuarioNego.ActualizarFotoUsuario(fotoUsuarioNuevo);

                    lblMensaje.Text = "La foto se guardó correctamente.";
                }
                catch (Exception ex)
                {
                    lblMensaje.Text = ex.Message;
                }
            }
        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
            Ver();
        }

        protected void btnMostrarFotoTemporal_Click(object sender, EventArgs e)
        {
            if (fuImagen.HasFile)
            {
                lblMensaje.Text = "";
                GuardarFotoTemporal();
                MostrarFotoTemporal();
            }
        }
        public void GuardarFotoTemporal()
        {
            try
            {
                idUsuarioTemporal = Convert.ToInt32(Session["userid"].ToString());

                FotoUsuario fotoUsuario2 = fotoUsuarioNego.ObtenerFotoUsuario(idUsuarioTemporal);
                FotoUsuario fotoUsuarioNuevo = new FotoUsuario();

                fotoUsuarioNuevo.IdFotoUsuario = fotoUsuario2.IdFotoUsuario;
                fotoUsuarioNuevo.FotoUsuarioCodigo = fotoUsuario2.FotoUsuarioCodigo;
                fotoUsuarioNuevo.IdUsuario = fotoUsuario2.IdUsuario;
                fotoUsuarioNuevo.FotoTemporal = fuImagen.FileBytes;

                bait = fuImagen.FileBytes;

                fotoUsuarioNego.ActualizarFotoUsuario(fotoUsuarioNuevo);

                lblMensaje.Text = "La foto se cargó correctamente.";
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message;
            }
        }

        private void MostrarFotoTemporal()
        {
            imgTemporal.ImageUrl = "~/MostrarFotoTemporal.aspx?idUsuario=" + txtId.Text;
        }
        private void Ver()
        {
            imgURL.ImageUrl = "~/MostrarFotoPerfil.aspx?idUsuario=" + txtId.Text;
        }

        protected void btnRotarDerecha_Click(object sender, EventArgs e)
        {
            if (bait != null)
            {
                byte[] b1 = bait;

                Image imagen01 = byteArrayToImage(b1);

                imagen01.RotateFlip(RotateFlipType.Rotate90FlipNone);

                bait = imageToByteArray(imagen01);

                GuardarFotoRotada();
                MostrarFotoTemporal();
                lblMensaje.Text = "Giro 90° hacia la derecha.";
            }
        }

        public byte[] imageToByteArray(System.Drawing.Image imageIn)
        {
            MemoryStream ms = new MemoryStream();
            imageIn.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
            return ms.ToArray();
        }

        public Image byteArrayToImage(byte[] byteArrayIn)
        {
            MemoryStream ms = new MemoryStream(byteArrayIn);
            Image returnImage = Image.FromStream(ms);
            return returnImage;
        }
        private void GuardarFotoRotada()
        {
            try
            {
                idUsuarioTemporal = Convert.ToInt32(Session["userid"].ToString());

                FotoUsuario fotoUsuario2 = fotoUsuarioNego.ObtenerFotoUsuario(idUsuarioTemporal);
                FotoUsuario fotoUsuarioNuevo = new FotoUsuario();

                fotoUsuarioNuevo.IdFotoUsuario = fotoUsuario2.IdFotoUsuario;
                fotoUsuarioNuevo.FotoUsuarioCodigo = fotoUsuario2.FotoUsuarioCodigo;
                fotoUsuarioNuevo.IdUsuario = fotoUsuario2.IdUsuario;
                fotoUsuarioNuevo.FotoTemporal = bait;

                fotoUsuarioNego.ActualizarFotoUsuario(fotoUsuarioNuevo);
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message;
            }
        }

        protected void btnRotarIzquierda_Click(object sender, EventArgs e)
        {
            if (bait != null)
            {
                byte[] b1 = bait;

                Image imagen01 = byteArrayToImage(b1);

                imagen01.RotateFlip(RotateFlipType.Rotate270FlipNone);

                bait = imageToByteArray(imagen01);

                GuardarFotoRotada();
                MostrarFotoTemporal();
                lblMensaje.Text = "Giro 90° hacia la izquierda.";
            }
        }

        protected void btnRotar180_Click(object sender, EventArgs e)
        {
            if (bait != null)
            {
                byte[] b1 = bait;

                Image imagen01 = byteArrayToImage(b1);

                imagen01.RotateFlip(RotateFlipType.Rotate180FlipNone);

                bait = imageToByteArray(imagen01);

                GuardarFotoRotada();
                MostrarFotoTemporal();
                lblMensaje.Text = "Giro 180°";
            }
        }

        protected void btnEliminarFoto_Click(object sender, EventArgs e)
        {
            string ruta = Server.MapPath("~/imagenes/FotoUsuariosx2.png");

            byte[] imagenEmpleado = File.ReadAllBytes(ruta);

            try
            {
                idUsuarioTemporal = Convert.ToInt32(Session["userid"].ToString());

                FotoUsuario fotoUsuario2 = fotoUsuarioNego.ObtenerFotoUsuario(idUsuarioTemporal);
                FotoUsuario fotoUsuarioNuevo = new FotoUsuario();

                fotoUsuarioNuevo.IdFotoUsuario = fotoUsuario2.IdFotoUsuario;
                fotoUsuarioNuevo.FotoUsuarioCodigo = imagenEmpleado;
                fotoUsuarioNuevo.IdUsuario = fotoUsuario2.IdUsuario;
                fotoUsuarioNuevo.FotoTemporal = imagenEmpleado;

                //bait = fuImagen.FileBytes;

                fotoUsuarioNego.ActualizarFotoUsuario(fotoUsuarioNuevo);

                lblMensaje.Text = "Foto Eliminada";
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message;
            }

        }
        public void ResetearFotoTemporal()
        {
            string ruta = Server.MapPath("~/imagenes/FotoUsuariosx2.png");

            byte[] imagenEmpleado = File.ReadAllBytes(ruta);

            try
            {
                idUsuarioTemporal = Convert.ToInt32(Session["userid"].ToString());

                FotoUsuario fotoUsuario2 = fotoUsuarioNego.ObtenerFotoUsuario(idUsuarioTemporal);
                FotoUsuario fotoUsuarioNuevo = new FotoUsuario();

                fotoUsuarioNuevo.IdFotoUsuario = fotoUsuario2.IdFotoUsuario;
                fotoUsuarioNuevo.FotoUsuarioCodigo = fotoUsuario2.FotoUsuarioCodigo;
                fotoUsuarioNuevo.IdUsuario = fotoUsuario2.IdUsuario;
                fotoUsuarioNuevo.FotoTemporal = imagenEmpleado;

                fotoUsuarioNego.ActualizarFotoUsuario(fotoUsuarioNuevo);
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message;
            }
        }
    }
}