<!DOCTYPE html>
<html>
    <head>
        <title>Online Health and Nutrition Consultancy System</title>
        
        <link rel="icon" type="image/x-icon" href="images/icon2.png">
        
        <style >
        
        
*
{
    padding:0;
    margin:0;
    box-sizing: border-box;
}

body{
    background-image: url("images/LINKEDIN.png");
  
    
    background-size: cover;
    background-repeat: no-repeat;
    font-family: sans-serif;
}
.menu-bar{
    background: rgb(176, 215, 99);
    text-align: center;
}

.menu-bar ul{
    display: inline-flex;
    list-style: none;
    color:white;
}
.menu-bar ul li{
    width: 120px;
    margin: 15px;
    padding: 15px;
}
.menu-bar ul li a{
    text-decoration: none;
    color: #fff;
}
.active, .menu-bar ul li:hover 
{
    background:rgb(117, 141, 33) ;
    border-radius: 3px;

}
.sub-menu-1
{
    display: none;
}
.menu-bar ul li:hover  .sub-menu-1{

    display: block;
    position: absolute;
    background:rgb(174, 206, 110) ;
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
.topright {
  position: absolute;
  top: 400px;
  right: 10px;
  font-size: 50px;
}


        
        </style>
    </head>
    <body>
        <div class="menu-bar">
            <ul>
                <li class="active"><a href="/">Home</a></li>
                <li><a href="about">About Us</a>
                <li><a href="adminlogin">Admin</a></li>
                
                <li>
                    <a href="patientlogin">Patient</a>
                    
                </li>
                <li><a href="doctorlogin">Doctor</a></li>
                
            </ul>
        </div>
    </body>
</html>