using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace The_Gaming_Store
{
    public partial class single_product : System.Web.UI.Page
    {
        public static string name;
        public static string img;
        public static int price;
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {
            string getID = Request.QueryString["id"];

            string query = "select * from tbl_Product where product_id = " + getID;
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                name = rd["product_name"].ToString();
                img = rd["product_img"].ToString();
                price = Convert.ToInt32(rd["product_price"]);
            }
            con.Close();
            if (!IsPostBack)
            {
                getProductList();
                getBrandList();
                displayProducts();
            }
        }
        protected void getBrandList()
        {
            string query = @"select top 10 * from tbl_Vendor order by vendor_name";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                string brand_id = rd["vendor_id"].ToString();
                string brand_name = rd["vendor_name"].ToString();
                brands.InnerHtml += @"<li><a href='product-list.aspx?brand=" + brand_id + "'>" + brand_name + "</a></li>";
            }
            con.Close();
        }

        protected void getProductList()
        {
            string query = @"select top 10 * from tbl_Categories order by cat_name";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                string cat_id = rd["cat_id"].ToString();
                string cat_name = rd["cat_name"].ToString();
                products.InnerHtml += @"<li><a href='product-list.aspx?cat=" + cat_id + "'>" + cat_name + "</a></li>";
            }
            con.Close();
        }

        protected void displayProducts()
        {
            string query = @"select top 6 * from tbl_Product";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();

            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                string id = rd["product_id"].ToString();
                string img = rd["product_img"].ToString();
                string name = rd["product_name"].ToString();
                int price = Convert.ToInt32(rd["product_price"]);
                product_container.InnerHtml += string.Format(@"<div class='product-item'>
                        <div class='product-img'>
                            <a href='single-product.aspx?id={3}'>
                                <img src='admin/img/product/{0}' /></a>
                        </div>
                        <div class='product-details'>
                            <a href='single-product.aspx'>
                                <p>{1}</p>
                                <p style='color: tomato'>Rs. {2}</p>
                            </a>
                        </div>
                    </div>", img, name, price, id);
            }

            con.Close();
        }

        protected void btn_cart_ServerClick(object sender, EventArgs e)
        {
            if (Session["customer_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                string query = @"insert into tbl_Cart(customer_id, product_name, price) values('"+ Convert.ToInt32( Session["customer_id"]) +"', '"+ name +"', '"+ price +"')";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Item added into cart.')</script>");
            }
        }
    }
}