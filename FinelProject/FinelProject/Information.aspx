<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="FinelProject.Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body
        {
            color: white;
            background-color: #181414;
        }
        a
        {
            color: red;
        }
        .timeline-container 
        {
            background-color: #1e1e1e;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            position: relative;
            width: 100%;
            max-width: 1000px;
            margin: 20px auto;
            border-radius: 10px;
        }
        .timeline 
        {
            display: flex;
            gap: 20px;
            scroll-behavior: smooth;
            overflow-x: scroll;
            padding: 20px;
            width: 100%;
            white-space: nowrap;
        }
        .race-card 
        {
            background-color: #2a2a2a;
            color: #ffffff;
            flex: 0 0 auto;
            width: 220px;
            text-align: center;
            border: 1px solid #444;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 10px;
        }
        .race-card img 
        {
            width: 100%;
            height: auto;       
            object-fit: contain;   
            border-radius: 10px;
        }
        .race-card h3 
        {
            color: #f1f1f1;
            margin: 10px 0 5px;
            font-size: 1.2rem;
        }
        .race-card p 
        {
            color: #cccccc;
            margin: 0;
            font-size: 1rem;
        }
        .timeline-prev,
        .timeline-next 
        {
            background-color: #2f2f2f;
            color: #fff;
            border: none;
            cursor: pointer;
            padding: 10px 20px;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            z-index: 10;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }
        .timeline-prev 
        {
            left: 10px;
        }
        .timeline-next 
        {
            right: 10px;
        }
        .timeline 
        {
            display: flex;
            gap: 20px;
        }
        .timeline::-webkit-scrollbar 
        {
            display: none;
        }
        #leaderboard
        {
            margin: 0 auto;
        }
        #leaderboard th, td
        {
            padding: 10px;
        }
        .content-table
        {
            margin: 0 auto;
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
    <h2 align="center">Hello, <%=Fname%></h2>
    <table align="left">
        <tr>
            <td colspan="2" align="center"><h3>Your Favorites</h3></td>
        </tr>
        <tr>
            <td><img src="<%=Favdriver %>" height="200" /></td>
            <td><img src="<%=Favteam %>" height="200" /></td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <h3 align="right" style="padding-right: 80px">Australian Grand Prix In</h3>
    <p id="demo" align="right" style="font-size: 30px; padding-right: 20px"></p>
    <script>
  var countDownDate = new Date("Mar 16, 2025 6:00:00").getTime();
  var x = setInterval(function() {
  var now = new Date().getTime();
  var distance = countDownDate - now;
  var Days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var Hrs = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var Mins = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  document.getElementById("demo").innerHTML = Days + "Days " + Hrs + "Hrs " + Mins + "Mins ";
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "Its Lights Out!";
  }
}, 1000);
    </script>
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
    <h2>Latest Race Leaderboard</h2>
    <center>
    <table>
        <thead>
            <tr>
                <th style="padding-right:250px;">POS.</th>
                <th style="padding-right:250px;">DRIVER</th>
                <th style="padding-right:250px;">TEAM</th>
                <th style="padding-right:150px;">PTS.</th>
            </tr>
        </thead>
        <tbody id="leaderboard">
        </tbody>
    </table>

    </center>
    <script>
        async function fetchLatestRaceResults() {
            try {
                const response = await fetch('https://ergast.com/api/f1/current/last/results.json');
                const data = await response.json();
                console.log('API Response:', data);

                const races = data.MRData.RaceTable.Races;

                const leaderboard = document.getElementById('leaderboard');
                leaderboard.innerHTML = '';

                if (!races || races.length === 0) {
                    leaderboard.innerHTML = '<tr><td colspan="4">No race results available yet.</td></tr>';
                    return;
                }

                const results = races[0]?.Results || [];
                if (results.length === 0) {
                    leaderboard.innerHTML = '<tr><td colspan="4">No results found for the last race.</td></tr>';
                    return;
                }

                results.forEach((driver) => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                <td>${driver.position}</td>
                <td>${driver.Driver.givenName} ${driver.Driver.familyName}</td>
                <td>${driver.Constructor.name}</td>
                <td>${driver.points}</td>
            `;
                    leaderboard.appendChild(row);
                });
            } catch (error) {
                console.error('Error fetching race results:', error);
                const leaderboard = document.getElementById('leaderboard');
                leaderboard.innerHTML = '<tr><td colspan="4">Failed to load data.</td></tr>';
            }
        }

        fetchLatestRaceResults();
        setInterval(updateLeaderboard, 604800000);

    </script>





    <br />
    <br />
    <h2>F1 2025 Timeline</h2>
    <div class="timeline-container">
        <button class="timeline-prev">←</button>
        <div class="timeline">
            <div class="race-card">
                <img src="AustraliaGP.png" alt="Australian Track">
                <h3>Australian Grand Prix</h3>
                <p>March 16, 2025</p>
            </div>
            <div class="race-card">
                <img src="ChinaGP.png" alt="Chinese Track">
                <h3>Chinese Grand Prix</h3>
                <p>March 23, 2025</p>
            </div>
            <div class="race-card">
                <img src="JapanGP.png" alt="Japanese Track">
                <h3>Japanese Grand Prix</h3>
                <p>April 6, 2025</p>
            </div>
            <div class="race-card">
                <img src="BahrainGP.png" alt="Bahrain Track">
                <h3>Bahrain Grand Prix</h3>
                <p>April 13, 2025</p>
            </div>
            <div class="race-card">
                <img src="SaudiArabiaGP.png" alt="Saudi Arabian Track">
                <h3>Saudi Arabian Grand Prix</h3>
                <p>April 20, 2025</p>
            </div>
            <div class="race-card">
                <img src="MiamiGP.png" alt="Miami Track">
                <h3>Miami Grand Prix</h3>
                <p>May 4, 2025</p>
            </div>
            <div class="race-card">
                <img src="ItalyGP.png" alt="Italian Track">
                <h3>Emilia-Romagna Grand Prix</h3>
                <p>May 18, 2025</p>
            </div>
            <div class="race-card">
                <img src="MonteCarloGP.gif" alt="Monegasques Track">
                <h3>Monaco Grand Prix</h3>
                <p>May 25, 2025</p>
            </div>
            <div class="race-card">
                <img src="SpainGP.png" alt="Spanish Track">
                <h3>Spanish Grand Prix</h3>
                <p>June 1, 2025</p>
            </div>
            <div class="race-card">
                <img src="CanadaGP.png" alt="Canadian Track">
                <h3>Canadian Grand Prix</h3>
                <p>June 15, 2025</p>
            </div>
            <div class="race-card">
                <img src="AustriaGP.png" alt="Austrian Track">
                <h3>Ausrtian Grand Prix</h3>
                <p>June 29, 2025</p>
            </div>
            <div class="race-card">
                <img src="GreatBritainGP.png" alt="British Track">
                <h3>British Grand Prix</h3>
                <p>May 2, 2025</p>
            </div>
            <div class="race-card">
                <img src="BelgiumGP.png" alt="Belgian Track">
                <h3>Belgian Grand Prix</h3>
                <p>July 27, 2025</p>
            </div>
            <div class="race-card">
                <img src="HungerianGP.png" alt="Hungarian Track">
                <h3>Hungarian Grand Prix</h3>
                <p>August 3, 2025</p>
            </div>
            <div class="race-card">
                <img src="NetherlandsGP.png" alt="Dutch Track">
                <h3>Dutch Grand Prix</h3>
                <p>August 31, 2025</p>
            </div>
            <div class="race-card">
                <img src="ItalyGP.png" alt="Italian Track">
                <h3>Italian Grand Prix</h3>
                <p>September 7, 2025</p>
            </div>
            <div class="race-card">
                <img src="AzerbaijanGP.png" alt="Azerbaijan Track">
                <h3>Azerbaijan Grand Prix</h3>
                <p>September 21, 2025</p>
            </div>
            <div class="race-card">
                <img src="SingaporeGP.png" alt="Singapore Track">
                <h3>Singapore Grand Prix</h3>
                <p>October 5, 2025</p>
            </div>
            <div class="race-card">
                <img src="USAGP.png" alt="United States Track">
                <h3>United States Grand Prix</h3>
                <p>October 19, 2025</p>
            </div>
            <div class="race-card">
                <img src="MexicoGP.png" alt="Mexican Track">
                <h3>Mexican Grand Prix</h3>
                <p>October 26, 2025</p>
            </div>
            <div class="race-card">
                <img src="BrazilGP.png" alt="Brazilian Track">
                <h3>Sao Paulo Grand Prix</h3>
                <p>November 9, 2025</p>
            </div>
            <div class="race-card">
                <img src="LasVegasGP.png" alt="Las Vegas Track">
                <h3>Las Vegas Grand Prix</h3>
                <p>November 22, 2025</p>
            </div>
            <div class="race-card">
                <img src="QatarGP.png" alt="Qatar Track">
                <h3>Qatar Grand Prix</h3>
                <p>November 30, 2025</p>
            </div>
            <div class="race-card">
                <img src="AbuDhabGP.png" alt="Abi Dhabi Track">
                <h3>Abu Dhabi Grand Prix</h3>
                <p>December 7, 2025</p>
            </div>
        </div>
        <button class="timeline-next">→</button>
    </div>

    <script>
        const timeline = document.querySelector('.timeline');
        const prevButton = document.querySelector('.timeline-prev');
        const nextButton = document.querySelector('.timeline-next');

        prevButton.addEventListener('click', () => {
            timeline.scrollBy({ left: -300, behavior: 'smooth' });
        });

        nextButton.addEventListener('click', () => {
            timeline.scrollBy({ left: 300, behavior: 'smooth' });
        });

        timeline.addEventListener('scroll', () => {
            const isAtEnd = timeline.scrollLeft + timeline.clientWidth >= timeline.scrollWidth;
            if (isAtEnd) {
                setTimeout(() => {
                    timeline.scrollLeft = 0;
                }, 200);
            }
        });
    </script>
</asp:Content>
