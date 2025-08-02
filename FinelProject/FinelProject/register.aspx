<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FinelProject.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
        body
        {
            background-color: #181414;
            color: white;
        }
        a
        {
            color: red;
        }
        h1
        {
            color: red;
        }
        h5
        {
            transition: ease 0.3s;
        }
        button
        {
            color: white;
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
    <form method="post">
    <table cellspacing="15px" align="center" style="text-align:left">
        <tr>
            <td><h2 style="text-align:left; color: white;">Registretion</h2></td>
        </tr>
        <tr>
            <td style="color: white">First Name</td>
            <td style="color: white">Last Name</td>
        </tr>
        <tr>
            <td><input type="text" name="Fname" placeholder="Enter First Name" style="height:35px; width:250px"/></td>
            <td><input type="text" name="Lname" placeholder="Enter Last Name" style="height:35px; width:250px"/></td>
        </tr>
        <tr>
            <td style="color: white">Username</td>
            <td style="color: white">Password</td>
        </tr>
        <tr>
            <td><input type="text" name="username" placeholder="Enter Username" style="height:35px; width:250px"/></td>
            <td><input type="password" name="password" placeholder="Entre Password" style="height:35px; width:250px"/></td>
        </tr>
        <tr>
            <td><h3 style="color: white">How Did You Hear About Us</h3></td>
        </tr>
        <tr>
            <td colspan="2" style="color: white"><input type="checkbox" name="q1" value="internet"/>Internet   
            <input type="checkbox" name="q1" value="social media" />Social Media
            <input type="checkbox" name="q1" value="other" />Other</td>
        </tr>
        <tr>
            <td><h3 style="text-align:left; color: white">Gender</h3></td>
            <td><h3 style="text-align:left; color: white">Your Favorites</h3></td>
        </tr>
        <tr>
            <td style="text-align:left"><input type="radio" name="gender" value="male"/>Male            
            <input type="radio" name="gender" value="female"/>Female</></td>
            <td style="color: white">
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
                <a href="Login.aspx" style="color:white"><h5 class="GoUp" style="margin-top: 7px; margin-bottom: 7px;">I Already Have An Account</h5></a>
            </td>
        </tr>
        <tr>
            <td style="color: white"><input type="submit" name="submit" value="Register"/></td>
            <td style="text-align:right; color: white"><input type="reset" value="Reset" /></td>
        </tr>
    </table>
        </form>
        <p align="center" style="color:red;">
    <% =errormsg %>
    </p>
 <script>
     document.querySelectorAll('.GoUp').forEach(a => {
         a.addEventListener("mouseover", () => {
             a.style.transform = "translateY(-2px)";
             a.style.color = "lightgrey";
         });
         a.addEventListener("mouseout", () => {
             a.style.transform = "translate(0)";
             a.style.color = "white";
         });
     });
 </script>
</asp:Content>
