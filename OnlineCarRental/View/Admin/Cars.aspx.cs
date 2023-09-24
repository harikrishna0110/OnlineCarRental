using OnlineCarRental.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCarRental.View.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Models.Functions Conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
          
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowCars()
        {
            string Query = "select * from CarTbl";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();

        }
        protected void Savebtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LNumber.Value == "" || BrandTb.Value == "" || ModelTb.Value == "" || PriceTb.Value == "" || ColorTb.Value == "")
                {
                    ErrorMssg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNum = LNumber.Value;
                    string Brand = BrandTb.Value;
                    string Model = ModelTb.Value;
                    int Price = Convert.ToInt32(PriceTb.Value.ToString());
                    string Color = ColorTb.Value;
                    string Status = AvailebleCB.SelectedValue;
                    string Query = "insert into CarTbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = String.Format(Query, PlateNum, Brand, Model, Price, Color, Status);
                    Conn.SetData(Query);
                    ErrorMssg.InnerText = "Car added";

                }
            }
            catch (Exception Ex)
            {
                // throw;
                ErrorMssg.InnerText = Ex.Message;
            }
        }

        string Key = "";
        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LNumber.Value = CarList.SelectedRow.Cells[1].Text;
            BrandTb.Value = CarList.SelectedRow.Cells[2].Text;
            ModelTb.Value = CarList.SelectedRow.Cells[3].Text;
            PriceTb.Value = CarList.SelectedRow.Cells[4].Text;
            ColorTb.Value = CarList.SelectedRow.Cells[5].Text;
            AvailebleCB.SelectedValue = CarList.SelectedRow.Cells[6].Text;
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {


            try
            {
                if (LNumber.Value == "" )
                {
                    ErrorMssg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNum = LNumber.Value;
                  
                    string Query = "Delete from CarTbl where CplateNum='{0}'";
                    Query = String.Format(Query, PlateNum);
                    Conn.SetData(Query);
                    ShowCars();
                    ErrorMssg.InnerText = "Car Deleted";

                }
            }
            catch (Exception Ex)
            {
                // throw;
                ErrorMssg.InnerText = Ex.Message;
            }
        }

        protected void Editbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LNumber.Value == "" || BrandTb.Value == "" || ModelTb.Value == "" || PriceTb.Value == "" || ColorTb.Value == "")
                {
                    ErrorMssg.InnerText = "Missing Information";
                }
                else
                {
                    string PlateNum = LNumber.Value;
                    string Brand = BrandTb.Value;
                    string Model = ModelTb.Value;
                    int Price = Convert.ToInt32(PriceTb.Value.ToString());
                    string Color = ColorTb.Value;
                    string Status = AvailebleCB.SelectedValue;
                    string Query = "update CarTbl set Brand= '{0}',Model = '{1}', Price = '{2}',Color='{3}', Status='{4}' where CplateNum='{5}'";
                    Query = String.Format(Query, Brand, Model, Price, Color, Status, PlateNum);
                    Conn.SetData(Query);
                    ErrorMssg.InnerText = "Car Edited";
                    ShowCars() ;    

                }
            }
            catch (Exception Ex)
            {
                // throw;
                ErrorMssg.InnerText = Ex.Message;
            }
        }
    }
    }
