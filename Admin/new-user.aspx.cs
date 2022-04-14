using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Gaming_Store.Admin
{
    public partial class new_user : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_new_user_ServerClick(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(text_fullname.Value))
            {
                Response.Write("<script>alert('text box empty');</script>");
            }
            else if (string.IsNullOrWhiteSpace(text_username.Value))
            {
                Response.Write("<script>alert('text box empty');</script>");
            }
            else if (string.IsNullOrWhiteSpace(text_password.Value))
            {
                Response.Write("<script>alert('text box empty');</script>");
            }
            else if (string.IsNullOrWhiteSpace(text_confirm_password.Value))
            {
                Response.Write("<script>alert('text box empty');</script>");
            }
            else if(user_image.HasFile)
            {
                string img = System.IO.Path.GetExtension(user_image.FileName);
                if (img == ".jpg" || img == ".jpeg" || img == ".png" || img == ".ico")
                {
                    img = user_image.FileName;
                    string loc = Server.MapPath("img/user/" + img);
                    user_image.SaveAs(loc);
                    string query = @"insert into tbl_user(user_full_name, username, user_password, user_contact, user_type, user_image) 
                        values('" + text_fullname.Value + "', '" + text_username.Value + "', '" + text_password.Value + "', '" + text_contact.Value + "', '" + text_usertype.Value + "', '" + img + "')";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("new-user.aspx");
                }
            }
        }
    }
}