<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinelProject.Login" %>
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <form method="post" >
    <table align="center" cellspacing="15px" style="text-align: center">
        <tr>
            <td><h2 style="text-align:left">Login</h2></td>
        </tr>
        <tr>
            <td><input type="text" name="username" placeholder="Username" style="height:35px; width:250px"/></td>
        </tr>
        <tr>
            <td><input type="password" name="pass" placeholder="Password" style="height:35px; width:250px"/></td>
        </tr>
        <tr>
            <td style="text-align: left;"><a href="register.aspx" style="color:white"><h5 class="GoUp" style="margin-top: 0; margin-bottom:0">I Don't Have An Account Yet</h5></a></td>
        </tr>
        <tr>
            <td><input type="submit" name="submit" value="Login"/></td>
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
