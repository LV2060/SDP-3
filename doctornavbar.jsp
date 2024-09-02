<!DOCTYPE html>
<html>
<head>


<title>Online Health and Nutrition Consultancy System</title>
        
        <link rel="icon" type="image/x-icon" href="images/icon2.png">

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

<h1 align=center>Online health And Nutrition consultancy system</h1>

<br>

 <div class="menu-bar">
<ul>
  <li><a href="doctorhome">Home</a></li>
  <li><a href="viewallpatients">ViewAllPatients</a></li>
  <li><a href="deletepatient">Deletepatients</a></li>
    <li><a href="adddoctor">Add Doctor</a></li>
    <li><a href="deletedoctor">Delete doctor</a></li>
    <li><a href="dashboard">Dashbaord</a></li>
  <li><a href="/">Logout</a></li>
  
</ul>
</div>


<br>


</body>
</html>