using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Gaming_Store.Admin
{
    public partial class sub_categories : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_sub_category_ServerClick(object sender, EventArgs e)
        {
            string query = @"insert into tbl_SubCat (sub_cat_name, cat_id) values('"+ text_sub_category.Value +"', '"+ ddl_category.SelectedValue +"')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Sub Category has been added successfully.')</script>");
        }
    }
}