<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.SimpleDateFormat"%> 

<html>
<head>
    <title>UrbanFix home page</title>
</head>
<body>
    <h2>UrbanFix - Reported Problems</h2>
    <table border="1px solid black">
        <tr>
            <th>Category</th>
            <th>Description</th>
            <th>Location</th>
            <th>Reported On</th>
        </tr>
        <% 
            // Database connection parameters
            String url = "jdbc:mysql://localhost:3306/urbanfix?useSSL=false";
            String username = "root";
            String password = "Chellam25@yahoo.com";
            
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            
            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.jdbc.Driver");

                // Get a connection to the database
                conn = DriverManager.getConnection(url, username, password);

                // SQL query to fetch data from the database
                String sql = "SELECT category, description, location, report_date FROM user_reports";
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                
                SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");

                // Iterate through the result set and display the data in the table
                while(rs.next()) {
                String category=rs.getString("category"); 
                String description=	 rs.getString("description"); 
                String location= rs.getString("location");
                Timestamp report_date= rs.getTimestamp("report_date"); 
                String fomratted_date=sdf.format(report_date);
        %>
        <tr>
            <td><%= category %></td>
            <td><%= description %></td>
            <td><%= location %></td>
            <td><%= fomratted_date %></td>
        </tr>
        <% 
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("sql error " + e);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                out.println("class error " + e);
            } finally {
                try {
                    // Close all resources
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
    </table>
</body>
</html>
