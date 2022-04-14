using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace The_Gaming_Store.Admin
{
    public partial class new_product : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_product_ServerClick(object sender, EventArgs e)
        {
            if (prod_image.HasFile)
            {
                string img = System.IO.Path.GetExtension(prod_image.FileName);
                if (img == ".jpg" || img == ".jpeg" || img == ".png" || img == ".ico")
                {
                    img = prod_image.FileName;
                    string loc = Server.MapPath("img/product/" + img);
                    prod_image.SaveAs(loc);


                    string query = @"insert into tbl_Product (product_name, cat_id, sub_cat_id, product_price, product_stock, product_description, vendor_id, product_img, product_date)
                        values ('" + text_product_name.Value + "', '" + ddl_category.SelectedValue + "', '" + ddl_subcat.SelectedValue + "', '" + text_price.Value + "', '" + text_stock.Value + "', '" + text_description.Value + "', '" + ddl_vendor.SelectedValue + "', '" + img +"', '"+ product_date.Value +"')";

                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("new-product.aspx");

                }
            }
        }

    }
}