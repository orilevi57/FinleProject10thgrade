<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="FinelProject.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body
        {
            color: white;
            background-color: #181414;
        }
        a
        {
            color: red;
        }
        tr
        {
            padding-top: 10px;
        }
        td
        {
            padding-right: 20px;
        }
        #popup
        {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: auto;
            height: auto;
            background-color: rgb(1, 24, 42);
            justify-content: center;
            align-items: center;
            border-radius: 10px;
            box-shadow: 0px 0px 1px 100vmax rgba(0,0,0,0.8);
        }
        .popup-content
        {
            text-align: center;
            width: 300px;
            padding: 20px;
        } 
        .edit-button{
            background-color: transparent;
            padding: 0;
            margin: 0;
            border: none;
        }
        .edit-button p{
            font-family: 'Formula1 Display'
        }
        .editform h2{
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <h2>Hello <%=Fname %> </h2>
   <div id="userInformation" style="display: block;">

    <table cellspacing="20" align="center" style="background-color: rgba(255, 255, 255, .6); color: black; border-radius: 10px;">

        <tr>
            <td colspan="2" style="text-align: right;">
                <button onclick="showEdit();" class="edit-button"><p>Edit &#x270E;</p></button>
            </td>
        </tr>
        <tr rowspan="2">
        <td>
            <div>
        <table align="left">
        <tr>
            <td colspan="2"><h2>User Information</h2></td>
        </tr>
        <tr>
            <td><h3>Username</h3></td>
            <td><%=username %></td>
        </tr>
        <tr>
            <td><h3>First name</h3></td>
            <td><%=Fname %></td>
        </tr>
        <tr>
            <td><h3>Last name</h3></td>
            <td><%=Lname %></td>
        </tr>
        <tr>
            <td><h3>Gender</h3></td>
            <td><%=Gender %></td>
        </tr>
        <tr>
            <td><h3>Favorite Team</h3></td>
            <td><%=Favteam %></td>
        </tr>
        <tr>
            <td><h3>Favorite Driver</h3></td>
            <td><%=Favdriver %></td>
        </tr>
            <tr>
            <td>
                <h3>Profile Picture</h3>
            </td>
        </tr>
        </table>
        <form method="post">
        <table align="left">
        <tr>
            <td>              
                <input type="text" name="pfp" placeholder="Enter Profile Picture URL" />
            </td>
            <td>
                <input type="submit" name="upload" value="Upload" />
            </td>
            <td>
                <input type="submit" name="remove" value="Remove" />
            </td>
        </tr>
        <tr>
        </tr>
        </table>
            </form>
            <form method="post">
        <table>
        <tr>
            <td>
                <h4>Change Password</h4>
            </td>
        </tr>
        <tr>
            <td>
                <input type="password" name="oldpass" placeholder="Enter Old Password" />
            </td>
        </tr>
        <tr>
            <td>
                <input type="password" name="newpass" placeholder="New Password" />
            </td>
        </tr>
        <tr>
            <td>
                <input type="password" name="confirmpass" placeholder="Confirm New Password" />
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" name="updatepass" value="Update" />
            </td>
        </tr>
            <tr>
                <td>
                    <h4 style="color: firebrick;"><%=errormsg %></h4>
                </td>
            </tr>
    </table>
                </form>
                </div>

        </td>
            <%if (pfp1 != "")
            {%>
            <td style="vertical-align: top; padding-top: 5vh"><img src=<%=pfp1 %> height="200" style="border-radius:100px" /></td>
            <%} %>
            <%if (pfp1 == "")
                {%>
            <td style="vertical-align: top; padding-top: 5vh"><img src="profile.png" height="200" style="border-radius:100px" /></td>
            <%} %>
        </tr>
        <tr>
            <td></td>
        </tr>

        <tr>
           <td>                
             <input id="delete" type="submit" name="delete" value="Delete Account" style="background-color:red; color:white;" />
           </td>
        </tr>

     </table>

   </div>

    <div id="popup" class="popup">
        <div class="popup-content">
            <h3>Are You Sure You Want To Delete This Account</h3>
            <h4>You won't be able to restore it</h4>
            <form method="post">
                <table align="center">
                    <tr>
                        <td style="padding-right: 50px;">
                            <input type="submit" name="delete" value="Yes" style="background-color: red; color: white" />
                        </td>
                        <td>
                            <input type="submit" name="dontdelete" value="No" />

                        </td>
                    </tr>
                </table>                            
            </form>

        </div>
    </div>

    <div id="editInformation">
    <table cellspacing="20" align="center" style="background-color: rgba(255, 255, 255, .6); color: black; border-radius: 10px;">
        <tr>
            <td>
                    <form method="post" class="editform">
    <table cellspacing="15px" align="center" style="text-align:left">
        <tr>
            <td><h2 style="text-align:left;">Registretion</h2></td>
        </tr>
        <tr>
            <td>First Name</td>
            <td>Last Name</td>
        </tr>
        <tr>
            <td><input type="text" name="Fname" placeholder="Enter First Name" style="height:35px; width:250px"/></td>
            <td><input type="text" name="Lname" placeholder="Enter Last Name" style="height:35px; width:250px"/></td>
        </tr>
        <tr>
            <td><h3>How Did You Hear About Us</h3></td>
        </tr>
        <tr>
            <td colspan="2"><input type="checkbox" name="q1" value="internet"/>Internet   
            <input type="checkbox" name="q1" value="social media" />Social Media
            <input type="checkbox" name="q1" value="other" />Other</td>
        </tr>
        <tr>
            <td><h3 style="text-align:left";>Gender</h3></td>
            <td><h3 style="text-align:left;">Your Favorites</h3></td>
        </tr>
        <tr>
            <td style="text-align:left"><input type="radio" name="gender" value="male"/>Male            
            <input type="radio" name="gender" value="female"/>Female</></td>
            <td>
                <select name="favteam" style="text-align:center">
                <option value="">--Select Team--</option>
                <option value="Red bull">Red Bull</option>
                <option value="Ferrari">Ferrari</option>
                <option value="McLaren">McLaren</option>
                <option value="Mercedes">Mercedes</option>
                <option value="Aston Martin">Aston Martin</option>
                <option value="Haas">Haas</option>
                <option value="Williams">Williams</option>
                <option value="Kick Sauber">Kick Sauber</option>
                <option value="RB">RB</option>
                <option value="Alpine">Alpine</option>
                </select>
                <select name="favdriver" style="text-align:center">
                <option value="">--Select Driver--</option>
                <option value="Max Verstappen">Max Verstappen</option>
                <option value="Lewis Hamilton">Lewis Hamilton</option>
                <option value="Lando Norris">Lando Norris</option>
                <option value="George Russlle">George Russelle</option>
                <option value="Fernando Alonso">Fernando Alonso</option>
                <option value="Carlos Sainz">Carlos Sainz</option>
                <option value="Charles Lecler">Charles Leclerc</option>
                <option value="Liam Lawson">Liam Lawson</option>
                <option value="Alex Albon">Alex Albon</option>
                <option value="Sergio Perez">Sergio Perez</option>
                <option value="Pierr Gasly">Pierr Gasly</option>
                <option value="Jack Doohan">Jack Doohan</option>
                <option value="Oscar Piastri">Oscar Piastri</option>
                <option value="Yuki Tsunoda">Yuki Tsunoda</option>
                <option value="Lance Stroll">Lance Stroll</option>
                <option value="Nico Hulkenberg">Nico Hulkenberg</option>
                <option value="Kevin Maggneson">Kevin Maggneson</option>
                <option value="Oliver Bearman">Oliver Bearman</option>
                <option value="Esteban Ocon">Esteban Ocon</option>
                </select></td>
            
        </tr>
        <tr>
            <td style="text-align: left">
                <a href="Login.aspx" ><h5 class="GoUp" style="margin-top: 7px; margin-bottom: 7px;">I Already Have An Account</h5></a>
            </td>
        </tr>
        <tr>
            <td ><input type="submit" name="submit" value="Register"/></td>
            <td style="text-align:right;"><input type="reset" value="Reset" /></td>
        </tr>
    </table>
        </form>

            </td>
        </tr>
    </table>
    </div>
    <script>
        document.getElementById('delete').addEventListener('click', function (event) {
            document.getElementById('popup').style.display = 'flex';
        });


        function showEdit() {
            document.getElementById("userInformation").style.display = "none";
            document.getElementById("editInformation").style.display = "block"
        }
    </script>
</asp:Content>
