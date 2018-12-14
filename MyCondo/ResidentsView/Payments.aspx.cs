using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo.ResidentsView
{
    public partial class Payments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bindpayment();
        }

        private void Bindpayment()
        {
            User Myinfo = new User();
            Myinfo = (User)(Session["User"]);

            DataConnection myConnection = new DataConnection();
            String script = "SELECT  BookingId,BookingType, StartDate, EndDate, BookingDescription, BookingStatus FROM Booking where Booking.UserId =" + Myinfo.UserId;
            BookingsDisplay.DataSource = myConnection.ExecuteScript(script);
            BookingsDisplay.DataKeyNames = new string[] { "BookingId" };
            BookingsDisplay.DataBind();
        }

        protected void btnpay_Click(object sender, EventArgs e)
        {
            Response.Write("<script>");
            Response.Write("window.open('https://www.paypal.me/allatyourprice','_blank')");
            Response.Write("</script>");
        }
    }
}