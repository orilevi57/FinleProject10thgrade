<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="teams.aspx.cs" Inherits="FinelProject.teams" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body
        {
            background-color:  #181414;
        }

        table
        {
            border-radius: 10px;
            color: red;
        }
        a
        {
            color: red;
        }
        h1
        {
            color: red;
        }
        button {
            color: white;
        }
        .team-name {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .team-color{
            transform: translateY(-155px) translateX(+10px);
            width: 5px;
            height: 24px;
            display: inline-block;
            border-radius: 2px;
        }

        td svg{
            transition: all 0.3s ease-in-out;
            transform: scaleY(1);
        }
        .team-color.red-bull,
        td.red-bull:hover svg path{
            transition: all 0.1s ease;
            stroke: #1e41ff;
            background-color: #1e41ff;
        }
        .team-color.ferrari,
        td.ferrari:hover svg path{
            transition: all 0.1s ease;
            stroke: #dc0000;
            background-color: #dc0000;
        }
        .team-color.mclaren,
        td.mclaren:hover svg path{
            transition: all 0.1s ease;
            stroke: #ff8700;
            background-color: #ff8700;
        }
        .team-color.mercedes,
        td.mercedes:hover svg path{
            transition: all 0.1s ease;
            stroke: #00d2be;
            background-color: #00d2be;
        }
        .team-color.astonmartin,
        td.astonmartin:hover svg path{
            transition: all 0.1s ease;
            stroke: #006f62;
            background-color:#006f62; 
        }
        .team-color.alpine,
        td.alpine:hover svg path{
            transition: all 0.1s ease;
            stroke: #dc6ba1;
            background-color: #dc6ba1;
        }
        .team-color.haas,
        td.haas:hover svg path{
            transition: all 0.1s ease;
            stroke: #8B0000;
            background-color: #8B0000;
        }
        .team-color.williams,
        td.williams:hover svg path{
            transition: all 0.1s ease;
            stroke: #005aff;
            background-color: #005aff;
        }
        .team-color.rb,
        td.rb:hover svg path{
            transition: all 0.1s ease;
            stroke: #6692ff;
            background-color: #6692ff;
        }
        .team-color.sauber,
        td.sauber:hover svg path{
            transition: all 0.1s ease;
            stroke: #0cad07;
            background-color: #0cad07;
        }
        td:hover svg{
            transform: scaleY(1.05);
            transform-origin: bottom;
        }
.team-background {
    width: 467px;
    height: 140px;
    background-color: transparent; /* Light gray background */
    background-image: 
        linear-gradient(90deg, rgba(210, 215, 211, 0.1) 1px, transparent 3px),
        linear-gradient(rgba(210, 215, 211, 0.1) 1px, transparent 3px);
    background-size:7px 7px; /* Spacing between the "+" marks */
    background-position: bottom;    
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
    <h2 style="color: white">The 2025 Teams</h2>
    <table align="center" style="padding-top: 50px; border-spacing: 300px 100px; border-collapse: separate">
        <tr>         
            <td class="red-bull">
                <a href="RedBull.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="465" height="220" viewBox="0 0 567 265" fill="none" style=" position: absolute;">
                    <path d="M0.5 0.49971H551C555 0.499971 560.2 0.299858 563 3.49986C566.5 7.49986 566 12 566 15.9998C566 17.5998 566 94.5 566 275" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="team-name">
                    <h2 style="text-align: left; color: white; transform: translateY(+12px) translateX(+20px); margin-top:10px;">Red Bull Racing</h2>
                    <img src="red-bull-racing-logo.png" height="70" style="transform: translateX(+155px) translateY(+10px)" />
                    </div>
                    <span class="team-color red-bull"></span>
                    <img class="team-background" src="RedBullcar.png" style="transform: translateY(+13px) translateX(-10px)"/>
                 </a> 
            </td>
           
                <td class="ferrari">
                    <a href="Ferrari.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="465" height="220" viewBox="0 0 567 265" fill="none" style=" position: absolute;">
                    <path d="M0.5 0.49971H551C555 0.499971 560.2 0.299858 563 3.49986C566.5 7.49986 566 12 566 15.9998C566 17.5998 566 94.5 566 275" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="team-name">
                    <h2 style="text-align: left; color: white; transform: translateY(+6px) translateX(+20px); margin-top:20px;">Scuduria Ferrari</h2>
                    <img src="ferrari-logo.png" height="50" style="transform: translateX(+165px) translateY(+10px)" />
                    </div>
                    <span class="team-color  ferrari" style="margin-top:20px"></span>
                    <img class="team-background" src="ferraricar.png" style="transform: translateY(+16px) translateX(-10px)"/>
                    </a> 
            </td>
        </tr>
        <tr>
            <td class="mclaren">
                <a href="McLaren.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="465" height="220" viewBox="0 0 567 265" fill="none" style=" position: absolute;">
                    <path d="M0.5 0.49971H551C555 0.499971 560.2 0.299858 563 3.49986C566.5 7.49986 566 12 566 15.9998C566 17.5998 566 94.5 566 275" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="team-name">
                    <h2 style="text-align: left; color: white; transform: translateY(+15px) translateX(+20px); margin-top:10px;">McLaren</h2>
                    <img src="mclaren-logo.png" height="50" style="transform: translateX(+255px) translateY(+10px)" />
                    </div>
                    <span class="team-color  mclaren" style="transform: translateY(-147px) translateX(+8px)"></span>
                    <img class="team-background car" src="mclarencar.png" style="transform: translateY(+26px) translateX(-15px)"/>
                    </a> 
                
            </td>
           
                <td class="mercedes">
                <a href="Mercedes.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="465" height="220" viewBox="0 0 567 265" fill="none" style=" position: absolute;">
                    <path d="M0.5 0.49971H551C555 0.499971 560.2 0.299858 563 3.49986C566.5 7.49986 566 12 566 15.9998C566 17.5998 566 94.5 566 275" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="team-name">
                    <h2 style="text-align: left; color: white; transform: translateY(+19px) translateX(+20px); margin-top:10px;">Mercedes</h2>
                    <img src="mercedes-logo.png" height="50" style="transform: translateX(+250px) translateY(+10px)" />
                    </div>
                    <span class="team-color  mercedes" style="transform: translateY(-142px) translateX(+8px)"></span>
                    <img class="team-background" src="mercedescar.png" style="transform: translateY(+26px) translateX(-8px)"/>
                    </a> 
            </td>  
        </tr>
        <tr>
            <td class="astonmartin">
                <div><a href="AstonMartin.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="465" height="220" viewBox="0 0 567 265" fill="none" style=" position: absolute;">
                    <path d="M0.5 0.49971H551C555 0.499971 560.2 0.299858 563 3.49986C566.5 7.49986 566 12 566 15.9998C566 17.5998 566 94.5 566 275" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="team-name">
                    <h2 style="text-align: left; color: white; transform: translateY(+17px) translateX(+20px); margin-top:10px;">Aston Martin</h2>
                    <img src="aston-martin-logo.png" height="50" style="transform: translateX(+215px) translateY(+10px)" />
                    </div>
                    <span class="team-color  astonmartin" style="transform: translateY(-145px) translateX(+7px)"></span>
                    <img class="team-background" src="astonmartincar.png" style="transform: translateY(+26px) translateX(-10px)"/>
                    </a> 
                </div>
            </td>
           
                <td class="alpine">
                <div><a href="Alpine.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="465" height="220" viewBox="0 0 567 265" fill="none" style=" position: absolute;">
                    <path d="M0.5 0.49971H551C555 0.499971 560.2 0.299858 563 3.49986C566.5 7.49986 566 12 566 15.9998C566 17.5998 566 94.5 566 275" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="team-name">
                    <h2 style="text-align: left; color: white; transform: translateY(+17px) translateX(+20px); margin-top:10px;">Alpine</h2>
                    <img src="alpine-logo.png" height="60" style="transform: translateX(+295px) translateY(+10px); filter: invert(62%) sepia(69%) saturate(1041%) hue-rotate(293deg) brightness(90%) contrast(90%);" />
                    </div>
                    <span class="team-color  alpine" style="transform: translateY(-145px) translateX(+7px)"></span>
                    <img class="team-background" src="alpinecar.png" style="transform: translateY(+26px) translateX(-10px)"/>
                    </a> 
                </div>
            </td>
        </tr>
        <tr>
             <td class="haas">
                <div><a href="Haas.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="465" height="220" viewBox="0 0 567 265" fill="none" style=" position: absolute;">
                    <path d="M0.5 0.49971H551C555 0.499971 560.2 0.299858 563 3.49986C566.5 7.49986 566 12 566 15.9998C566 17.5998 566 94.5 566 275" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="team-name">
                    <h2 style="text-align: left; color: white; transform: translateY(+17px) translateX(+20px); margin-top:10px;">Haas</h2>
                    <img src="haas-logo.png" height="60" style="transform: translateX(+315px) translateY(+10px)" />
                    </div>
                    <span class="team-color  haas" style="transform: translateY(-145px) translateX(+7px)"></span>
                    <img class="team-background" src="haascar.png" style="transform: translateY(+26px) translateX(-10px)"/>
                    </a> 
                </div>
            </td>
           
                <td class="williams">
                <div><a href="Williams.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="465" height="220" viewBox="0 0 567 265" fill="none" style=" position: absolute;">
                    <path d="M0.5 0.49971H551C555 0.499971 560.2 0.299858 563 3.49986C566.5 7.49986 566 12 566 15.9998C566 17.5998 566 94.5 566 275" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="team-name">
                    <h2 style="text-align: left; color: white; transform: translateY(+17px) translateX(+20px); margin-top:10px;">Williams</h2>
                    <img src="williams-logo.png" height="50" style="transform: translateX(+270px) translateY(+10px)" />
                    </div>
                    <span class="team-color  williams" style="transform: translateY(-145px) translateX(+7px)"></span>
                    <img class="team-background" src="Williamscar.png" style="transform: translateY(+26px) translateX(-10px)"/>
                    </a> 
                </div>
            </td>
        </tr>
        <tr>
            <td class="rb">
                <div><a href="RB.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="465" height="220" viewBox="0 0 567 265" fill="none" style=" position: absolute;">
                    <path d="M0.5 0.49971H551C555 0.499971 560.2 0.299858 563 3.49986C566.5 7.49986 566 12 566 15.9998C566 17.5998 566 94.5 566 275" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="team-name">
                    <h2 style="text-align: left; color: white; transform: translateY(+17px) translateX(+20px); margin-top:10px;">Racing Bulls</h2>
                    <img src="racing-bulls-logo.png" height="50" style="transform: translateX(+225px) translateY(+10px)" />
                    </div>
                    <span class="team-color  rb" style="transform: translateY(-145px) translateX(+7px)"></span>
                    <img class="team-background" src="racingbullscar.png" style="transform: translateY(+26px) translateX(-10px)"/>
                    </a> 
                </div>
            </td>
           
                <td class="sauber">
                <div><a href="KickSauber.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="465" height="220" viewBox="0 0 567 265" fill="none" style=" position: absolute;">
                    <path d="M0.5 0.49971H551C555 0.499971 560.2 0.299858 563 3.49986C566.5 7.49986 566 12 566 15.9998C566 17.5998 566 94.5 566 275" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="team-name">
                    <h2 style="text-align: left; color: white; transform: translateY(+17px) translateX(+20px); margin-top:10px;">Kick Sauber</h2>
                    <img src="kick-sauber-logo.png" height="50" style="transform: translateX(+235px) translateY(+10px)" />
                    </div>
                    <span class="team-color  sauber" style="transform: translateY(-145px) translateX(+7px)"></span>
                    <img class="team-background" src="KickSaubercar.png" style="transform: translateY(+26px) translateX(-10px)"/>
                    </a> 
                </div>
            </td>
        </tr>
    </table>

</asp:Content>
