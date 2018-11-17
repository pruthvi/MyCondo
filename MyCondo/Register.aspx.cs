using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            if (txtPwd.Text==txtCPwd.Text)
            {
                User myUser = new User();
                Login myLogin = new Login();
                Adress myAdress = new Adress(txtLine1.Text, txtLine2.Text, txtCity.Text, txtprovince.Text, txtZip.Text, txtCountry.Text);

                myUser.Fname = txtFName.Text;
                myUser.Lname = txtLName.Text;
                myUser.Adress = myAdress.ToString();
                myUser.PNumber = txtPNumber.Text;
                myUser.Email = txtEmail.Text;
                myUser.Group = "Residents";

                myLogin.Username = txtUsername.Text;
                myLogin.Password = txtPwd.Text;
                Response.Redirect("Home.aspx"); 
            }
        }
    }
}