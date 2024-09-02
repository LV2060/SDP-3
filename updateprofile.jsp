<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>

<title>Online Health and Nutrition Consultancy System</title>
        
        <link rel="icon" type="image/x-icon" href="images/icon2.png">
<link type="text/css" rel="stylesheet" href="css/style.css">

<style>

</style>
</head>
<body>

<%@ include file="patientnavbar.jsp" %>

<h3 align=right>Hi, ${pname}</h3>

<h3 align=center><u>Update Profile</u></h3>

<form method="post" action="update">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<input type="text" name="name" required="required" value="${emp.name}"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
${patient.gender}
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td>
<input type="date" name="dob" required="required"  value="${emp.dateofbirth}"   />
</td>
</tr>

<tr><td></td></tr>

<<tr>
<td><label>Preferences</label></td>
<td>
<select name="preferences" required>
<option value="">---Select---</option>
<option value="Vegetarian">vegetarian</option>
<option value="Non-vegetarian">Non-vegetarian</option>
<option value="Allegergrtic">Allergetic</option>
<option value="OTHERS">Others</option>
</select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required  value="${emp.email}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required  value="${patient.password}" /></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><input type="text" name="contact" required value="${patient.contact}" /></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Update" class="button"></td>
</tr>

</table>

</form>

</body>
</html>