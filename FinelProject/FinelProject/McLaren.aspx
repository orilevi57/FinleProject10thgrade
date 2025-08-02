<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="McLaren.aspx.cs" Inherits="FinelProject.McLaren" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body
        {
            background-color: #FF8000;
            color: black;
        }
        a
        {
            color: black;
        }
        h1
        {
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
    <h2 align="center">McLaren F1 Team</h2>
    <img src="maclarenlogo1.png" width="350" style="float:right"/>
    <br />
    <br />
    <p>Since entering the sport in 1966 under the guidance and restless endeavour of <br />
eponymous founder Bruce, McLaren's success has been nothing short of breathtaking. <br />
Five glittering decades have yielded countless victories, pole positions and podiums, <br />
not to mention eight constructors' championships. What's more, some of the sport's <br />
greatest drivers made their names with the team, including Emerson Fittipaldi, <br />
Ayrton Senna, Mika Hakkinen and Lewis Hamilton...</p>
        <br />
        <br />
        <table style="float: right">
        <tr>
            <td><a href="LandoNorris.aspx"><img src="Lando Norris.png" height="200"/></a></td>
            <td><img src="Oscar Piastri.png" height="200" /></td>
        </tr>
        </table>
        <table cellspacing="20">
    <tr>
        <td><h3>Full Team Name</h3></td>
        <td>McLaren Formula 1 Team</td>
    </tr>
    <tr>
        <td><h3>Driver Lineup</h3></td>
        <td>Lando Norris, Oscar Piastri</td>
    </tr>
    <tr>
        <td><h3>Team Chife</h3></td>
        <td>Andrea Stella</td>
    </tr>
    <tr>
        <td><h3>First Team Entry</h3></td>
        <td>1966</td>
    </tr>
    <tr>
        <td><h3>World Championship</h3></td>
        <td>8</td>
    </tr>
    <tr>
        <td><h3>Race Wins</h3></td>
        <td>188</td>
    </tr>
    <tr>
        <td><h3>Pole Positions</h3></td>
        <td>165</td>
    </tr>
    <tr>
        <td><h3>Fastest Laps</h3></td>
        <td>171</td>
    </tr>

</table>

</asp:Content>
    