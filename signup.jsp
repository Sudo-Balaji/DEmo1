<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
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
            height:700px;
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
       
        #fname,#lname,#dob{
            padding: 10px;
            width: 180px;
            height:20px;         
        }
      
        #email,#password,#number{
            padding: 10px;
            width: 385px;
            height:20px;         
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
            <div><h1 style="display: inline-block;">Create an account</h1><p style="display: inline-block;">&nbsp;&nbsp;or&nbsp; <a style="color: rgb(31, 226, 200);" href="login.jsp">Log In</a></p></div>
            <br>
        <form method="POST" action="signup">
            <input type="text" id="fname" name="fname" placeholder="First name">
            <input type="text" id="lname" name="lname" placeholder="Last name">
            <br><br>
            <input type="email" id="email" name="email" placeholder="Enter your Email ID">
            <br><br>
            <input type="number" id="number" name="phnumber" placeholder="Enter your phone number">
            <br><br>
            <input type="radio" value="male" name="gender">
            <label for="male" name="gender">Male</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            <input type="radio" value="female" name="gender">
            <label for="female" name="gender">Female</label>
            <br><br>
            Date of Birth &emsp;<input type="date" id="dob" name="dob">
            <br><br>
            <input type="password" id="password" name="password" placeholder="Create your password">
            <br><br>
            <input type="password" id="password" placeholder="Re-Enter your password">
            <br><br>
             <br>
            <button>Sign Up</button>
            </form>
            </div>
         
          
    </div>
    <div class="content"></div>
</body>
</html>