using System;
using System.Data.SqlClient;
using System.Data;

namespace CDNEU
{
    public partial class FotoPerfil : System.Web.UI.Page
    {
        public static Byte[] bait;
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

            if (fuImagen.HasFile)
            {
                try
                {
                    SqlConnection conectar = new ConectarSQLServer().conectarSQL();
                    String comandoInsertar = "UPDATE FotoUsuario SET fotoUsuarioCodigo=@fotoUsuarioCodigo, idUsuario=@idUsuario WHERE idUsuario=@idUsuario";
                    SqlCommand comando = new SqlCommand(comandoInsertar, conectar);
                    comando.Parameters.Add("@fotoUsuarioCodigo", SqlDbType.VarBinary).Value = fuImagen.FileBytes;
                    comando.Parameters.Add("@idUsuario", SqlDbType.Int).Value = Session["userid"].ToString();
                    comando.ExecuteNonQuery();
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
                    SqlConnection conectar = new ConectarSQLServer().conectarSQL();
                    String comandoInsertar = "UPDATE FotoUsuario SET fotoUsuarioCodigo=@fotoUsuarioCodigo, idUsuario=@idUsuario WHERE idUsuario=@idUsuario";
                    SqlCommand comando = new SqlCommand(comandoInsertar, conectar);
                    comando.Parameters.Add("@fotoUsuarioCodigo", SqlDbType.VarBinary).Value = bait;
                    comando.Parameters.Add("@idUsuario", SqlDbType.Int).Value = Session["userid"].ToString();
                    comando.ExecuteNonQuery();
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
            GuardarFotoTemporal();
            MostrarFotoTemporal();
        }
        public void GuardarFotoTemporal()
        {
            try
            {
                SqlConnection conectar = new ConectarSQLServer().conectarSQL();
                String comandoInsertar = "UPDATE FotoUsuario SET idUsuario=@idUsuario, fotoTemporal=@fotoTemporal WHERE idUsuario=@idUsuario";
                SqlCommand comando = new SqlCommand(comandoInsertar, conectar);
                comando.Parameters.Add("@fotoTemporal", SqlDbType.VarBinary).Value = fuImagen.FileBytes;
                bait = fuImagen.FileBytes;
                comando.Parameters.Add("@idUsuario", SqlDbType.Int).Value = Session["userid"].ToString();
                comando.ExecuteNonQuery();
                lblMensaje.Text = "La foto se cargó correctamente.";

                //SqlConnection conectar = new ConectarSQLServer().conectarSQL();
                //String codigoBorrar = txtId.Text;
                //String comandoBorrarBD = "DELETE FROM FotoUsuario WHERE idUsuario=" + codigoBorrar;
                //SqlCommand comando1 = new SqlCommand(comandoBorrarBD, conectar);
                //comando1.ExecuteNonQuery();
                //String comandoInsertar = "INSERT INTO FotoUsuario(fotoUsuarioCodigo, idUsuario) VALUES(@fotoUsuarioCodigo, @idUsuario)";
                //SqlCommand comando = new SqlCommand(comandoInsertar, conectar);
                //comando.Parameters.Add("@fotoUsuarioCodigo", SqlDbType.VarBinary).Value = fuImagen.FileBytes;
                //comando.Parameters.Add("@idUsuario", SqlDbType.Int).Value = Session["userid"].ToString();
                //comando.ExecuteNonQuery();
                //lblMensaje.Text = "Se registro correctamente.";
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
    }
}