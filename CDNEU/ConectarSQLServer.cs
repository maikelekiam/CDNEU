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
                //String cadenaDeConeccion = "workstation id=CDNEU1000.mssql.somee.com;packet size=4096;user id=maikelekiam_SQLLogin_1;pwd=rc8loukmiw;data source=CDNEU1000.mssql.somee.com;persist security info=False;initial catalog=CDNEU1000; integrated security=True";
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