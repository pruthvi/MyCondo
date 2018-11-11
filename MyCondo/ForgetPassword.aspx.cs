using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendPassword_Click(object sender, EventArgs e)
        {
            bool found = false;
            found = CheckEmail();
            if(found && txtEmail.Text!="")
            {
                SendEmail();
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        private void SendEmail()
        {
            throw new NotImplementedException();
        }

        private bool CheckEmail()
        {
            return true;
        }
    }
}