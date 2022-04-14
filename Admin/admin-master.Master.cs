using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Gaming_Store.Admin
{
    public partial class admin_master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("admin-login.aspx");
            }
            else
            {
                user_profile.InnerText = Session["user_id"].ToString();
            }
        }
    }
}