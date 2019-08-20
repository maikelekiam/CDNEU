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
    public partial class ListarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conectar = new ConectarSQLServer().conectarSQL();
                String comandoInsertar = "INSERT INTO Imagen(id, img) VALUES(@id, @img)";
                SqlCommand comando = new SqlCommand(comandoInsertar, conectar);
                comando.Parameters.Add("@id", SqlDbType.Char, 3).Value = txtId.Text;
                comando.Parameters.Add("@img", SqlDbType.VarBinary).Value = fuImagen.FileBytes;
                comando.ExecuteNonQuery();
                lblMensaje.Text = "Se registro correctamente.";
            }
            catch (Exception ex)
                {
                    lblMensaje.Text = ex.Message;
                }


        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
            imgURL.ImageUrl = "~/MostrarUsuario.aspx?id=" + txtId.Text;
        }
    }
}