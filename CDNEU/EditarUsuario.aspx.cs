using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDNEU
{
    public partial class EditarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblIdFotoPerfil.Text = Session["userid"].ToString();

            imgURL.ImageUrl = "~/MostrarFotoPerfil.aspx?idUsuario=" + lblIdFotoPerfil.Text;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    SqlConnection conectar = new ConectarSQLServer().conectarSQL();
            //    String comandoInsertar = "INSERT INTO Imagen(id, img) VALUES(@id, @img)";
            //    SqlCommand comando = new SqlCommand(comandoInsertar, conectar);
            //    comando.Parameters.Add("@id", SqlDbType.Char, 3).Value = txtId.Text;
            //    comando.Parameters.Add("@img", SqlDbType.VarBinary).Value = fuImagen.FileBytes;
            //    comando.ExecuteNonQuery();
            //    lblMensaje.Text = "Se registro correctamente.";
            //}
            //catch (Exception ex)
            //{
            //    lblMensaje.Text = ex.Message;
            //}
        }
    }
}