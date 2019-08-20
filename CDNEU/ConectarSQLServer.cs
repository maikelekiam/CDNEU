using System;
using System.Data.SqlClient;

namespace CDNEU
{
    public class ConectarSQLServer
    {
        public SqlConnection conectarSQL()
        {
            try
            {
                String cadenaDeConeccion = "DATA SOURCE=.\\SQLEXPRESS;initial catalog=CDNEU; integrated security=True";
                SqlConnection conectar = new SqlConnection(cadenaDeConeccion);
                conectar.Open();
                return conectar;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}