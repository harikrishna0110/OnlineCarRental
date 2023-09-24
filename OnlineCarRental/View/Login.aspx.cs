using OnlineCarRental.View.Customer;
using System;
using System.Collections.Generic;
using System.Data;
using System.EnterpriseServices.Internal;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCarRental.View
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
        }

        public static string CName = "";
        public static int CustId;
        protected void Savebtn_Click(object sender, EventArgs e)
        {
            if (AdminRadio.Checked)
            {

            }
            else
            {
                string sql = "select custname,custpassword from customertbl where custname = '{0}' and custpassword = '{1}' ";
                    sql=string.Format(sql,UserNameTb.Value,PasswordTb.Value);
                   DataTable dt = Conn.GetData(sql);
                if (dt.Rows.Count == 0)
                {
                    
                }
                else
                { 
                CName = dt.Rows[0][0].ToString();

                }

            }
        }

        protected void Savebtn_Click1(object sender, EventArgs e)
        {
            if (AdminRadio.Checked)
            {
                if (UserNameTb.Value == "Admin" && PasswordTb.Value == "Admin")
                    {
                    CName = "Admin";
                    Response.Redirect("Admin/Home.aspx");
                }
                else {
                    InfoMssg.InnerText = "Invalid Admin";
                }


            }
            else
            {
                string sql = "select custname,custpassword,custid from customertbl where custname = '{0}' and custpassword = '{1}'";
                sql = string.Format(sql, UserNameTb.Value, PasswordTb.Value);
                DataTable dt = Conn.GetData(sql);
                if (dt.Rows.Count == 0)
                {
                    InfoMssg.InnerText= "Invalid Customer";
                }
                else
                {
                    CName = dt.Rows[0][0].ToString();
                    CustId =Convert.ToInt32( dt.Rows[0][2].ToString());
                    Response.Redirect("Customer/Cars.aspx");
                }

            }
        }
    }
}