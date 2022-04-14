using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace The_Gaming_Store
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signup_ServerClick(object sender, EventArgs e)
        {
            string query = @"insert into tbl_customer(customer_name, customer_email, customer_password, customer_contact, customer_address, customer_status)
values('" + text_fullname.Value +"', '" + text_email.Value +"', '" + text_password.Value +"', '" + text_contact.Value +"', '" + text_address.Value +"', 'Active')";

            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("login.aspx");

        }


    }
}