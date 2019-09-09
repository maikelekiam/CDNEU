using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDNEU
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userlogin"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                lbl18.Text = "Bienvenido " + Session["userlogin"].ToString();

                if (Session["usergrupo"].ToString() == "1")
                {
                    dropdownListarUsuarios.Visible = true;
                    dropdownAltaUsuario.Visible = true;
                }
                else
                {
                    dropdownListarUsuarios.Visible = false;
                    dropdownAltaUsuario.Visible = false;
                }
            }
        }

        protected void btnLogOff_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}