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
        int myTime;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*lblTime.Visible = false;
            lblverificationMessage.Visible = false;
            txtVerificationtext.Visible = false;
            btnConfirm.Visible = false;*/
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            bool found = false;
            DataConnection myConnection = new DataConnection();
            String script = "Select * from Login";
            DataTable myTable = myConnection.ExecuteScript(script);
            myConnection.conn.Close();
            if (myTable.Rows.Count > 0)
            {
                for (int i = 0; i < myTable.Rows.Count; i++)
                {
                    if (myTable.Rows[i][0].ToString() == txtUsername.Text && myTable.Rows[i][1].ToString() == txtPassword.Text)
                    {
                        found = true;
                        Login Myinfo = new Login();
                        Myinfo.AccountType = myTable.Rows[i][2].ToString();
                        Myinfo.Image = myTable.Rows[i][4].ToString();
                        Myinfo.Password = myTable.Rows[i][1].ToString();
                        Myinfo.UserId = int.Parse(myTable.Rows[i][3].ToString());
                        Myinfo.Username = myTable.Rows[i][0].ToString();
                        Session["Login"] = Myinfo;

                        //Getting User Details
                        DataConnection myConnection1 = new DataConnection();
                        String script1 = "Select * from Users where UserId=" + int.Parse(myTable.Rows[i][3].ToString());
                        DataTable myTable1 = myConnection1.ExecuteScript(script1);
                        myConnection1.conn.Close();
                        User aUser = new User();
                        aUser.UserId = int.Parse(myTable1.Rows[0][0].ToString());
                        aUser.Fname = myTable1.Rows[0][1].ToString();
                        aUser.Lname = myTable1.Rows[0][2].ToString();
                        aUser.Email = myTable1.Rows[0][3].ToString();
                        aUser.CreationDate = myTable1.Rows[0][7].ToString();
                        aUser.Group = myTable1.Rows[0][8].ToString();
                        Session["User"] = aUser;
                        break;
                    }
                }
                if (found)
                {
                    codeTimingTime.Enabled = true;
                    myTime = 120;
                    lblForgotPwd.Visible = false;
                    lblPwd.Visible = false;
                    lblUsername.Visible = false;
                    lblValidation.Visible = false;
                    txtPassword.Visible = false;
                    txtUsername.Visible = false;
                    btnSubmit.Visible = false;

                    lblTime.Visible = true;
                    lblverificationMessage.Visible = true;
                    txtVerificationtext.Visible = true;
                    btnConfirm.Visible = true;

                    //Response.Redirect("Home.aspx");
                }
                else
                {
                    lblValidation.Text = "Incorrect Login Or Password, please try again";
                }
            }
            else
            {
                lblValidation.Text = "Incorrect Login Or Password, please try again";
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            myTime--;
            lblTime.Text = new DateTime().AddSeconds(myTime).ToString("mm:ss");
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}