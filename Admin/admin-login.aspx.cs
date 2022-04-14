using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Gaming_Store.Admin
{
    public partial class admin_login : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.RemoveAll();
                }
        }

        protected void btn_admin_login_ServerClick(object sender, EventArgs e)
        {
            string query = @"select * from tbl_user where username = '"+ text_username.Value +"' and user_password = '"+ text_password.Value +"'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if(rd.Read())
            {
                Session["user_id"] = rd["user_full_name"].ToString();
                Response.Redirect("admin-dashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid username or password.')</script");
            }
        }
    }
}