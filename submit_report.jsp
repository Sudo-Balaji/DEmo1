<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
// Retrieve form data
String category = request.getParameter("category");
String description = request.getParameter("description");
String location = request.getParameter("location");
Timestamp report_date = new Timestamp(System.currentTimeMillis());
String latitude = request.getParameter("latitude");
String longitude = request.getParameter("longitude");
String address= request.getParameter("landmark");
String landmark= request.getParameter("address");


// Database connection parameters
String url = "jdbc:mysql://localhost:3306/urbanfix?useSSL=false";
String username = "root";
String password = "Chellam25@yahoo.com";

Connection conn = null;
PreparedStatement pstmt = null;

try {
    // Get a connection to the database
    Class.forName("com.mysql.jdbc.Driver");
  
    conn = DriverManager.getConnection(url, username, password);

    // SQL query to insert data into the database
    String sql = "INSERT INTO user_reports (category, description, landmark, address, location, latitude, longitude, report_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, category);
    pstmt.setString(2, description);
    pstmt.setString(3,landmark);
    pstmt.setString(4,address);
    pstmt.setString(5, location);
    pstmt.setString(6,latitude);
	pstmt.setString(7,longitude);
	pstmt.setTimestamp(8,report_date);
    // Execute the query
    int rowsAffected = pstmt.executeUpdate();

    if (rowsAffected > 0) {
        // Report submitted successfully
        response.sendRedirect("Main_index.jsp");
    } else {
        // Report not submitted
        out.println("Report not submitted else ");
    }
} catch (SQLException e) {
    e.printStackTrace();
    out.println("Report not submitted sql " + e);
} 
finally {
    try {
        // Close all resources
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}

%>
