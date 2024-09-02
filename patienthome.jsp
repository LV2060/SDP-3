<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>

<title>Online Health and Nutrition Consultancy System</title>
        
        <link rel="icon" type="image/x-icon" href="images/icon2.png">

<style>
    body {
      background-image: url("images/Untitled design.jpg");
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
            background-color: aliceblue;
            
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
            <li><a href="patienthome">Home</a></li>
            <li><a href="bmi">BMI</a></li>
            <li>
                <a href="weights">Weights</a>
                <div class="sub-menu-1">
                    <ul>
                    <li ><a href="underweight">Underweight</a></li>
                    <li><a href="obesity">Obesity</a></li>
                    <li><a href="overweight">Overweight</a></li>
                </ul>
                </div>
              </li>
              <li><a href="diet">Diet</a></li>
             <li><a href="appointments">Appointments</a></li>
                <li><a href="nutritionalassessment">assessment</a></li><br>
            <li><a href="/">LOGOUT</a></li>
        </ul>
    </div>
<h3 align=center>Hi,${pname}</h3>
<img alt="patient" src="images/patient.png" >

</body>
</html>