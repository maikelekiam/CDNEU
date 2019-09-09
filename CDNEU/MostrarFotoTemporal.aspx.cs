using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDominio;
using CapaNegocio;

namespace CDNEU
{
    public partial class MostrarFotoTemporal : System.Web.UI.Page
    {
        FotoUsuarioNego fotoUsuarioNego = new FotoUsuarioNego();
        public byte[] bait;
        int idUsuarioTemporal = Login.idUsuarioTemporal;

        protected void Page_Load(object sender, EventArgs e)
        {
            FotoUsuario fotoUsuario = fotoUsuarioNego.ObtenerFotoUsuario(Convert.ToInt32(Session["userid"]));

            bait = fotoUsuario.FotoTemporal;

            Response.BinaryWrite(bait);





            //SqlConnection conectar = new ConectarSQLServer().conectarSQL();
            //String comandoSeleccionar = "SELECT fotoTemporal FROM FotoUsuario WHERE idUsuario = @idUsuario";
            //SqlCommand comando = new SqlCommand(comandoSeleccionar, conectar);
            //comando.Parameters.Add("@idUsuario", SqlDbType.Int).Value = Request.QueryString["idUsuario"];
            //SqlDataReader dr = comando.ExecuteReader();
            //if (dr.Read())
            //{
            //    byte[] imagen = (byte[])dr["fotoTemporal"];
            //    Response.BinaryWrite(imagen);
            //}
            //conectar.Close();
        }
    }
}