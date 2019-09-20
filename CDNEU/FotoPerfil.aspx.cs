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

            txtId.Text = Session["userid"].ToString();
            Ver();
        }

        protected void btnGuardarFoto_Click(object sender, EventArgs e)
        {
            GuardarFoto();
            Ver();
        }

        private void GuardarFoto()
        {
            //bait = fuImagen.FileBytes;
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

                    //SqlConnection conectar = new ConectarSQLServer().conectarSQL();
                    //String comandoInsertar = "UPDATE FotoUsuario SET fotoUsuarioCodigo=@fotoUsuarioCodigo, idUsuario=@idUsuario WHERE idUsuario=@idUsuario";
                    //SqlCommand comando = new SqlCommand(comandoInsertar, conectar);
                    //comando.Parameters.Add("@fotoUsuarioCodigo", SqlDbType.VarBinary).Value = fuImagen.FileBytes;
                    //comando.Parameters.Add("@idUsuario", SqlDbType.Int).Value = Session["userid"].ToString();
                    //comando.ExecuteNonQuery();
                    //lblMensaje.Text = "La foto se guardó correctamente.";
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

                    //SqlConnection conectar = new ConectarSQLServer().conectarSQL();
                    //String comandoInsertar = "UPDATE FotoUsuario SET fotoUsuarioCodigo=@fotoUsuarioCodigo, idUsuario=@idUsuario WHERE idUsuario=@idUsuario";
                    //SqlCommand comando = new SqlCommand(comandoInsertar, conectar);
                    //comando.Parameters.Add("@fotoUsuarioCodigo", SqlDbType.VarBinary).Value = bait;
                    //comando.Parameters.Add("@idUsuario", SqlDbType.Int).Value = Session["userid"].ToString();
                    //comando.ExecuteNonQuery();
                    //lblMensaje.Text = "La foto se guardó correctamente.";
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


                //SqlConnection conectar = new ConectarSQLServer().conectarSQL();
                //String comandoInsertar = "UPDATE FotoUsuario SET idUsuario=@idUsuario, fotoTemporal=@fotoTemporal WHERE idUsuario=@idUsuario";
                //SqlCommand comando = new SqlCommand(comandoInsertar, conectar);
                //comando.Parameters.Add("@fotoTemporal", SqlDbType.VarBinary).Value = fuImagen.FileBytes;
                //bait = fuImagen.FileBytes;
                //comando.Parameters.Add("@idUsuario", SqlDbType.Int).Value = Session["userid"].ToString();
                //comando.ExecuteNonQuery();
                //lblMensaje.Text = "La foto se cargó correctamente.";

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

                lblMensaje.Text = "La foto rotó 90° hacia la derecha.";


                //SqlConnection conectar = new ConectarSQLServer().conectarSQL();
                //String comandoInsertar = "UPDATE FotoUsuario SET idUsuario=@idUsuario, fotoTemporal=@fotoTemporal WHERE idUsuario=@idUsuario";
                //SqlCommand comando = new SqlCommand(comandoInsertar, conectar);
                //comando.Parameters.Add("@fotoTemporal", SqlDbType.VarBinary).Value = fuImagen.FileBytes;
                //bait = fuImagen.FileBytes;
                //comando.Parameters.Add("@idUsuario", SqlDbType.Int).Value = Session["userid"].ToString();
                //comando.ExecuteNonQuery();
                //lblMensaje.Text = "La foto se cargó correctamente.";

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
            }
        }

        
        

        
    }
}