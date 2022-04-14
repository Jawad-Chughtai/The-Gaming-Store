using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace The_Gaming_Store
{
    public partial class checkout : System.Web.UI.Page
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
                {
                    string query = @"select * from tbl_Cart where customer_id = '" + Convert.ToInt32(Session["customer_id"]) + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    int i = 0;
                    int total = 0;
                    while (rd.Read())
                    {
                        i++;
                        string name = rd["product_name"].ToString();
                        int price = Convert.ToInt32( rd["price"]);
                        TableRow row = new TableRow();
                        TableCell cell1 = new TableCell();
                        TableCell cell2 = new TableCell();
                        TableCell cell3 = new TableCell();
                        cell1.Text = "Item # " + i;
                        cell2.Text = name;
                        cell3.Text = "Rs. " + price.ToString();
                        row.Cells.Add(cell1);
                        row.Cells.Add(cell2);
                        row.Cells.Add(cell3);
                        table.Rows.Add(row);
                        total = total + price;
                    }
                    TableRow row1 = new TableRow();
                    TableCell cells1 = new TableCell();
                    TableCell cells2 = new TableCell();
                    TableCell cells3 = new TableCell();
                    cells1.Text = "Total :";
                    cells2.Text = "";
                    cells3.Text = "Rs. " + total.ToString();
                    row1.Cells.Add(cells1);
                    row1.Cells.Add(cells2);
                    row1.Cells.Add(cells3);
                    table.Rows.Add(row1);
                    con.Close();

                }
            }
        }

        protected void btn_order_ServerClick(object sender, EventArgs e)
        {
            string query = "";
            foreach (TableRow row in table.Rows)
            {
                string name = row.Cells[1].Text;
                string price = row.Cells[2].Text;
                price = price.Remove(0, 4);
                if (name == "Name" || price == "Price")
                {
                    
                }
                else if (name == "")
                {

                }
                else
                {
                    query = @"insert into tbl_Order(product_name, price, customer_id, status) 
                    values('"+ name +"', '"+ Convert.ToInt32(price) +"', '"+ Convert.ToInt32(Session["customer_id"]) +"', 'Pending')";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            query = @"delete from tbl_Cart where customer_id = '" + Convert.ToInt32(Session["customer_id"]) + "'";
            SqlCommand cmd1 = new SqlCommand(query, con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Order has been placed.');window.location.href='index.aspx';</script>");

        }
    }
}