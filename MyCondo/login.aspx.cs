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
            }/*
                        SqlConnection myConnection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename="
                                                           + @"C:\Users\koflax\Desktop\School\home Project\databases\logindata.mdf" +
                                                           ";Integrated Security=True;Connect Timeout=30;");
            SqlDataAdapter myData = new SqlDataAdapter("Select * from loginData where UPPER(Username)='"
                                                        +usernameTxt.Text+"'and password='"+passwordTxt.Text+"'",
                                                        myConnection);
            DataTable myTable = new DataTable();
            myData.Fill(myTable);
            if(myTable.Rows.Count>0)
            {
                if (myTable.Rows[0][0].ToString() == usernameTxt.Text && myTable.Rows[0][1].ToString() == passwordTxt.Text)
                {
                    string result = myTable.Rows[0][0].ToString();
                    MessageBox.Show(result);
                    //MainPage myMainPage = new MainPage(this);
                    //myConnection.Close();
                    //this.Hide();
                    //myMainPage.Show();
                }
                else
                {
                    MessageBox.Show("Incorrect Login Or Password, please try again");
                }
            }
            else
            {
                MessageBox.Show("Incorrect Login Or Password, please try again");
            }
            */
        }
    }
}