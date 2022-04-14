using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace The_Gaming_Store
{
    public partial class user_profile : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = @"select * from tbl_Customer where customer_id = '"+ Session["customer_id"] +"'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if(rd.Read())
            {
                text_name.Value = rd["customer_name"].ToString();
                text_email.Value = rd["customer_email"].ToString();
                text_contact.Value = rd["customer_contact"].ToString();
                text_address.Value = rd["customer_address"].ToString();
            }
        }

        protected void btn_admin_login_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}