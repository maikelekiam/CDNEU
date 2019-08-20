using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDNEU
{
    public partial class MostrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conectar = new ConectarSQLServer().conectarSQL();
            String comandoSeleccionar = "SELECT * FROM Imagen WHERE id = @id";
            SqlCommand comando = new SqlCommand(comandoSeleccionar, conectar);
            comando.Parameters.Add("@id", SqlDbType.Char, 3).Value = Request.QueryString["id"];
            SqlDataReader dr = comando.ExecuteReader();
            if (dr.Read())
            {
                byte[] imagen = (byte[])dr["img"];
                Response.BinaryWrite(imagen);
            }
            conectar.Close();
        }
    }
}