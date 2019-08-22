using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDominio;
using CapaNegocio;
using System.IO;
using System.Data.SqlClient;
using System.Data;

namespace CDNEU
{
    public partial class FotoPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Text = Session["userid"].ToString();
            Ver();
        }

        protected void btnGuardarFoto_Click(object sender, EventArgs e)
        {
            //BorrarFoto();
            GuardarFoto();
            Ver();
        }

        //private void BorrarFoto()
        //{
        //    try
        //    {
        //        SqlConnection conectar = new ConectarSQLServer().conectarSQL();
        //        String codigoBorrar = txtId.Text;
        //        String comandoBorrarBD = "DELETE FROM FotoUsuario WHERE idUsuario=" + codigoBorrar;
        //        SqlCommand comando1 = new SqlCommand(comandoBorrarBD, conectar);
        //        comando1.ExecuteNonQuery();
        //        lblMensaje.Text = "Se registro correctamente.";
        //    }
        //    catch (Exception ex)
        //    {
        //        lblMensaje.Text = ex.Message;
        //    }
        //}

        private void GuardarFoto()
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

        protected void btnVer_Click(object sender, EventArgs e)
        {
            Ver();
        }

        private void Ver()
        {
            imgURL.ImageUrl = "~/MostrarFotoPerfil.aspx?idUsuario=" + txtId.Text;
        }
    }
}