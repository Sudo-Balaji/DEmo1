
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
        <title>Log In</title>
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
            .signin{
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
            box-shadow: 5px 5px 10px ;
            color:white;
            width: 360px;
            height:50px;
            font-size: 25px;
            cursor: pointer;
        }
        button:hover{
            color: rgb(31, 226, 200);
        }
        .box{
            height:500px;
            width:500px;
            background-color:rgb(255, 255, 255);
            box-shadow: 8px -8px 10px;
            margin-top:50px;
            margin-left:1%;
           
        }
        .content{
            height: 500px;       
            background-color: rgb(0, 0, 0);
            margin-top: 400px;
        }
        .email{
          margin-left:-305px;
        }
        #mail{
            padding: 10px;
            width: 350px;
            height:30px;         
        }
        .pass{
          margin-left:-345px;
        }
        #password{
             padding: 10px;
            width: 350px;
            height:30px;         
        }
      
      </style>
      
      
</head>
<body>
      
		
    <div class="header">
        <nav>
            <h1 style="color: rgb(31, 226, 200);"> Urban</h1>
            <h1>Fix</h1>
        </nav>
        <ul>
            <li> <a href="Main_index.jsp">Home |</a></li>
            <li> <a href="login.jsp">Log In |</a></li>
            <li> <a href="">All reports |</a></li>
            <li> <a href="">About us |</a></li>
            <li> <a href="">Contact</a></li>
        </ul>
    </div>
    <div class="signin" >
        <div class="box">
            <div><h1 style="display: inline-block;">Log In</h1><p style="display: inline-block;">&nbsp;&nbsp;or&nbsp; <a style="color: rgb(31, 226, 200);" href="signup1.jsp">Create an account</a></p></div>
            <br>
          <form action="login" method="POST">
          <h3 class="email">Email address</h3>
            <input type="email" name="mail" id="mail">
            <br><br>
            <h3 class="pass">Password</h3>
            <input type="password" name="password" id="password">
            <br><br> <br>
            <button>Log In</button>
            </form>
        </div>
         
    </div>
    <div class="content"></div>
    
    <input type="hidden" id="status" value= "<%= request.getAttribute("status") %>" >
      
      <script>
		var status=document.getElementById("status").value;
		if(status=="failed")
			{
			
			alert("Soryy!!, Wrong Username or Password"); // working
			}
		
		</script>
    
</body>
</html>