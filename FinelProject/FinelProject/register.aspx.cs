using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinelProject
{
    public partial class register : System.Web.UI.Page
    {
        public string errormsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["submit"] != null)
            {
                string username = Request["username"];
                string sql = "SELECT * FROM Users WHERE UserName='" + username + "'";
                if (MyAdoHelper.IsExist("Database11.accdb", sql))
                {
                    errormsg = "Username already exsists";
                }
                else
                {
                    string pass = Request["password"];
                    string Fname = Request["Fname"];
                    string Lname = Request["Lname"];
                    string origin = Request["q1"];
                    string gender = Request["gender"];
                    string favteam = Request["favteam"];
                    string favdriver = Request["favdriver"];
                    string profilepicture = "";

                    string sqlInsert = "INSERT INTO Users VALUES('" + username + "','" + Fname + "','" + Lname + "','" + pass + "','" + gender + "','" + favdriver + "','" + favteam + "','" + origin + "','" + profilepicture + "')";
                    MyAdoHelper.DoQuery("Database11.accdb", sqlInsert);
                    Session["user"] = username;
                    Response.Redirect("home.aspx");
                }
            }
        }
    }
}