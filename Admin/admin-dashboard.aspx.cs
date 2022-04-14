using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace The_Gaming_Store.Admin
{
    public partial class admin_dashboard : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();
        public static int total_products = 0;
        public static int total_customers = 0;
        public static string total_sales = "";
        public static int total_orders = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            int i = 0;
            string query = @"select product_id from tbl_Product";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                i++;
            }
            con.Close();
            total_products = i;

            i = 0;
            query = @"select customer_id from tbl_Customer";
            cmd = new SqlCommand(query, con);
            con.Open();
            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                i++;
            }
            con.Close();
            total_customers = i;

            i = 0;
            query = @"select order_id from tbl_Order";
            con.Open();
            cmd = new SqlCommand(query, con);
            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                i++;
            }
            con.Close();
            total_orders = i;

            i = 0;
            query = @"select price from tbl_Order where status = 'delivered'";
            con.Open();
            cmd = new SqlCommand(query, con);
            rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                i += Convert.ToInt32( rd["price"]);
            }
            con.Close();
            total_sales = "Rs. " + i.ToString();
        }
    }
}