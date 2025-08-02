<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ferrari.aspx.cs" Inherits="FinelProject.Ferrari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body
        {
            background-color: #4b0000;
            color: white;
        }
        a
        {
            color: white;
        }
        h1
        {
            color: white;
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
    <h2 align="center">Scuderia Ferrari</h2>
    <img src="Ferrari.png" width="200" style="float:right"/>
    <br />
    <br />
    <p>For many, Ferrari and Formula 1 racing have become inseparable. The only team to have <br />
competed in every season since the world championship began, the Prancing Horse has grown <br />
from the humble dream of founder Enzo Ferrari to become one of the most iconic and recognised <br />
brands in the world. Success came quickly through the likes of Alberto Ascari and John Surtees, <br />
and continued – in amongst leaner times – with Niki Lauda in the 1970s and then Michael Schumacher <br />
in the 2000s, when Ferrari claimed a then unprecedented five consecutive title doubles, securing <br />
their status as the most successful and decorated team in F1 history...</p>
        <br />
        <br />
        <table style="float: right">
        <tr>
            <td><a href="CharlesLeclerc.aspx"><img src="Charles Leclerc.png" height="200"/></a></td>
            <td><img src="Carlos Sainz.png" height="200" /></td>
        </tr>
        </table>
    <table cellspacing="20">
    <tr>
        <td><h3>Full Team Name</h3></td>
        <td>Scuderia Ferrari HP</td>
    </tr>
    <tr>
        <td><h3>Driver Lineup</h3></td>
        <td>Charles Lecler, Carlos Sainz</td>
    </tr>
    <tr>
        <td><h3>Team Chife</h3></td>
        <td>Frédéric Vasseur</td>
    </tr>
    <tr>
        <td><h3>First Team Entry</h3></td>
        <td>1950</td>
    </tr>
    <tr>
        <td><h3>World Championship</h3></td>
        <td>16</td>
    </tr>
    <tr>
        <td><h3>Race Wins</h3></td>
        <td>249</td>
    </tr>
    <tr>
        <td><h3>Pole Positions</h3></td>
        <td>253</td>
    </tr>
    <tr>
        <td><h3>Fastest Laps</h3></td>
        <td>263</td>
    </tr>

</table>
</asp:Content>
