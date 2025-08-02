using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinelProject
{
    public partial class profile : System.Web.UI.Page
    {
        public string username, Fname, Lname, Gender, Favteam, Favdriver, Origin, pfp1, errormsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("home.aspx");
            if (Session["admin"] != null)
                Response.Redirect("home.aspx");

            username = Session["user"].ToString();
            string sql = "SELECT * FROM Users WHERE UserName='" + username + "'";
            DataTable dt = MyAdoHelper.ExecuteDataTable("Database11.accdb", sql);

            Fname = dt.Rows[0]["FirstName"].ToString();
            Lname = dt.Rows[0]["LastName"].ToString();
            Gender = dt.Rows[0]["Gender"].ToString();
            Favteam = dt.Rows[0]["FavTeam"].ToString();
            Favdriver = dt.Rows[0]["FavDriver"].ToString();

            if (Request["upload"] != null)
            {
                string pfp2 = Request.Params["pfp"];
                Session["pfp"] = pfp2;
                string sqlphoto = "UPDATE Users SET ProfilePicture='" + pfp2 + "' WHERE UserName='" + username + "'";
                MyAdoHelper.DoQuery("Database11.accdb", sqlphoto);
            }

            pfp1 = dt.Rows[0]["ProfilePicture"].ToString();

            if (Request["remove"] != null)
            {
                string sqlremovephoto = "UPDATE Users SET ProfilePicture = '' WHERE UserName='" + username + "'";
                MyAdoHelper.DoQuery("Database11.accdb", sqlremovephoto);
            }

            if (Request["dontdelete"] != null)
            {
                Response.Redirect("profile.aspx");
            }
            if (Request["delete"] != null)
            {
                string sqldelete = "DELETE FROM Users WHERE UserName='" + username + "'";
                MyAdoHelper.DoQuery("Database11.accdb", sqldelete);
                Session.Abandon();
                Response.Redirect("home.aspx");                

            }

            string oldpass = Request["oldpass"];
            string newpass = Request["newpass"];
            string confirmpass = Request["confirmpass"];


            if (Request["updatepass"] != null)
            {
                if (oldpass == dt.Rows[0]["PassWord"].ToString())
                {
                    if (oldpass != newpass)
                    {
                        if (newpass == confirmpass)
                        {
                            errormsg = "Password Updated";
                            string sqlpass = "UPDATE Users SET [PassWord]='" + newpass + "' WHERE UserName='" + username + "'";
                            MyAdoHelper.DoQuery("Database11.accdb", sqlpass);
                        }
                        else
                        {
                            errormsg = "The Passwords Must Match";
                        }
                    }
                    else
                    {
                        errormsg = "New Password Must Be Diffrent";
                    }
                }
                else
                {
                    errormsg = "Current Password Doesn't Match";
                }
            }
        }
    }
}