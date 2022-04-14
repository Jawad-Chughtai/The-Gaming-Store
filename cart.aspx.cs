using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace The_Gaming_Store
{
    public partial class cart : System.Web.UI.Page
    {
        SqlConnection con = db_con.getCon();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customer_id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                string query = @"select * from tbl_cart where customer_id = '"+ Session["customer_id"] +"' " ;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();

                SqlDataReader rd = cmd.ExecuteReader();
                int i = 0;
                int total_price = 0;
                cart_container.InnerHtml = "";
                while (rd.Read())
                {
                    i++;
                    int id = Convert.ToInt32(rd["cart_id"]);
                    string name = rd["product_name"].ToString();
                    int price = Convert.ToInt32(rd["price"]);
                    total_price += price;
                    cart_container.InnerHtml += string.Format(@"<div class='cart-item'>
                <label>Item # {0} :</label>
                <input type='number' class='id-value' disabled='disabled' value='{3}' id='unit{0}'/>
                <input type='text' class='name' disabled='disabled' value='{1}' id='name{0}' />
                <input type='number' class='unit_price' disabled='disabled' value='{2}' id='unit{0}'/>
                <button class='btn' id='btn{0}' onclick='getID({3});'>Delete</button>
            </div>", i, name, price, id);

                }
                grand_total.Value = total_price.ToString();
                con.Close();
                
                string del = Request.QueryString["deleteID"];
                
                if(del != null)
                {
                    deleteItem(Convert.ToInt32(del));
                }
            }
        }

        protected void deleteItem(int ID)
        {
            string query = @"delete from tbl_Cart where cart_id = '"+ ID +"'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("cart.aspx");
        }

        protected void btn_checkout_ServerClick(object sender, EventArgs e)
        {
            if (grand_total.Value == "0")
            {
                Response.Write("<script>alert('Cart is Empty.');</script>");
            }
            else
            {

                Response.Redirect("checkout.aspx");
            }
        }


    }
}