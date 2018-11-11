using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string UserName { get { return LblName.Text; } set { LblName.Text = value; } }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            if (Session["User"] != null)
            {
                User Myinfo = new User();
                Myinfo = (User)(Session["User"]);
                LblName.Text = Myinfo.Fname;
                DropdwonName.Text = Myinfo.Fname;
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Session["Login"] = null;
            Session["Login"] = false;
            Response.Redirect("login.aspx");
        }
    }
}