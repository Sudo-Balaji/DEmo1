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



<html>
<head>
    
    <title>Report Problem</title>
</head>
<body>
   <center> <h2>Report a Problem</h2> </center>
 <h3>WELCOME,   <%= session1.getAttribute("name") %> </h3>
     <form action="submit_report.jsp" method="POST">
        <label for="category"> Category: </label>
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
            
        </select>
       
        <br/><br/>
        <label for="description"> Description: </label><br>
        <textarea id="description" name="description" rows="4" cols="50" required> </textarea>
        <br/><br/>
        <label for="location"> Location: </label><br>
        <input type="text" id="location" name="location" required>
        <br/><br/>
        
         <!-- Add hidden fields for latitude and longitude -->
        <input type="hidden" id="latitude" name="latitude">
        <input type="hidden" id="longitude" name="longitude">
        
        <input type="submit" value="Submit">
    </form>
    
    <a href="logout">Logout</a>
    
    
    <!-- JavaScript to get user's GPS coordinates -->
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
    </script>
    
   
</body>
</html>
