using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinelProject
{  
    public partial class admin : System.Web.UI.Page
    {
        public string usertable, errormsg, deletemsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("home.aspx");
            }

            string sqlusers = "SELECT * FROM Users";

            if (Request["search"] != null && Request["user2search"] != "")
            {
                string searchtext = Request["user2search"];
                string filter = Request["what2search"];
                sqlusers += " WHERE " + filter + "='" + searchtext + "'";

            }



            DataTable dt = MyAdoHelper.ExecuteDataTable("Database11.accdb", sqlusers);

            if (dt.Rows.Count == 0)
            {
                usertable = "<p> No Users Found </p>";
            }
            else
            {
                usertable = "<table class=\"leaderboard\" align=\"center\" cellspacing=\"30\" style=\" padding-bottom: 50px; border-radius:10px\">";
                usertable += "<th colspan=\"6\" style=\"height: 100px\"><h3 align=\"left\" style=\"margin-bottom: 0; width:200px; transform: translateY(+30px)\">User Information</h3><form align=\"right\" style=\"width: 320px; transform: translateX(+600px) translateY(-20px)\" method=\"post\"><input type=\"text\" placeholder=\"Search User\" name=\"user2search\" /><select name=\"what2search\"><option>--Filter--</option><option value=\"UserName\">Username</option><option value=\"FirstName\">First Name</option><option value=\"LastName\">Last Name</option><option value=\"Gender\">Gender</option><input type=\"submit\" name=\"search\" value=\"search\" /></form></th>";
                usertable += "<tr><th>Username</th><th>First Name</th><th>Last Name</th><th>Gender</th><th>Favorite Driver</th><th>Favorite Team</th></tr>";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    usertable += "<tr>";
                    usertable += "<td>" + dt.Rows[i]["UserName"].ToString() + "</td>";
                    usertable += "<td>" + dt.Rows[i]["FirstName"].ToString() + "</td>";
                    usertable += "<td>" + dt.Rows[i]["LastName"].ToString() + "</td>";
                    usertable += "<td>" + dt.Rows[i]["Gender"].ToString() + "</td>";
                    usertable += "<td>" + dt.Rows[i]["FavDriver"].ToString() + "</td>";
                    usertable += "<td>" + dt.Rows[i]["FavTeam"].ToString() + "</td>";
                }
                usertable += "</table>";
            }
            if (Request["delete"] != null)
            {
                string deleted = Request["what2delete"];
                string sqlcheckdelete = "SELECT * FROM Users WHERE UserName='" + deleted + "'";
                if (MyAdoHelper.IsExist(sqlcheckdelete, "Database11.accdb"))
                {
                    string sqldelete = "DELETE FROM Users WHERE UserName='" + deleted + "'";
                    MyAdoHelper.DoQuery("Database11.accdb", sqldelete);
                    Response.Redirect("admin.aspx");
                    deletemsg = "User Deleted";
                }
                else
                {
                    deletemsg = "No Users Found";
                }
            }
        }
        }
    }
