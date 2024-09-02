<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>

<title>Online Health and Nutrition Consultancy System</title>
        
        <link rel="icon" type="image/x-icon" href="images/icon2.png">
<link type="text/css" rel="stylesheet" href="css/style.css">

<style>
 body {
      background-image: url("https://img.freepik.com/free-photo/top-view-doctor-desktop-with-stethoscope-clipboard-with-medical-records-form-computer-laptop_1421-698.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1719273600&semt=ais_user");
      background-size: cover;
      background-position: left;
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
               <li><a href="/">Home</a></li>            
               <li><a href="about">About Us</a>
                <li class="active"><a href="adminlogin">Admin</a></li>
                
                <li>
                    <a href="patientlogin">Patient</a>
                    
                </li>
                <li><a href="doctorlogin">Doctor</a></li>
        </ul>
    </div>


<br>

<h3 align=center><u>Patient Registration</u></h3>

<br>


<form method="post" action="insertpatient">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<input type="text" name="name" required="required"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<input type="radio" name="gender" value="MALE" required/>Male
<input type="radio" name="gender" value="FEMALE" required/>Female
<input type="radio" name="gender" value="OTHERS" required/>Others
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td>
<input type="date" name="dob" required="required"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Diet Preferences</label></td>
<td>
<select name="preferences" required>
<option value="">---Select---</option>
<option value="Vegetarian">vegetarian</option>
<option value="Non-vegetarian">Non-vegetarian</option>
<option value="Allergic">Allergic</option>
<option value="OTHERS">Others</option>
</select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><input type="text" name="contact" pattern="[789][0-9]{9}"  placeholder="Must be 10 digits" required/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Register" class="button"></td>
</tr>

</table>

</form>


</body>
</html>