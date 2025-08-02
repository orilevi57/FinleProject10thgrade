using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinelProject
{
    public partial class Information : System.Web.UI.Page
    {
        public string username, Fname, Favteam, Favdriver;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["admin"] == null)
            {
                Response.Redirect("home.aspx");
            }

            if (Session["user"] != null)
            {
                username = Session["user"].ToString();
                string sql = "SELECT * FROM Users WHERE UserName='" + username + "'";
                DataTable dt = MyAdoHelper.ExecuteDataTable("Database11.accdb", sql);

                Fname = dt.Rows[0]["FirstName"].ToString();
                Favteam = dt.Rows[0]["FavTeam"].ToString() + ".PNG";
                Favdriver = dt.Rows[0]["FavDriver"].ToString() + ".PNG";
            }
            else if (Session["admin"] != null)
            {
                Fname = "Admin";
            }
        }
    }
}