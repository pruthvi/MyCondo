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
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitFeedback_Click(object sender, EventArgs e)
        {

            Feedback newFeedback = new Feedback();
           // newFeedback.UserId = Convert.ToInt32(ResidentDropDown.SelectedValue);
            newFeedback.Message = txtMessage.Text;


            try
            {


                    DataConnection myConnection = new DataConnection();
                     SqlCommand command = new SqlCommand();

                    String script = "Insert Message INTO Feedback";
                    DataTable myTable = myConnection.ExecuteScript(script);
                    myConnection.conn.Close();

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                    {
                    }
                }
            

        }

    }
}