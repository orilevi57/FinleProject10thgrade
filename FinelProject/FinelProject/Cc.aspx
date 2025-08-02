<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cc.aspx.cs" Inherits="FinelProject.Cc" %>
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
        button
        {
            color: white;
        }
        .GoUp{
            transition: ease 0.2s;
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
    <h1 style="text-align:left; color: white; padding-left:40px;">2024 Constractors Championship</h1>
    <table align="center" style="padding-top:100px; padding-bottom: 50px;">
        <tr>
            <th style="padding-right: 300px; padding-top: 50px">POS.</th>
            <th style="padding-right: 500px; padding-top: 50px">TEAM</th>
            <th style="padding-top: 50px">PTS.</th>
        </tr>
        <tr>
            <td style="padding-top: 20px">1</td>
            <td  style="padding-top: 20px"><a href="McLaren.aspx" class="GoUp" style="color: white; display:inline-block">McLaren</a></td>
            <td style="padding-top: 20px">608</td>
        </tr>
        <tr>
            <td style="padding-top: 20px">2</td>
            <td style="padding-top: 20px"><a href="Ferrari.aspx" class="GoUp" style="color: white; display:inline-block">Ferrari</a></td>
            <td style="padding-top: 20px">584</td>
        </tr>
        <tr>
            <td style="padding-top: 20px">3</td>
            <td style="padding-top: 20px"><a href="RedBull.aspx" class="GoUp" style="color: white; display:inline-block">Red Bull Racing</a></td>
            <td style="padding-top: 20px">555</td>
        </tr>
        <tr>
            <td style="padding-top: 20px">4</td>
            <td style="padding-top: 20px"><a href="Mercedes.aspx" class="GoUp" style="color: white; display:inline-block">Mercedes</a></td>
            <td style="padding-top: 20px">425</td>
        </tr>
        <tr>
            <td style="padding-top: 20px">5</td>
            <td style="padding-top: 20px"><a href="AstonMartin.aspx" class="GoUp" style="color: white; display:inline-block">Aston Martin</a></td>
            <td style="padding-top: 20px">86</td>
        </tr>
        <tr>
            <td style="padding-top: 20px">6</td>
            <td style="padding-top: 20px"><a href="Haas.aspx" class="GoUp" style="color: white; display:inline-block">Haas</a></td>
            <td style="padding-top: 20px">50</td>
        </tr>
        <tr>
            <td style="padding-top: 20px">7</td>
            <td style="padding-top: 20px"><a href="Alpine.aspx" class="GoUp" style="color: white; display:inline-block">Alpine</a></td>
            <td style="padding-top: 20px">49</td>
        </tr>
        <tr>
            <td style="padding-top: 20px">8</td>
            <td style="padding-top: 20px"><a href="RB.aspx" class="GoUp" style="color: white; display:inline-block">RB</a></td>
            <td style="padding-top: 20px">46</td>
        </tr>
        <tr>
            <td style="padding-top: 20px">9</td>
            <td style="padding-top: 20px"><a href="Williams.aspx" class="GoUp" style="color: white; display:inline-block">Williams</a></td>
            <td style="padding-top: 20px">17</td>
        </tr>
        <tr>
            <td style="padding-top: 20px">10</td>
            <td style="padding-top: 20px"><a href="KickSauber.aspx" class="GoUp" style="color: white; display:inline-block">Kick Sauber</a></td>
            <td style="padding-top: 20px">0</td>
        </tr>
    </table>
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
