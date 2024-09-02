<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<style>
        body {
            background-color: aliceblue;
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: cover;
        }

        .menu-bar {
            background: rgba(85, 87, 80, 0.59);
            text-align: center;
        }

        .menu-bar ul {
            display: inline-flex;
            list-style: none;
            color: white;
        }

        .menu-bar ul li {
            width: 120px;
            margin: 15px;
            padding: 15px;
        }

        .menu-bar ul li a {
            text-decoration: none;
            color: #3a0909;
        }

        .active, .menu-bar ul li:hover {
            background: rgb(211, 213, 203);
            border-radius: 3px;
        }

        .sub-menu-1 {
            display: none;
        }

        .menu-bar ul li:hover .sub-menu-1 {
            display: block;
            position: absolute;
            background: rgb(66, 67, 64);
            margin-top: 15px;
            margin-left: -15px;
        }

        .menu-bar ul li:hover .sub-menu-1 ul {
            display: block;
            margin: 10px;
        }

        .menu-bar ul li:hover .sub-menu-1 ul li {
            width: 150px;
            padding: 10px;
            border-bottom: 1px dotted #fff;
            background: transparent;
            border-radius: 0;
            text-align: left;
        }

        .menu-bar ul li:hover .sub-menu-1 ul li:last-child {
            border-bottom: none;
        }

        .menu-bar ul li:hover .sub-menu-1 ul li a:hover {
            color: black;
        }

        .topright {
            position: absolute;
            top: 400px;
            right: 10px;
            font-size: 20px;
        }

        .text {
            font-size: 30px;
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

<h3 align=center><u>Add Doctor</u></h3>

<br>

<form:form method="post"  action="insertdoctor" modelAttribute="doctor">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
<form:radiobutton path="gender" value="Others" required="required"/>Others

</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td>
<input type="date" name="dateofbirth" required="required"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>department</label></td>
<td>
<select name="department" required>
<option value="">---Select---</option>
<option value="Dietian">Dietian</option>
<option value="Nutrition">Nutrition</option>
<option value="Physician">Physician</option>
<option value="OTHERS">Others</option>
</select>
</td>
</tr>

<tr><td></td></tr>
<tr>
<td><label>Salary</label></td>
<td><form:input path="salary" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr>
<td><label>Email ID</label></td>
<td><form:input path="email" required="required"/></td>
</tr>

<tr><td></td></tr>



<tr>
<td><label>Password</label></td>
<td><form:password path="password" required="required"/></td>
</tr>

<tr><td></td></tr>



<tr>
<td><label>Address</label></td>
<td>
<form:textarea path="location" required="required"/>
</td>
</tr>

<tr><td></td></tr>
<tr>
<td><label>Contact No</label></td>
<td><form:input path="contact" required="required"/></td>
</tr>

<tr><td></td></tr>


<tr align=center>
<td colspan=2><input type="submit" value="Add" class="button"></td>
</tr>

</table>

</form:form>



</body>
</html>