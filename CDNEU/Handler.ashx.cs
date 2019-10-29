using System;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Collections.Specialized;
using CapaDominio;
using CapaNegocio;

namespace CDNEU
{
    public class Handler : IHttpHandler
    {
        public string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;
        }

        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request.QueryString["idFotoUsuario"];

            if (id != null)
            {
                MemoryStream memoryStream = new MemoryStream();
                SqlConnection connection = new SqlConnection(GetConnectionString());
                string sql = "SELECT * FROM FotoUsuario WHERE idFotoUsuario = @id";

                SqlCommand cmd = new SqlCommand(sql, connection);
                cmd.Parameters.AddWithValue("@id", id);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();

                //Get Image Data
                byte[] file = (byte[])reader["fotoUsuarioCodigo"];

                reader.Close();
                connection.Close();
                memoryStream.Write(file, 0, file.Length);
                context.Response.Buffer = true;
                context.Response.BinaryWrite(file);
                memoryStream.Dispose();
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}