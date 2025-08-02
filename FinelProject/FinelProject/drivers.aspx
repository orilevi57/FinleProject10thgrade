        <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="drivers.aspx.cs" Inherits="FinelProject.drivers" %>
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
        .driver-name {
            transform: translateY(-150px);
            display: inline-block;
            align-items: center;
            
        }
        .team-color{
            width: 5px;
            height: 55px;
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
            transform: scaleY(1.06) translateY(+7px);
            transform-origin: bottom;
        }
        .contry{
            height: 20px;
            border-radius: 5px;     
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
    <h2 style="color: white;">The 2025 Driver Grid</h2>
    <table align="center" style=" border-spacing: 100px 150px; border-collapse: separate; padding-top: 0;">
        <tr>         
            <td class="red-bull">
                <a href="MaxVerstappen.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Max</h3>
                    <img class="contry" src="Netherlands.jpg" style="transform: translateX(+75px) translateY(+40px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Verstappen</h2>
                    </div>
                    <span class="team-color red-bull" style="transform: translateY(-108px) translateX(-163px);"></span>
                    <img src="Max Verstappen.png" height="180" style="transform: translateY(+85px) translateX(-145px)"/>
                 </a> 
            </td>        
            <td class="ferrari">
                <a href="CharlesLeclerc.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Charles</h3>
                    <img class="contry" src="monaco.jpg" style="transform: translateX(+107px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Leclerc</h2>
                    </div>
                    <span class="team-color ferrari" style="transform: translateY(-108px) translateX(-100px);"></span>
                    <img src="Charles Leclerc.png" height="180" style="transform: translateY(+85px) translateX(-110px)"/>
                 </a> 
            </td>
            <td class="mclaren">
                <a href="LandoNorris.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Lando</h3>
                    <img class="contry" src="United Kingdom.jpg" style="transform: translateX(+95px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Norris</h2>
                    </div>
                    <span class="team-color mclaren" style="transform: translateY(-108px) translateX(-88px);"></span>
                    <img src="Lando Norris.png" height="180" style="transform: translateY(+85px) translateX(-110px)"/>
                </a> 
            </td>
            <td class="mercedes">
                <a href="GeorgeRussell.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">George</h3>
                    <img class="contry" src="United Kingdom.jpg" style="transform: translateX(+105px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Russell</h2>
                    </div>
                    <span class="team-color mercedes" style="transform: translateY(-108px) translateX(-100px);"></span>
                    <img src="George Russlle.png" height="180" style="transform: translateY(+85px) translateX(-110px)"/>
                 </a> 
            </td>
        </tr>
        <tr>         
            <td class="ferrari">
                <a href="LewisHamilton.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Lewis</h3>
                    <img class="contry" src="United Kingdom.jpg" style="transform: translateX(+90px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Hamilton</h2>
                    </div>
                    <span class="team-color ferrari" style="transform: translateY(-108px) translateX(-130px);"></span>
                    <img src="Lewis Hamilton.png" height="180" style="transform: translateY(+85px) translateX(-145px)"/>
                 </a> 
            </td>        
            <td class="mercedes">
                <a href="CharlesLeclerc.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Kimi</h3>
                    <img class="contry" src="Italy.jpg" style="transform: translateX(+75px) translateY(+38px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Antonelli</h2>
                    </div>
                    <span class="team-color mercedes" style="transform: translateY(-108px) translateX(-130px);"></span>
                    <img src="Kimi Antonelli.png" height="180" style="transform: translateY(+85px) translateX(-150px)"/>
                 </a> 
            </td>
            <td class="red-bull">
                <a href="LiamLawson.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Liam</h3>
                    <img class="contry" src="New-Zealand.jpg" style="transform: translateX(+80px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Lawson</h2>
                    </div>
                    <span class="team-color red-bull" style="transform: translateY(-108px) translateX(-108px);"></span>
                    <img src="Liam Lawson.png" height="180" style="transform: translateY(+85px) translateX(-110px)"/>
                </a> 
            </td>
            <td class="mclaren">
                <a href="OscarPiastri.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Oscar</h3>
                    <img class="contry" src="Australia.jpg" style="transform: translateX(+90px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Piastri</h2>
                    </div>
                    <span class="team-color mclaren" style="transform: translateY(-108px) translateX(-93px);"></span>
                    <img src="Oscar Piastri.png" height="180" style="transform: translateY(+85px) translateX(-110px)"/>
                 </a> 
            </td>
        </tr>
        <tr>         
            <td class="astonmartin">
                <a href="FernandoAlonso.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Fernando</h3>
                    <img class="contry" src="Spain.jpg" style="transform: translateX(+130px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Alonso</h2>
                    </div>
                    <span class="team-color astonmartin" style="transform: translateY(-108px) translateX(-105px);"></span>
                    <img src="Fernando Alonso.png" height="180" style="transform: translateY(+85px) translateX(-135px)"/>
                 </a> 
            </td>        
            <td class="williams">
                <a href="CarlosSainz.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Carlos</h3>
                    <img class="contry" src="Spain.jpg" style="transform: translateX(+95px) translateY(+38px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Sainz</h2>
                    </div>
                    <span class="team-color williams" style="transform: translateY(-108px) translateX(-80px);"></span>
                    <img src="Carlos Sainz.png" height="180" style="transform: translateY(+85px) translateX(-90px)"/>
                 </a> 
            </td>
            <td class="alpine">
                <a href="PierrGasly.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Pierre</h3>
                    <img class="contry" src="France.jpg" style="transform: translateX(+92px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Gasly</h2>
                    </div>
                    <span class="team-color alpine" style="transform: translateY(-108px) translateX(-80px);"></span>
                    <img src="Pierr Gasly.png" height="180" style="transform: translateY(+85px) translateX(-95px)"/>
                </a> 
            </td>
            <td class="rb">
                <a href="YukiTsunoda.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Yuki</h3>
                    <img class="contry" src="Japan.jpg" style="transform: translateX(+75px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Tsunoda</h2>
                    </div>
                    <span class="team-color rb" style="transform: translateY(-108px) translateX(-120px);"></span>
                    <img src="Yuki Tsunoda.png" height="180" style="transform: translateY(+85px) translateX(-110px)"/>
                 </a> 
            </td>
        </tr>
        <tr>         
            <td class="alpine">
                <a href="JackDoohan.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Jack</h3>
                    <img class="contry" src="Australia.jpg" style="transform: translateX(+80px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Doohan</h2>
                    </div>
                    <span class="team-color alpine" style="transform: translateY(-108px) translateX(-110px);"></span>
                    <img src="Jack Doohan.png" height="180" style="transform: translateY(+85px) translateX(-125px)"/>
                 </a> 
            </td>        
            <td class="haas">
                <a href="EstebanOcon.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Esteban</h3>
                    <img class="contry" src="France.jpg" style="transform: translateX(+115px) translateY(+38px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Ocon</h2>
                    </div>
                    <span class="team-color haas" style="transform: translateY(-108px) translateX(-93px);"></span>
                    <img src="Esteban Ocon.png" height="180" style="transform: translateY(+85px) translateX(-100px)"/>
                 </a> 
            </td>
            <td class="williams">
                <a href="AlexAlbon.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Alexander</h3>
                    <img class="contry" src="ThaiLand.jpg" style="transform: translateX(+143px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Albon</h2>
                    </div>
                    <span class="team-color williams" style="transform: translateY(-108px) translateX(-118px);"></span>
                    <img src="Alex Albon.png" height="180" style="transform: translateY(+85px) translateX(-110px)"/>
                </a> 
            </td>
            <td class="haas">
                <a href="OliverBearman.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Oliver</h3>
                    <img class="contry" src="United Kingdom.jpg" style="transform: translateX(+90px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Bearman</h2>
                    </div>
                    <span class="team-color haas" style="transform: translateY(-108px) translateX(-127px);"></span>
                    <img src="Oliver Bearman.png" height="180" style="transform: translateY(+85px) translateX(-120px)"/>
                 </a> 
            </td>
        </tr>
        <tr>         
            <td class="astonmartin">
                <a href="LanceStroll.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Lance</h3>
                    <img class="contry" src="Canada.jpg" style="transform: translateX(+90px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Strroll</h2>
                    </div>
                    <span class="team-color astonmartin" style="transform: translateY(-108px) translateX(-90px);"></span>
                    <img src="Lance Stroll.png" height="180" style="transform: translateY(+85px) translateX(-100px)"/>
                 </a> 
            </td>        
<%--            <td class="williams">
                <a href="CarlosSainz.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Carlos</h3>
                    <img class="contry" src="Spain.jpg" style="transform: translateX(+95px) translateY(+38px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Sainz</h2>
                    </div>
                    <span class="team-color williams" style="transform: translateY(-108px) translateX(-80px);"></span>
                    <img src="Carlos Sainz.png" height="180" style="transform: translateY(+85px) translateX(-90px)"/>
                 </a> 
            </td>
            <td class="alpine">
                <a href="PierrGasly.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Pierre</h3>
                    <img class="contry" src="France.jpg" style="transform: translateX(+92px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Gasly</h2>
                    </div>
                    <span class="team-color alpine" style="transform: translateY(-108px) translateX(-80px);"></span>
                    <img src="Pierr Gasly.png" height="180" style="transform: translateY(+85px) translateX(-95px)"/>
                </a> 
            </td>
            <td class="rb">
                <a href="YukiTsunoda.aspx" >
                    <svg  xmlns="http://www.w3.org/2000/svg" width="220" height="400" viewBox="0 0 220 400" fill="none" style="position: absolute;">
                    <path d="M0 0 H200 C210 0 215 5 215 10 V270" stroke="grey" stroke-width="4px"/>
                    </svg>
                    <div class="driver-name">
                    <h3 style="text-align: left; color: white; transform: translateY(+65px) translateX(+20px); margin-bottom:5px;">Yuki</h3>
                    <img class="contry" src="Japan.jpg" style="transform: translateX(+75px) translateY(+39px)"/>
                    <h2 style="text-align: left; color: white; transform: translateY(+40px) translateX(+20px); margin-top:5px;">Tsunoda</h2>
                    </div>
                    <span class="team-color rb" style="transform: translateY(-108px) translateX(-120px);"></span>
                    <img src="Yuki Tsunoda.png" height="180" style="transform: translateY(+85px) translateX(-110px)"/>
                 </a> 
            </td>--%>

            <%-- להמשיך להוסיף נהגים --%>
        </tr>
    </table>

</asp:Content>
