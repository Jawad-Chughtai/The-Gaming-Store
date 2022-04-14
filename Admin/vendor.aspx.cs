using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Gaming_Store.Admin
{
    public partial class vendor : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_vendor_ServerClick(object sender, EventArgs e)
        {
            string img = System.IO.Path.GetExtension(vendor_image.FileName);
            if (img == ".jpg" || img == ".jpeg" || img == ".png" || img == ".ico")
            {
                img = vendor_image.FileName;
                string loc = Server.MapPath("img/logo/" + img);
                vendor_image.SaveAs(loc);

                string query = @"insert into tbl_Vendor (vendor_name, vendor_email, vendor_description, vendor_logo)
                                values('"+ text_vendor_name.Value +"', '"+ text_vendor_email.Value +"', '"+ text_description.Value +"', '"+ img +"')";

                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("vendor.aspx");
            }
        }
    }
}