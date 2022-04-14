using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace The_Gaming_Store
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

        protected void btn_login_ServerClick(object sender, EventArgs e)
        {
            string query = @"select * from tbl_Customer where customer_email = '"+ text_email.Value +"' and customer_password = '"+ text_password.Value +"'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if(rd.Read())
            {
                Session["customer_id"] = Convert.ToInt32(rd["customer_id"]);
                Session["customer_name"] = rd["customer_name"].ToString();
                Response.Redirect("index.aspx");
            }

            else
            {
                Response.Write("<script>alert('Invalid email or password.')</script>");
            }

        }
    }
}