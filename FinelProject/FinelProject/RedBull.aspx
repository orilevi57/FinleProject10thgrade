<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RedBull.aspx.cs" Inherits="FinelProject.RedBull" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body
        {    
            background-color: #01182a;
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
        <h2 align="center">Red Bull Racing</h2>
        <img src="Red Bull.png" width="350" style="float:right; background-color:rgba(1, 24, 42, .8); border-radius:10px" /> 
    <br />
    <br />

    <table align="left" style="background-color:rgba(1, 24, 42, .8)">
        <tr>
            <td>
                Red Bull were no strangers to F1 - as sponsors - prior to formally <br />
                entering as a works team in 2004. Nonetheless, the scale of their <br />
                success over the following decade was staggering. After a first podium <br />
                in 2006, the team hit their stride in 2009, claiming six victories and <br />
                second in the constructors' standings. Over the next four seasons they <br />
                were a tour de force, claiming consecutive title doubles between 2010 and <br />
                2013, with Sebastian Vettel emerging as the sport's youngest quadruple champion. <br />
                Now they are recapturing that glory with an equally exciting talent – one named <br />
                Max Verstappen…
            </td>

        </tr>

    </table>
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
        <table style="float: right; background-color:rgba(1, 24, 42, .8)">
        <tr>
            <td><a href="MaxVerstappen.aspx"><img src="Max Verstappen.png" height="200"/></a></td>
            <td><img src="Sergio Perez.png" height="200" /></td>
        </tr>
        </table>
        <table cellspacing="20">           
            <tr>
                <td><h3>Full Team Name</h3></td>
                <td>Oracle Red Bull Racing</td>
            </tr>
            <tr>
                <td><h3>Driver Lineup</h3></td>
                <td>Max Verstappen, Sergio Perez</td>
            </tr>
            <tr>
                <td><h3>Team Chife</h3></td>
                <td>Christian Horner</td>
            </tr>
            <tr>
                <td><h3>First Team Entry</h3></td>
                <td>1997</td>
            </tr>
            <tr>
                <td><h3>World Championship</h3></td>
                <td>6</td>
            </tr>
            <tr>
                <td><h3>Race Wins</h3></td> 
                <td>121</td>
            </tr>
            <tr>
                <td><h3>Pole Positions</h3></td>
                <td>106</td>
            </tr>
            <tr>
                <td><h3>Fastest Laps</h3></td>
                <td>99</td>
            </tr>

        </table>

</asp:Content>
