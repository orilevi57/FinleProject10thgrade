<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FinelProject.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body
        {
            background-color: #181414;
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
        button
        {
            color: white;
        } 
        [data-aos]
        {
            transition: ease 0.5s;
        }


/* Center the image container on the page */
.image-container {
  position: relative; /* Enable absolute positioning for the text */
  width: 80%; /* Image container takes up 60% of the screen width */
  margin: 0 auto; /* Center horizontally */
}

/* Style the image */
.image-container img {
  width: 100%; /* Make the image responsive */
  height: auto; /* Keep the aspect ratio */
  display: block; /* Remove extra spacing under the image */
}

/* Overlay text styles */
.overlay-text {
  position: absolute;
  top: 50%; /* Center vertically */
  left: 50%; /* Center horizontally */
  transform: translate(-50%, -50%); /* Adjust for perfect centering */
  white-space: nowrap; /* Prevent text from wrapping */
  font-size: 2.5rem; /* Adjust text size */
  font-weight: bold; /* Make text bold */
  color: white; /* Text color */
  text-shadow: 4px 4px 6px rgba(0, 0, 0, 1); /* Add a shadow for visibility */
  text-align: center; /* Align text */
  font-stretch: expanded;
}


.slideshow-container {
  position: relative;
  width: 100%;
  height: 85vh; /* Full viewport height */
  overflow: hidden;
}

/* Static Text Overlay */
.overlay {
    display: inline;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
  color: white;
  font-family: Arial, sans-serif;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
  z-index: 2; /* Ensure it stays above the slideshow */
  font-family: 'Formula1 Display'
}

/* Slideshow Images */
.slideshow {
  position: absolute;
  width: 100%;
  height: 100%;
  z-index: 1; /* Keep images behind the text */
}

.slide {
  position: absolute;
  width: 100%;
  height: 100%;
  object-fit: cover; /* Scale images to cover the container */
  opacity: 0;
  transition: opacity 1.5s ease-in-out;
}
.overlay {
  white-space: nowrap;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
  color: white;
  text-shadow: 4px 4px 6px rgba(0, 0, 0, 0.9);
  z-index: 2; /* Ensure it stays above the slideshow */
}

.slide.active {
  opacity: 1; /* Show the active slide */
}


.rounded-photo {
  position: relative;
  width: 100%; /* Adjust width as needed */
  height: 100%; /* Adjust height as needed */
  overflow: hidden;
  margin: 0 auto; /* Center horizontally if needed */
}

.rounded-photo::after {
  content: "";
  position: absolute;
  bottom: -20px; /* Adjust based on the curve height */
  left: 0;
  width: 100%;
  height: 40px; /* Adjust curve size */
  background-color: #181414; /* Background matches your page */
  border-top-left-radius: 30px;
  border-top-right-radius: 30px;
  z-index: 2; /* Ensure it appears behind the image */
  transform: translateY(-20px);
}
    </style>
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    


    <div class="slideshow-container">
        <div class="rounded-photo">
        <img class="slide active" src="background3(2).jpg" />
        </div>

        <div class="overlay"><h1 style="color:white; font-size: 45px; transform: translateY(-20px); font-stretch: expanded; font-family: 'Formula1 Display'; font: 'wide';">Welcome To Formula News</h1></div>
    </div>
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
    <table align="center" style="border-radius:10px; padding-left: 10px; padding-right:10px; line-height: .8">
        <tr>
            <td>
    <h3>Welcome to Formula News</h3>
    <p>
        Here, you'll find everything you need to know about Formula 1: from the drivers and teams to the<br />
        <br />
        championships and all the exciting moments this incredible sport has to offer. Whether you're<br />
        <br />
        a lifelong fan or new to the world of motorsport, we've got you covered.
    </p>
    <h3>So what is Formula 1</h3>
    <p>
        Formula 1 (F1) is the world’s premier motorsport, featuring 10 teams and 20 drivers racing<br />
        <br />
         at circuits around the globe. It’s more than just "driving in circles"—F1<br />
        <br />
        is a test of endurance, skill, and cutting-edge technology. Drivers face<br />
        <br />
        extreme heat, cold, and intense G-forces, making it one of the most physically.<br />
        <br />
        F1 is also deeply rooted in science and engineering, with teams demanding<br />
        <br />
        sportsconstantly innovating in aerodynamics, physics, and mechanics. This relentless<br />
        <br />
         pursuit of performance defines the sport and pushes the limits of what’s possible.<br />
        <br />
        
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


    <h1 style="color:white; font-stretch: expanded">Headlines</h1>
        <br />
    <table align="center" cellspacing="100" style="border-radius: 10px;">
        <tr>
            <td data-aos="fade-left" data-aos-duration="800" data-aos-once="true"><h3 style="color:white">Max Verstapen won his 4th <br />
                    championship in a row!</h3>
                    <img src="max4th.jpg" width="350" height="250" style=" border-radius: 10px;"/>
            </td>
            <td data-aos="fade-left" data-aos-duration="800" data-aos-once="true"><h3 style="color:white">Russell won the las vegas <br />
                grand prix getting mercedes a 1-2</h3>
                <img src="mercedes1-2.jpg" width="350" height="250"  style=" border-radius: 10px;"/>
            </td>
            <td data-aos="fade-left" data-aos-duration="800" data-aos-once="true"><h3 style="color:white">The next race is the qatar <br />
                grad prix</h3>
                <img src="qatargp.jpg"  width="350" height="250"  style=" border-radius: 10px;"/>
            </td>
        </tr>
    </table>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script>
        AOS.init();
    </script>
</asp:Content>

