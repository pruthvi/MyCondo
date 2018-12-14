using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCreateUser_Click(object sender, EventArgs e)
        {
            User user = new User();

            user.Fname = txtFirstName.Text;
            user.Lname = txtLastName.Text;
            user.Email = txtEmail.Text;
            user.PNumber = txtPhone.Text;
            user.UnitNumber = Convert.ToInt32(txtUnitNumber.Text);
            //user.Group = Convert.ToString(GroupDropdown.SelectedIndex);
            user.Adress = txtOffsiteAddress.Text;
            user.Group = "Residents";

            if (!CheckUnit(user.UnitNumber))
            {
                try
                {
                    SqlCommand command = new SqlCommand();
                    command.CommandText = "InsertUserUnit";
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add("FirstName", SqlDbType.NVarChar);
                    command.Parameters["FirstName"].Value = user.Fname;

                    command.Parameters.Add("LastName", SqlDbType.NVarChar);
                    command.Parameters["LastName"].Value = user.Lname;

                    command.Parameters.Add("Email", SqlDbType.NVarChar);
                    command.Parameters["Email"].Value = user.Email;

                    command.Parameters.Add("PhoneNumber", SqlDbType.NVarChar);
                    command.Parameters["PhoneNumber"].Value = user.PNumber;

                    command.Parameters.Add("UnitNumber", SqlDbType.Int);
                    command.Parameters["UnitNumber"].Value = user.UnitNumber;

                    command.Parameters.Add("UserGroup", SqlDbType.NVarChar);
                    command.Parameters["UserGroup"].Value = user.Group;

                    command.Parameters.Add("Address", SqlDbType.NVarChar);
                    command.Parameters["Address"].Value = user.Adress;

                    DataConnection myConnection = new DataConnection();
                    myConnection.ExecuteNonQuery(command);
                    Response.Redirect("Home.aspx");
                    lblUserAlreadyExit.Visible = false;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                // Display Error
                lblUserAlreadyExit.Visible = true;

                // Reset all the Values
                txtUnitNumber.Text = "";
            }

        }

        // Check if the unit number is already in the db
        private bool CheckUnit(int unitNumber)
        {
            bool found = false;
            DataConnection myConnection = new DataConnection();
            String script = "Select UnitNumber from Users";
            DataTable myTable = myConnection.ExecuteScript(script);
            myConnection.conn.Close();
            if (myTable.Rows.Count > 0)
            {
                for (int i = 0; i < myTable.Rows.Count; i++)
                {
                    if (unitNumber == Convert.ToInt32(myTable.Rows[i][0]))
                    {
                        found = true;
                        break;
                    }
                }
            }
            return found;
        }
    }
}