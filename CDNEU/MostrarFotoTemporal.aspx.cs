using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CDNEU
{
    public partial class MostrarFotoTemporal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conectar = new ConectarSQLServer().conectarSQL();
            String comandoSeleccionar = "SELECT * FROM FotoUsuario WHERE idUsuario = @idUsuario";
            SqlCommand comando = new SqlCommand(comandoSeleccionar, conectar);
            comando.Parameters.Add("@idUsuario", SqlDbType.Int).Value = Request.QueryString["idUsuario"];
            SqlDataReader dr = comando.ExecuteReader();
            if (dr.Read())
            {
                byte[] imagen = (byte[])dr["fotoTemporal"];
                Response.BinaryWrite(imagen);
            }
            conectar.Close();
        }
    }
}