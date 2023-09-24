using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCarRental.View.Customer
{
    public partial class Cars : System.Web.UI.Page
    {
        Models.Functions Conn;
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowCars()
        {
           // string St = "Available";
            string Query = "select * from CarTbl";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();

        }



        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
            CustName.InnerText = Login.CName;
            Customer = Login.CustId;
        }

        private void UpdateCar()
        {
            try
            {
               
                  
                    string Status = "Booked";
                    string Query = "update CarTbl set Status='{0}' where CplateNum='{1}'";
                    Query = String.Format(Query,Status, CarList.SelectedRow.Cells[1].Text);
                    Conn.SetData(Query);
                
                    ShowCars();

                
            }
            catch (Exception Ex)
            {
                // throw;
                InfoMsg.InnerText = Ex.Message;
            }
        }

       
        // TimeSpan Days = ReturnDate.Value;
        protected void Book_btn_Click(object sender, EventArgs e)
        {
            
            TimeSpan DDays = Convert.ToDateTime(ReturnDate.Value) - DateTime.Today.Date;
            int Days =DDays.Days;
            int Dprice;
            Dprice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);
            int  Fees = Dprice * Days;
           // int flag = 1;
         
            



            try
            {
               


                if (CarList.SelectedRow.Cells[1].Text == "")
                {
                    InfoMsg.InnerText = "Missing Information";
                }
                else
                {
                    Dprice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);

                    string Query = "insert into RentTbl values('{0}',{1},'{2}','{3}',{4})";
                    Query = string.Format(Query, CarList.SelectedRow.Cells[1].Text, Login.CustId, System.DateTime.Today.Date.ToString(),ReturnDate.Value, Fees);
                    Conn.SetData(Query);
                    UpdateCar();
                    ShowCars() ;
                    InfoMsg.InnerText = "Car Rented";

                }
            }
            catch (Exception Ex)
            {
               // throw;
               InfoMsg.InnerText = Ex.Message;
               // InfoMsg.InnerText = CarList.SelectedRow.Cells[1].Text; ;
            }
        }

        string LNumber,RentDate, RetDate;
        int Dprice, Customer;


        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LNumber = CarList.SelectedRow.Cells[1].Text;
            
            Customer  = Convert.ToInt32(CarList.SelectedRow.Cells[2].Text);
           RentDate = System.DateTime.Today.Date.ToString();
            RetDate  =ReturnDate.Value;
            Dprice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);

           
           
        }
    }
}