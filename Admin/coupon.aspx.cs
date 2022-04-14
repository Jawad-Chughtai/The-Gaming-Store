using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace The_Gaming_Store.Admin
{
    public partial class coupon : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_coupon_ServerClick(object sender, EventArgs e)
        {
            string query = @"insert into tbl_coupon(coupon_name, coupon_discount, coupon_validity)
                values('"+ text_coupon_name.Value +"', '"+ text_discount.Value +"', '"+ text_validity.Value+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("coupon.aspx");
        }
    }
}