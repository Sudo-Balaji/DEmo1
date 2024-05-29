<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
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

        .contenttext {
            color: white;
            text-shadow: 2px 2px 6px black;
        }

        button {
            background-color: rgb(0, 0, 0);
            box-shadow: 5px 5px 10px;
            color: white;
            width: 160px;
            height: 50px;
            font-size: 25px;
            cursor: pointer;
            border-radius: 40px;
        }

        button:hover {
            color: rgb(0, 0, 0);
            background-color: white;
        }

        .box {

            height: 500px;
            width: 500px;
            margin-top: 180px;
            margin-left: 450px;
            background-color: rgb(255, 255, 255);
            box-shadow: 8px -8px 10px;
            position: relative;
            overflow: hidden;



        }

        .content {
            height: 500px;
            background-color: rgb(0, 0, 0);
            margin-top: 400px;
        }

        #fname,
        #lname {
            padding: 10px;
            width: 180px;
            height: 20px;

        }

        #male,
        #female,
        #dob {
            padding: 10px;
            width: 100px;
            height: 20px;


        }

        #dno {
            padding: 10px;
            width: 90px;
            height: 20px;
            position: relative;
            right: 10px;

        }

        #street {
            width: 250px;
            position: relative;
            left: 10px;
        }

        form input {
            padding: 10px;
            width: 385px;
            height: 20px;
            border: 0;
            border-bottom: 1px solid black;
            outline: none;
            background: transparent;
        }

        .box form {
            position: absolute;
            top: 10%;
            left: 10%;
            transition: 0.9s;
        }

        form h1 {
            margin-bottom: 10%;
        }

        #form2 {
            left: 500px;
        }

        #form3 {
            left: 500px;
        }

        .popupcrt,
        .popupwrg {
            width: 400px;
            padding: 20px;
            background-color: rgb(255, 255, 255);
            position: absolute;
            left: 74%;
            border: 2px solid black;
            box-shadow: 6px 6px 10px black;
            top: 60%;
            transform: translate(-50%, -50%) scale(1);
            text-align: center;
            visibility: hidden;
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
<input type="hidden" id="step" value= "<%= request.getAttribute("currentStep") %>" >
<input type="hidden" id="status" value= "<%= request.getAttribute("status") %>" >
<script>
window.onload = function() {
    var stp = document.getElementById("step").value;
    var status=document.getElementById("status").value;
    
    console.log("Current Step: " + stp);  // Debugging statement
    console.log("Status : " + status);
    
    var submit = document.getElementById("submit");
    var popupcrt = document.getElementById("popupcrt");
    var popupwrg = document.getElementById("popupwrg");

    var form1 = document.getElementById("form1");
    var form2 = document.getElementById("form2");
    var form3 = document.getElementById("form3");

    switch(stp) {
        case '2':  // Make sure to use string comparison
            form1.style.left = "-450px";
            form2.style.left = "40px";
            break;
        case '3':
            form1.style.left = "-900px";
            form3.style.left = "40px";
            break;
        default:
            console.log("No matching case for step: " + stp);  // Debugging statement
    }
    
    if(status=="success")
	{
        popupcrt.style.visibility = "visible";
	}
    
	/*else {
		popupwrg.style.visibility = "visible";	
	}*/
}
		
		</script>


    <div class="header">
        <div class="logo">
            <h1 style="color: rgb(31, 226, 200);"> Urban</h1>
            <h1>Fix</h1>
        </div>

        <ul>
            <li> <a href="Main_index.jsp">Home |</a></li>
            <li> <a href="login.html">Log In |</a></li>
            <li> <a href="">All reports |</a></li>
            <li> <a href="">About us |</a></li>
            <li> <a href="">Contact</a></li>
        </ul>
    </div>
    <div class="box">


        <form id="form1" method="POST" action="signup">
            <h1>Personal Information </h1>
            <br>
            <input type="hidden" name="currentStep" value="1">
            <input type="text" id="fname" name="fname" placeholder="First name" required>
            <input type="text" id="lname" name="lname" placeholder="Last name" required>

            <br><br>
            <input type="number" id="number" name="phnumber" placeholder="Enter your phone number" required>
            <br><br>
            <label for="male" name="gender">Male</label>&nbsp;
            <input id="male" type="radio" value="male" name="gender" required>
            <label for="female" name="gender">Female</label>
            <input id="female" type="radio" value="female" name="gender" required>           
            <br><br>
            <label for="dob" name="date of birth">Date of Birth</label>
            <input type="date" id="dob" name="dob" required>

            <br><br>
            <button type="button" id="next1" onclick="submitForm(1)">Next</button> <!-- change type to submit-->

        </form>



        <form id="form2" method="POST" action="signup">
            <h1>Address </h1>
            <br>
             <input type="hidden" name="currentStep" value="2">
            <input type="text" id="dno" name="dno" placeholder="Door No" required>
            <input type="text" id="street" name="street" placeholder="Street" required>
            <br><br>
            <label for="area" name="area">Area</label>&nbsp;
            <select type="text" id="area" name="area" style="width: 300px; height: 40px; font-size: 17px; padding:10px; margin-left: 50px;margin-top: 20px;" required>
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
                    <option>Kaladipet</option>
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
                    <option>Tiruvottiyur</option>
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
            <br><br>
            <input type="text" id="city" name="city" placeholder="City" required>
            <br><br> <br><br>
            <button type="button" id="back1">Back</button>
            <button type="submit" id="next2" onclick="submitForm2(2)">Next</button>
        </form>


        <form id="form3" method="POST" action="signup">
            <h1>Create your ID </h1>
            <br>
            <input type="hidden" name="currentStep" value="3">
            <input type="text" id="email" name="email" placeholder="Email ID" required>
            <br><br>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <br><br>
            <input type="password" id="password" placeholder="Re-Password" required>
            <br><br><br><br>
            <button type="button" id="back2">Back</button>
            <button type="submit" id="submit">submit</button> <!-- add class="btn" opt-->
        </form>


    </div>

    <div class="popupcrt" id="popupcrt">
        <img src="checked.png ">
        <h1>Success!</h1>
        <p>Your account has been created successfuly </p>
        <button id="closebt1" onclick="closebt1()">Okey</button>
    </div>
    <div class="popupwrg" id="popupwrg">
        <img src="cancel.png">
        <h1>Error!</h1>
        <p>Something Went Wrong, Unable to create your account!!!</p>
        <button id="closebt2" onclick="closebt2()">Try Again</button>
    </div>


    <script>
        var form1 = document.getElementById("form1");
        var form2 = document.getElementById("form2");
        let form3 = document.getElementById("form3");

        var next1 = document.getElementById("next1");
        var next2 = document.getElementById("next2");
        var back1 = document.getElementById("back1");
        var back2 = document.getElementById("back2");


       /* next1.onclick = function () {
            form1.style.left = "-450px";
            form2.style.left = "40px";
        } */
		function submitForm(formnumber){
        	
        	//form1.style.left = "-450px";
            //form2.style.left = "40px";
            
			const form = document.getElementById('form' + formnumber);
	        form.submit();
	        
		}
        
        
        
        back1.onclick = function () {
            form1.style.left = "40px";
            form2.style.left = "500px";
        }
        
        /*
        next2.onclick = function () {
            form2.style.left = "-450px";
            form3.style.left = "40px";
        }*/
        
        function submitForm2(formnumber){
        	const form = document.getElementById('form' + formnumber);
	        form.submit();
        	
        	//form2.style.left = "-450px";
           // form3.style.left = "40px";
        	
        }
        back2.onclick = function () {
            form2.style.left = "40px";
            form3.style.left = "500px";
        }



        var submit = document.getElementById("submit");
        var popupcrt = document.getElementById("popupcrt");
        var popupwrg = document.getElementById("popupwrg");
        var closebt1 = document.getElementById("closebt1");
        var closebt2 = document.getElementById("closebt2");

       /* submit.onclick = function () {
            popupcrt.style.visibility = "visible";

        }*/
        closebt1.onclick = function () {
            popupcrt.style.visibility = "hidden";
            window.location.href = "login.jsp";
        }
        
		
       /* submit.onclick = function () {
            popupwrg.style.visibility = "visible";

        }*/ 
        
        closebt2.onclick = function () {
            popupwrg.style.visibility = "hidden";
            window.location.href = "signup1.jsp";
        }








    </script> 
</body>

</html>