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
                    dropdownListarPersonas.Visible = true;
                    dropdownAltaPersona.Visible = true;
                }
                else
                {
                    dropdownListarPersonas.Visible = false;
                    dropdownAltaPersona.Visible = false;
                }
            }
        }

        protected void btnLogOff_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}