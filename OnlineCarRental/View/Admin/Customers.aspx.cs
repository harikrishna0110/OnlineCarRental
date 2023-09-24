using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCarRental.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCustomers();
        }

        private void ShowCustomers()
        {
            string Query = "select * from CustomerTbl";
            CustomersList.DataSource = Conn.GetData(Query);
            CustomersList.DataBind();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void Savebtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNumberTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "" || AddTb.Value == "" )
                {
                    ErrorMssg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNumberTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                    string CustPass = PasswordTb.Value;
                    //int Price = Convert.ToInt32(PriceTb.Value.ToString());
                   
                    string Query = "insert into CustomerTbl values('{0}','{1}','{2}','{3}' ";
                    Query = String.Format(Query, CustName , CustAdd, CustPhone, CustPass);
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMssg.InnerText = "Customer  added";

                }
            }
            catch (Exception Ex)
            {
                // throw;
                ErrorMssg.InnerText = Ex.Message;
            }
        }

        protected void Savebtn_Click1(object sender, EventArgs e)
        {
            try
            {
                if (CustNumberTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "" || AddTb.Value == "")
                {
                    ErrorMssg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNumberTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                    string CustPass = PasswordTb.Value;
                    //int Price = Convert.ToInt32(PriceTb.Value.ToString());

                    string Query = "insert into CustomerTbl values('{0}','{1}','{2}','{3}' )";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPass);
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMssg.InnerText = "Customer  added";

                }
            }
            catch (Exception Ex)
            {
                // throw;
                ErrorMssg.InnerText = Ex.Message;
            }
        }

        int Key = 0;
        protected void CustomersList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                CustNumberTb.Value = CustomersList.SelectedRow.Cells[2].Text;
                AddTb.Value = CustomersList.SelectedRow.Cells[3].Text;
                PhoneTb.Value = CustomersList.SelectedRow.Cells[4].Text;
                PasswordTb.Value = CustomersList.SelectedRow.Cells[5].Text;
            if (CustNumberTb.Value == "")
            {
                Key = 0;
            }
            else
            { 
              Key = Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text);
            }
            ErrorMssg.InnerText = "" + Key;
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNumberTb.Value == "")
                {
                    ErrorMssg.InnerText = "Missing Information";
                }
                else
                {
                    

                    string Query = "Delete from CustomerTbl where CustId={0} ";
                    Query = String.Format(Query, Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMssg.InnerText = "Customer Deleted";
                   

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
                if (CustNumberTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "" || AddTb.Value == "")
                {
                    ErrorMssg.InnerText = "Missing Information";
                }
                else
                {

                    string CustName = CustNumberTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                    string CustPass = PasswordTb.Value;
                    string Query = "update CustomerTbl set CustName= '{0}',CustAdd = '{1}', CustPhone = '{2}',CustPassword='{3}' where CustId= {4}";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPass, Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMssg.InnerText = "Customer Edited";
                    

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