using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace The_Gaming_Store
{
    public partial class main : System.Web.UI.MasterPage
    {
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customer_name"] == null)
            {
                li_login.Visible = true;
                li_user.Visible = false;
                li_cart.Visible = false;
            }

            else
            {
                li_login.Visible = false;
                li_cart.Visible = true;
            }
            if (!IsPostBack)
            {
                getProductList();
                getBrandsForNav();
            }
        }
        protected void getProductList()
        {
            string query = @"select top 5 * from tbl_Categories order by cat_name";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                string cat_id = rd["cat_id"].ToString();
                string cat_name = rd["cat_name"].ToString();
                li_products.InnerHtml += @"<li><a href='product-list.aspx?cat=" + cat_id + "'>" + cat_name + "</a></li>";
            }
            con.Close();
        }

        protected void getBrandsForNav()
        {
            string query = @"select top 5 * from tbl_Vendor order by vendor_name";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                string brand_id = rd["vendor_id"].ToString();
                string brand_name = rd["vendor_name"].ToString();
                li_brands.InnerHtml += @"<li><a href='product-list.aspx?brand=" + brand_id + "'>" + brand_name + "</a></li>";
            }
            con.Close();
        }
    }
}