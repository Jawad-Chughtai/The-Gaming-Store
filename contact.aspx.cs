using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace The_Gaming_Store
{
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_send_feedback_ServerClick(object sender, EventArgs e)
        {

            if (text_email.Value == "" || text_feedback.Value == "")
            {
                    Response.Write("<script>alert('Please fill in the fields.')</script>");
            }
            else
            {
                string query = @"insert into tbl_Feedback (feedback_email, feedback_description, feedback_status)
            values ('" + text_email.Value + "', '" + text_feedback.Value + "', 'Unread')";
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Thanks for your valuable feedback.')</script>");
            }
        }
    }
}