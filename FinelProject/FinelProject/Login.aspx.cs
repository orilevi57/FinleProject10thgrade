using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinelProject
{
    public partial class Login : System.Web.UI.Page
    {
        public string errormsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["submit"] !=null)
            {
                string username = Request["username"];
                string password = Request["pass"];
                if (username == "admin")
                {
                    if (password == "admin123")
                    {   
                        Session["admin"] = username;
                        Response.Redirect("admin.aspx");
                    }
                    else
                    {
                        errormsg = "Login Failed";
                    }
                }
                else
                {
                    string sql_user = "SELECT * FROM Users WHERE UserName='" + username + "' AND PassWord='" + password + "'";
                    if (MyAdoHelper.IsExist("Database11.accdb", sql_user))
                    {
                        Session["user"] = username;
                        Response.Redirect("home.aspx");
                        
                    }
                    else
                    {
                        errormsg = "Invalid Login";
                    }
                    
                }
                    
            }
        }
    }
}