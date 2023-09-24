using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCarRental.View.Customer
{
    public partial class PendingRentals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
        }
        Models.Functions Conn;
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowCars()
        {
            // string St = "Available";
            string Query = "select * from RentTbl" ;
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();

        }

        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}