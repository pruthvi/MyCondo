using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindNewsFeed();
                BindBooking();
            }
        }

        private void BindBooking()
        {
            DataConnection myConnection = new DataConnection();
            String script = "select * from Newsfeed order by Creationdate DESC;";
            NewsFeedView.DataSource = myConnection.ExecuteScript(script);
            NewsFeedView.DataKeyNames = new string[] { "Priority" };
            NewsFeedView.DataBind();
        }

        private void BindNewsFeed()
        {
            DataConnection myConnection = new DataConnection();
            String script = "select * from Newsfeed order by Creationdate DESC;";
            NewsFeedView.DataSource = myConnection.ExecuteScript(script);
            NewsFeedView.DataKeyNames = new string[] { "Priority" };
            NewsFeedView.DataBind();
        }

        protected void NewsFeedView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                string Priority = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Priority"));
                GridViewRow newsFeedRow = e.Row;
                Label lbldate = (Label)(newsFeedRow.FindControl("lblDate"));
                lbldate.Text = (DateTime.Parse(lbldate.Text)).ToShortDateString();

                /*if (Priority=="High")
                {
                    e.Row.BackColor = System.Drawing.Color.IndianRed;
                }
                if (Priority=="Low")
                {
                    e.Row.BackColor = System.Drawing.Color.Green;
                }
                if (Priority=="Medium")
                {
                    e.Row.BackColor = System.Drawing.Color.Orange;
                }*/
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}