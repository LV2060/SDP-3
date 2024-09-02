<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<title>Online Health and Nutrition Consultancy System</title>
        
        <link rel="icon" type="image/x-icon" href="images/icon2.png">


<style>
    body {
      
      background-size: contain;
      background-position: center;
    }
    .container {
            width: 300px;
            margin: 0 auto;
            margin-top: 100px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            text-align: center;
          }
          body {
           background-image: url("images/doc.png");
            
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: cover;
          }
          .menu-bar{
              background: rgba(8, 12, 18, 0.564);
              text-align: center;
          }
          
          .menu-bar ul{
              display: inline-flex;
              list-style: none;
              color:rgb(83, 85, 87);
          }
          .menu-bar ul li{
              width: 120px;
              margin: 15px;
              padding: 15px;
          }
          .menu-bar ul li a{
              text-decoration: none;
              color: #e8eff4;
          }
          .active, .menu-bar ul li:hover 
          {
              background:rgb(72, 76, 82) ;
              border-radius: 3px;
          
          }
          .sub-menu-1
          {
              display: none;
          }
          .menu-bar ul li:hover  .sub-menu-1{
          
              display: block;
              position: absolute;
              background:rgb(66, 67, 64) ;
              margin-top: 15px;
              margin-left: -15px;
          
          }
          .menu-bar ul li:hover  .sub-menu-1 ul{
              display: block;
              margin: 10px;
          }
          .menu-bar ul li:hover .sub-menu-1 ul li{
              width: 150px;
              padding: 10px;
              border-bottom: 1px dotted #fff;
              background: transparent;
              border-radius: 0;
              text-align: left;
          }
          .menu-bar ul li:hover .sub-menu-1 ul li:last-child{
              border-bottom: none;
          
          }
          .menu-bar ul li:hover .sub-menu-1 ul li a:hover{
              color:black;
          }
          .text{
           
            top: 400px;
            right: 5px;
            font-size: 50px;
            
          }
    </style>
</head>
<body>
<div class="menu-bar">
        <ul>
            <li><a href="/">Home</a></li>
            
                <li><a href="adminlogin">Admin</a></li>
                
                <li>
                    <a href="patientlogin">Patient</a>
                    
                </li>
                <li class="active"><a href="doctorlogin">Doctor</a></li>
        </ul>
    </div>

<br>
<span class="blink">
<h3 align=center style="color:red">${message}</h3>
</span>

<h3 align=center><u>Doctor Login</u></h3>

<br>


<form method="post" action="checkdoclogin">

<table align=center>


<tr>
<td><label>Username</label></td>
<td><input type="text" name="uname" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required/></td>
</tr>



<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Login" class="button"></td>
</tr>

</table>

</form>


</body>
</html>