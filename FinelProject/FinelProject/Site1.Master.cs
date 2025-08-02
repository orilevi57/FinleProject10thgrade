using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinelProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string pfp, username, logo, navbarbg, navbarposition, firstname, lastname;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                username = Session["user"].ToString();
                string sql = "SELECT ProfilePicture FROM Users WHERE UserName='" + username + "'";
                if (MyAdoHelper.IsExist("Database11.accdb", sql))
                {
                    string sql2 = "SELECT * FROM Users WHERE UserName='" + username + "'";
                    DataTable dt = MyAdoHelper.ExecuteDataTable("Database11.accdb", sql2);

                    pfp = dt.Rows[0]["ProfilePicture"].ToString();
                    firstname = dt.Rows[0]["FirstName"].ToString();
                    lastname = dt.Rows[0]["LastName"].ToString();

                    if (pfp == "")
                    {
                        pfp = "profile.png";
                    }
                }
            }

            string CurrentPage = Request.Url.ToString();
            if (CurrentPage == "http://localhost:57716/home.aspx" || CurrentPage == "http://localhost:57716/teams.aspx" || CurrentPage == "http://localhost:57716/drivers.aspx" || CurrentPage == "http://localhost:57716/Cc.aspx" || CurrentPage == "http://localhost:57716/Dc.aspx" || CurrentPage == "http://localhost:57716/Login.aspx" || CurrentPage == "http://localhost:57716/register.aspx" || CurrentPage == "http://localhost:57716/profile.aspx" || CurrentPage == "http://localhost:57716/Information.aspx" || CurrentPage == "http://localhost:57716/RedBull.aspx" || CurrentPage == "http://localhost:57716/Haas.aspx" || CurrentPage == "http://localhost:57716/Ferrari.aspx" || CurrentPage == "http://localhost:57716/MaxVerstappen.aspx" || CurrentPage == "http://localhost:57716/CharlesLeclerc.aspx" || CurrentPage == "http://localhost:57716/LewisHamilton.aspx" || CurrentPage == "http://localhost:57716/EstebanOcon.aspx" || CurrentPage == "http://localhost:57716/OliverBearman.aspx" || CurrentPage == "http://localhost:57716/admin.aspx")
            {
                logo = "formulalogored.png";
            }
            else if (CurrentPage == "http://localhost:57716/RB.aspx" || CurrentPage == "http://localhost:57716/Mercedes.aspx" || CurrentPage == "http://localhost:57716/AstonMartin.aspx" || CurrentPage == "http://localhost:57716/Williams.aspx" || CurrentPage == "http://localhost:57716/CarlosSainz.aspx" || CurrentPage == "http://localhost:57716/GeorgeRussell.aspx" || CurrentPage == "http://localhost:57716/FernandoAlonso.aspx" || CurrentPage == "http://localhost:57716/AlexAlbon.aspx" || CurrentPage == "http://localhost:57716/LiamLawson.aspx" || CurrentPage == "http://localhost:57716/YukiTsunoda.aspx" || CurrentPage == "http://localhost:57716/LanceStroll.aspx")
            {
                logo = "formulalogowhite.png";
            }
            else if (CurrentPage == "http://localhost:57716/LandoNorris.aspx" || CurrentPage == "http://localhost:57716/OscarPiastri.aspx" || CurrentPage == "http://localhost:57716/PierrGasly.aspx" || CurrentPage == "http://localhost:57716/NicoHulkenberg.aspx" || CurrentPage == "http://localhost:57716/JackDoohan.aspx" || CurrentPage == "http://localhost:57716/Alpine.aspx" || CurrentPage == "http://localhost:57716/KickSauber.aspx" || CurrentPage == "http://localhost:57716/McLaren.aspx")
            {
                logo = "formulalogoblack.png";
            }


            if (CurrentPage == "http://localhost:57716/home.aspx" || CurrentPage == "http://localhost:57716/teams.aspx" || CurrentPage == "http://localhost:57716/drivers.aspx" || CurrentPage == "http://localhost:57716/Cc.aspx" || CurrentPage == "http://localhost:57716/Dc.aspx" || CurrentPage == "http://localhost:57716/Login.aspx" || CurrentPage == "http://localhost:57716/register.aspx" || CurrentPage == "http://localhost:57716/profile.aspx" || CurrentPage == "http://localhost:57716/Information.aspx" || CurrentPage == "http://localhost:57716/admin.aspx")
            {
                navbarbg = "black";
                navbarposition = "fixed";
            }
            else
            {
                navbarbg = "transperent";
                navbarposition = "absolute";
            }
        }
    }
}