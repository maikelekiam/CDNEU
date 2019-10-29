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
        UsuarioNego usuarioNego = new UsuarioNego();
        FotoUsuarioNego fotoUsuarioNego = new FotoUsuarioNego();

        static int globalIdUsuario;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            globalIdUsuario = Convert.ToInt32(Session["userid"].ToString());

            ListarDiseniadores();

            //BindGrid();

        }

        public void ListarDiseniadores()
        {
            dgvUsuarios.DataSource = fotoUsuarioNego.MostrarFotoUsuarios().ToList().OrderBy(c => c.IdUsuario);
            dgvUsuarios.DataBind();

            dgvUsuarios.Columns[0].Visible = false;
        }


        public string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;
        }

        private void BindGrid()
        {
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(GetConnectionString());
            try
            {
                connection.Open();
                string sqlStatement = "SELECT * FROM FotoUsuario";
                SqlCommand sqlCmd = new SqlCommand(sqlStatement, connection);
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

                sqlDa.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    dgvUsuarios.DataSource = dt;
                    dgvUsuarios.DataBind();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Fetch Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                connection.Close();
            }
        }
    }
}