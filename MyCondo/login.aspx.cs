using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
            bool found = false;
            DataConnection myConnection = new DataConnection();
            String script = "Select * from Login";
            DataTable myTable = myConnection.ExecuteScript(script);
            myConnection.conn.Close();
            if (myTable.Rows.Count > 0)
            {
                for(int i=0;i< myTable.Rows.Count;i++)
                {
                    if (myTable.Rows[i][0].ToString() == txtUsername.Text && myTable.Rows[i][1].ToString() == txtPassword.Text)
                    {
                        found = true;
                        break;
                    }     
                }
                if (found)
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lblValidation.Text="Incorrect Login Or Password, please try again";
                }
            }
            else
            {
                lblValidation.Text = "Incorrect Login Or Password, please try again";
            }
        }
    }
}