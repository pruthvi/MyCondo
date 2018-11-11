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
            Response.
            if (!IsPostBack)
            {
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
        }
    }
}