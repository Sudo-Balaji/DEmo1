<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
// Prevent caching of this page
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", 0); // Proxies

 HttpSession session1 = request.getSession(false);

if (session1 == null || session1.getAttribute("name") == null) {
    response.sendRedirect("login.jsp"); // Redirect to login page if session is invalid
    return;
}


%>


<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report page</title>
    <style>
        body {
            font-family: "Poppins", sans-serif;
            font-weight: 500;
            font-style: normal;
        }

        .header {
            background-color: rgba(0, 0, 0, 0.747);
            color: white;
            padding: 1px;
            width: 1370px;
            height: 90px;
            align-content: center;
            position: absolute;
            left: 0%;

        }

        li,
        ul,
        .logo,
        h1 {
            display: inline-block;
        }

        ul {
            margin-left: 50%;
            cursor: pointer;
        }

        li {
            cursor: pointer;

        }

        a {
            text-decoration: none;
            color: rgb(255, 255, 255);
        }

        a:hover {
            color: rgb(31, 226, 200);
        }

        .logo {
            margin-left: 40px;
            font-size: 20px;

            margin-top: -10px;
        }

        body {
            background-image: url('https://wallpaperaccess.com/full/1732257.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            text-align: center;
            display: flex;
            justify-content: space-around;
            position: absolute;
            z-index: 1;
        }

 

        .box {
               height: fit-content;
               width:900px;
              
            background-color: rgb(255, 255, 255);
                position: absolute;
                left:200px;
                top:120px;
                z-index: 2;
                padding:40px;
                border-radius: 60px;
        }
        .welcome{
            
            color: rgb(255, 255, 255);
            margin-left: 550px;
            margin-top: 10px;
            height:fit-content;
            width:fit-content;
            padding: 1px 40px;
            border: solid rgb(255, 255, 255) 1px ;
            border-radius: 40px ;
            z-index: 4;
        }

        .content {
            height: 500px;
            width:1360px;
            background-color: rgb(0, 0, 0);          
            position: absolute;
            top: 460px;
            left:1px;
           
        }
        .box h1{
           margin-bottom: 50px;
            left:280px;      
           font-size: 40px;
           
        }
   form select {
    width: 300px; height: 40px; font-size: 17px; padding:10px;border-radius: 10px;
   }
   button{
            background-color:rgb(0, 0, 0);
            box-shadow: 5px 5px 10px ;
            color:white;
            width: 150px;
            height:50px;
            font-size: 20px;
            cursor: pointer;
            border-radius: 20px;
        }
        button:hover{
            color: rgb(31, 226, 200);
        }
        .popupcrt,
        .popupwrg {
            width: 400px;
            padding: 20px;
            background-color: rgb(255, 255, 255);
            position: absolute;
            left: 680px;
            border: 2px solid black;
            box-shadow: 6px 6px 10px black;
            top: 400px;
            transform: translate(-50%, -50%) scale(1);
            text-align:center;
            visibility:hidden;
            z-index: 5;
        }

        .popupcrt h1,
        .popupwrg h1 {
            margin-top: 100px;
        }

        .popupcrt img,
        .popupwrg img {

            width: 100px;
            position: absolute;
            top: 5%;
            left: 40%;
            align-content: center;
        }

    </style>
</head>

<body>
    <div class="header">
        <div class="logo">
            <h1 style="color: rgb(31, 226, 200);"> Urban</h1>
            <h1>Fix</h1>
        </div>      
        <ul>
            <li> <a href="Main_index.jsp">Home |</a></li>
            <li> <a href="logout">Log Out |</a></li>
            <li> <a href="">All reports |</a></li>
            <li> <a href="">About us |</a></li>
            <li> <a href="">Contact</a></li>
        </ul>
    </div>
<div class="welcome">
    <h3 >Welcome,  <%= session1.getAttribute("name") %> </h3>
</div>
<!--repost block-->
<div class="box">
<h1>Report a Problem</h1>
<form id="form1" action="submit_report.jsp" method="POST">
    <label for="category"style="font-size: 20px;"> Category: </label>
     <select id="category" name="category">
        <option value="Potholes">Potholes</option>
         <option value="Road Related">Road Related</option>
        <option value="Electricity Cable Related">Electricity Cable</option>
        <option value="Sewage Open Related">Sewage Open Related</option>
       <option value="Dustbin Related">Dustbin Related </option>
        <option value="Streetlights">Streetlights</option>
        <option value="Traffic Signals">Traffic Signals</option>
        <option value="Sidewalks">Sidewalksf  </option>
        <option value="Illegal Parking">Illegal Parking </option>
        <option value="Noise Pollution">Noise Pollution </option>
        <option value="New added line for github">Noise Pollution </option>
    </select>
    <br><br><br>
        <label for="description" style="font-size: 20px; "> Description: </label>
       <input type="text" class="description" id="description" name="description" style="padding: 10px;  width: 300px;  height: 20px;border-radius: 10px;">
        
        <label for="location" id="location" name="location"  required  style="font-size: 20px;  margin-left: 40px; "> Location: </label>    
        <select id="location" name="location" required name="location">
            <ul><option>Adambakkam</option>
                <option>Adyar, Chennai</option>
                <option>Agaram</option>
                <option>Alandur</option>
                <option>Alapakkam</option>
                <option>Alwarpet</option>
                <option>Alwarthirunagar</option>
                <option>Ambattur</option>
                <option>Aminjikarai</option>
                <option>Amullaivoyal</option>
                <option>Andarkuppam</option>
                <option>Anna Nagar</option>
                <option>Anna Nagar West</option>
                <option>Arani, Chennai</option>
                <option>Ariyalur, Chennai</option>
                <option>Arumbakkam</option>
                <option>Ashok Nagar, Chennai</option>
                <option>Athipattu</option>
                <option>Ayanavaram</option>
                <option>Ayyappa Nagar</option></ul>
                <option>Basin bridge</option>         
                <option>Beemannapettai</option>
                <option>Central Chennai</option>
                <option>Chetpet (Chennai)</option>
                <option>Chettimedu, Chennai</option>
                <option>Chinnakudal</option>
                <option>Chinnasekkadu</option>
                <option>Chintadripet</option>
                <option>Cholavaram</option>
                <option>Choolai</option>
                <option>Choolaimedu</option>
                <option>Doveton, Chennai</option>
                <option>Echankuzhi</option>
                <option>Edayanchavadi</option>
                <option>Egmore</option>
                <option>Ekkaduthangal</option>
                <option>Elandhanjery</option>
                <option>Elanthanoor</option>
                <option>Elephant Gate</option>
                <option>Ernavoor</option>
                <option>Erukkanchery</option>
                <option>Gandhi Nagar, Chennai</option>
                <option>General Kumaramangalam Colony</option>
                <option>Gerugambakkam</option>
                <option>Gnayiru</option>
                <option>Gopalapuram, Chennai</option>
                <option>Gounderpalayam</option>
                <option>Grant Lyon</option>
                <option>Greenways Road</option>
                <option>Guindy</option>
                <option>Guindy Thiru Vi Ka Estate</option>
                <option>ICF Colony</option>
                <option>Indira Nagar, Chennai</option>
                <option>The Island, Chennai</option>
                <option>Jafferkhanpet</option>
                <option>Jalladiampet</option>
                <option>Jawahar Nagar</option>
                <option>K. K. Nagar, Chennai</option>
                <option>Kadapakkam, Chennai</option>
                <option>Kadaperi</option>
                <option>Kalakkral</option>
                <option>Kalanji</option>
                <option>Kallikuppam</option>
                <option>Kamarajapuram, Anakaputhur</option>
                <option>Kannammapet</option>
                <option>Kanniammanpettai</option>
                <option>Karapakkam</option>
                <option>Karungali</option>
                <option>Kasturba Nagar, Chennai</option>
                <option>Kattupakkam</option>
                <option>Kattupalli</option>
                <option>Kattur, Chennai</option>
                <option>Kavankarai</option>
                <option>Kaviyarasu Kannadhasan Nagar</option>
                <option>Kelambakkam</option>
                <option>Kellys</option>
                <option>Kilpauk</option>
                <option>Kodambakkam</option>
                <option>Kodungaiyur</option>
                <option>Kolathur, Chennai</option>
                <option>Kondithope</option>
                <option>Korattur</option>
                <option>Korukkupet</option>
                <option>Kosapet</option>
                <option>Kosappur</option>
                <option>Kothawal Chavadi</option>
                <option>Kotturpuram</option>
                <option>Koyambedu</option>
                <option>Kumaran Nagar</option>
                <option>Lakshmipuram, Chennai</option>
                <option>Madhavaram Milk Colony</option>
                <option>Madhavaram, Chennai</option>
                <option>Madhya Kailash Junction</option>
                <option>Madipakkam</option>
                <option>Maduravoyal</option>
                <option>Mahakavi Bharathi Nagar</option>
                <option>Mambalam</option>
                <option>Manali Pudhunagar</option>
                <option>Manali, Chennai</option>
                <option>Manapakkam</option>
                <option>Mandavelli</option>
                <option>Mangadu</option>
                <option>Manjambakkam</option>
                <option>Mathur, Chennai</option>
                <option>Meenambakkam</option>
                <option>MGR Nagar</option>
                <option>Minjur</option>
                <option>Mogappair</option>
                <option>Moolakadai</option>
                <option>Moolakothalam</option>
                <option>Moulivakkam</option>
                <option>Mugalivakkam</option>
                <option>Mylapore</option>
                <option>Mylapore (Corporation zone)</option>
                <option>Nandambakkam</option>
                <option>Nandanam</option>
                <option>Nanganallur</option>
                <option>Nerkundram</option>
                <option>Nesapakkam</option>
                <option>Nolambur</option>
                <option>Nungambakkam</option>
                <option>Oragadam, Ambattur</option>
                <option>Otteri</option>
                <option>Padi, Chennai</option>
                <option>Padianallur</option>
                <option>Palavakkam</option>
                <option>Palavanthangal</option>
                <option>Pallikaranai</option>
                <option>Parameshwari Nagar</option>
                <option>Parangimalai</option>
                <option>Park Town, Chennai</option>
                <option>Parry's Corner</option>
                <option>Pattalam, Chennai</option>
                <option>Pazhaya Erumaivettipalayam</option>
                <option>Pazhayanaappaalayam</option>
                <option>Peddanaickenpettah</option>
                <option>Perambur</option>
                <option>Peravallur</option>
                <option>Periamet</option>
                <option>Periyakudal</option>
                <option>Periyar Nagar</option>
                <option>Periyasekkadu</option>
                <option>Perumbakkam</option>
                <option>Perungavoor</option>
                <option>Perungudi</option>
                <option>Ponniammanmedu</option>
                <option>Porur</option>
                <option>Pudhu Erumaivettipalayam</option>
                <option>Pudhunaappaalayam</option>
                <option>Pudhur</option>
                <option>Pudupet (Chennai)</option>
                <option>Pulianthope</option>
                <option>Pulli Lyon</option>
                <option>Purasawalkam</option>
                <option>Puzhudhivakkam</option>
                <option>Puzhuthivakkam</option>
                <option>Raghava Nagar</option>
                <option>Raja Annamalaipuram</option>
                <option>Raja Nagar</option>
                <option>Rajakilpakkam</option>
                <option>Ramapuram, Chennai</option>
                <option>Rangarajapuram</option>
                <option>Sadayankuppam</option>
                <option>Saidapet</option>
                <option>Saligramam</option>
                <option>Salt Cotaurs</option>
                <option>Sathiya Moorthy Nagar</option>
                <option>Selavayal</option>
                <option>Sembium</option>
                <option>Semmencherry</option>
                <option>Sencheri</option>
                <option>Sengundram</option>
                <option>Senthil Nagar</option>
                <option>Shastri Nagar, Chennai</option>
                <option>Shenoy Nagar</option>
                <option>Sholinganallur</option>
                <option>Sirugavoor</option>
                <option>Siruvallur</option>
                <option>South Chennai</option>
                <option>Sowcarpet</option>
                <option>Srinivasapuram</option>
                <option>Subramania Nagar</option>
                <option>Surapet</option>
                <option>T. Nagar</option>
                <option>Tambaram Sanatorium</option>
                <option>Teynampet</option>
                <option>Thangalperumbulam</option>
                <option>Tharamani</option>
                <option>Theeyampakkam</option>
                <option>Thiru. Vi. Ka Nagar</option>
                <option>Thirumalai nagar</option>
                <option>Thirumangalam, Chennai</option>
                <option>Thirumudivakkam</option>
                <option>Thirumullaivoyal</option>
                <option>Thuraipakkam</option>
                <option>Tiruverkadu</option>
                <option>Tolgate</option>
                <option>Tondiarpet</option>
                <option>Vada Agaram</option>
                <option>Vadapalani</option>
                <option>Vadaperumbakkam</option>
                <option>Vaikkadu</option>
                <option>Valasaravakkam</option>
                <option>Vallalar Nagar</option>
                <option>Vanagaram</option>
                <option>Vannarapettai</option>
                <option>Varadharajapuram</option>
                <option>Velachery</option>
                <option>Venus, Chennai</option>
                <option>Vepery</option>
                <option>Vichoor</option>
                <option>Vilangadupakkam</option>
                <option>Villivakkam</option>
                <option>Vinayagapuram (Chennai)</option>
                <option>Virugambakkam</option>
                <option>Vyasarpadi</option>   </ul>
        </select>
        <br><br><br>
        <label for="landmark" style="font-size: 20px;"> Landmark: </label>
        <input type="landmark" id="landmark" name="landmark" style="padding: 10px;  width: 300px;  height: 20px; border-radius: 10px;" required>
        <label for="address" style="font-size: 20px;  margin-left: 10px;"> Address: </label>
        <input type="address" id="address" name="address" style="padding: 10px;  width: 300px;  height: 20px; border-radius: 10px; " required>
        <br><br><br>
        <label for="uploadimg"style="font-size: 20px;  margin-left:100px;"> Upload Image:</label>
        <input type="file" id="uploadimg" name="uploadimg" style="font-size: 20px;" >
        <br><br><br>
        <button type="submit" id="reportbtn" onclick="submitForm1(1)">Report</button>
</form>
    </div>

    <div class="popupcrt" id="popupcrt">
        <img src="checked.png ">
        <h1>Success!</h1>
        <p>Your report has been submited successfuly </p>
        <button id="closebt1" onclick="closebt1()">Okey</button>
    </div>
    <div class="popupwrg" id="popupwrg">
        <img src="cancel.png">
        <h1>Error!</h1>
        <p>Something Went Wrong, Unable to send your report!!!</p>
        <button id="closebt2" onclick="closebt2()">Try Again</button>
    </div>

<div class="content">

</div>

   <script>
          function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            } else {
                alert("Geolocation is not supported by this browser.");
            }
        }
       function showPosition(position) {
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;

    // Log coordinates to the console
    console.log("Lat =" + latitude);
    console.log("Long = " + longitude);

    // Set the values of hidden input fields
    document.getElementById("latitude").value = latitude;
    document.getElementById("longitude").value = longitude;
     }
     
        // Get GPS coordinates when the page loads
        window.onload = getLocation();
        

        //This down to my script for popup and popupclose 

        var reportbtn = document.getElementById("reportbtn");
        var popupcrt = document.getElementById("popupcrt");
        var popupwrg = document.getElementById("popupwrg");
        var closebt1 = document.getElementById("closebt1");
        var closebt2 = document.getElementById("closebt2");

        reportbtn.onclick = function () {
            popupcrt.style.visibility = "visible";

        }
        closebt1.onclick = function () {
            popupcrt.style.visibility = "hidden";
        }
        reportbtn.onclick = function () {
            popupwrg.style.visibility = "visible";

        }
        closebt2.onclick = function () {
            popupwrg.style.visibility = "hidden";
        }
        
        function submitForm1(formnumber){
        	const form = document.getElementById('form' + formnumber);
	        form.submit();

   </script>
</body>

</html>