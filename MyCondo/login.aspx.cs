using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class login : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "admin" && txtPassword.Text == "admin")
            {
                Response.Redirect("index.aspx");

            }
            else
            {
                lblValidation.Text = "Your username and password is incorrect";
                lblValidation.ForeColor = System.Drawing.Color.Red; 
            }
        }
    }
}