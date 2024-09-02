<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%> 
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style> 
 
 
</style> 
</head> 
<body> 


<%@ include file="adminnavbar.jsp" %>

ID : ${patient.id}<br>
Name : ${patient.name}<br>
Gender : ${patient.gender}<br>
DateofBirth : ${patient.dateofbirth}<br>
Preferences : ${patient.preferences}<br>
Email : ${patient.email}<br>



</body>
</html>