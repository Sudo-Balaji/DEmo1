<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.SimpleDateFormat"%> 





<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>UrbanFix home page</title>
    <style>
        body {
  font-family: "Poppins", sans-serif;
  font-weight: 500;
  font-style: normal;
}

        .header{
            background-color:rgba(0, 0, 0, 0.747);
            color: white;
            padding: 1px;
            
        }

        li,ul,nav,h1{
            display: inline-block;
        }
        ul{
            margin-left: 50%;
            cursor: pointer;
        }
        li{
            cursor: pointer;
            
        }
        a {
    text-decoration: none;
    color: rgb(255, 255, 255);
}
        a:hover{
            color:rgb(31, 226, 200) ;
        }
        nav{
            margin-left: 40px;
            font-size: 20px;
        }
        .content{
            background-image:url('https://wallpaperaccess.com/full/1732257.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            width:1345px;
            height:350px;
            margin-top: 5px;      
            padding:20px;
            text-align: center;
            display: flex;
            justify-content: space-around;
            position: absolute;
            z-index: 1;
        }
        .contenttext{
            color: white;
            text-shadow: 2px 2px 6px black;
        }
        button{
            background-color:rgb(0, 0, 0);
            color:white;
            width: 200px;
            height:50px;
            font-size: 25px;
            cursor: pointer;
        }
        button:hover{
            color: rgb(0, 0, 0);
            background-color: white;         

        }
        .reportblock{
            background-color:rgb(0, 0, 0);
            height: 800px;
            width: 1375px;
            margin-top: 350px;
            margin-left: 0px;
            position: absolute;

        }
        .reports{
            background-color:white;
            height:550px;
            width:1100px;
           margin-left:12% ;
           margin-top: -70px;
           position: absolute;
           z-index: 2;
        }
        .tables{
            display:flex ;
            justify-content: space-around;
          
            
        }
       th,tr,td{
            background-color: rgba(0, 0, 0, 0.534);
            border: 2px solid black;
            padding: 20px;
            color: white;          
        }
      
    </style>   
  <script>
  function pagemove(){
	  window.location.href = "Report_page1.jsp";
	  
  }
  
  </script>  
</head>
<body>
    
     <div class="header">
        <nav>
            <h1 style="color: rgb(31, 226, 200);"> Urban</h1>
            <h1>Fix</h1>
        </nav>
        <ul>
           
            <li> <a href="">Home |</a></li>
            <li> <a href="login.jsp">Log In |</a></li>
            <li> <a href="">All reports |</a></li>
            <li> <a href="">About us |</a></li>
            <li> <a href="">Contact</a></li>
        </ul>
    </div>
    <div class="content" >
        <div class="contenttext">
            <h1>REPORT YOUR PROBLEMS</h1>
            <p style="font-size:20px;">(like graffiti, fly tipping, broken paving slabs, or street lighting)
            </p><br>
           <button onclick="pagemove()">Report Now</button>
        </div>
    <div class="reportblock">
        <div class="reports">
            <h1>Recently reported problems</h1>
            <br>
            <div class="tables">
    
 
    <table>
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
                String sql = "SELECT category, description, location, report_date FROM user_reports WHERE report_id >= 1 ORDER BY report_id DESC";
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
     </div>
    </div>     
  </div>
  </div>
</body>
</html>
