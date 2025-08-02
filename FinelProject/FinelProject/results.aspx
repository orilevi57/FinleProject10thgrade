<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="results.aspx.cs" Inherits="FinelProject.results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    body
    {
        background-color: #181414;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
        <tr>
            <th style="padding-right: 200px; padding-top: 50px; text-align:center"><a href="Cc.aspx"><h2>Constractors Championship</h2></a></th>
            <th style="padding-left: 200px; padding-top: 50px; text-align:center"><a href="Dc.aspx"><h2>Drivers Championship</h2></a></th>       
        </tr>
    </table>
</asp:Content>
