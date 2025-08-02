<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="FinelProject.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body
        {
            background-color: #181414;
        }
        a
        {
            color: red
        }
        button{
            color: white;
        }
        .leaderboard
        {
            width: 50%;
            margin: auto;
            border-collapse: collapse;
        }
        .leaderboard th{
            padding: 5px;
            background-color: black;
            color: white;
            
        }
        .leaderboard td, .leaderboard th{
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
            
        }
        .leaderboard tr:nth-child(even){
            background-color: #f2f2f2;
        }
        .leaderboard tr:nth-child(odd){
            background-color: #bdbdbd;
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
    <%=usertable %>
    <br />

    <form method="post" style="transform: translateX(+480px)">
        <input type="text" placeholder="Enter user to delete" name="what2delete" />

        <input id="delete" style="background-color: red; color: white" type="submit" name="delete" value="Delete Account" />
    </form>
</asp:Content>
