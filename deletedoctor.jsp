<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
 
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
            <li class="active"><a href="adminhome">Home</a></li>
            <li><a href="viewallpatients">View All Patients</a></li>
            <li><a href="deletepatient">Delete Patient</a></li>
            <li><a href="adddoctor">Add Doctor</a></li>
            <li><a href="deletedoctor">Delete doctor</a></li>
             <li><a href="viewalldocs">View All Doctors</a></li>
            <li><a href="adminlogin">Logout</a></li>
        </ul>
</div>
 
<br> 
 
<h3 align="center"><u>Delete Doctor</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>ID</td> 
<td>NAME</td> 
<td>GENDER</td>  
<td>EMAIL ID</td> 
<td>CONTACT NO</td> 
<td>ACTION</td>

</tr> 
 
<c:forEach items="${doctordata}"  var="doc"> 
<tr> 
<td><c:out value="${doc.id}" /></td> 
<td><c:out value="${doc.name}" /></td> 
<td><c:out value="${doc.gender}" /></td>
<td><c:out value="${doc.email}" /></td> 
<td><c:out value="${doc.contact}" /></td> 
<td>
<a href='<c:url value="delete/${doc.id}"></c:url>'>Delete</a>
</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>