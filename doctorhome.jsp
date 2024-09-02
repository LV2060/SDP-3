<!DOCTYPE html>
<html>
<head>
<title>Online Health and Nutrition Consultancy System</title>
        
        <link rel="icon" type="image/x-icon" href="images/icon2.png">



<style>
statistics-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 50px;
            animation: fallIn 1.5s ease-in-out;
        }
        @keyframes fallIn {
            0% {
                transform: translateY(-200px);
            }
            100% {
                transform: translateY(0);
            }
        }
        .statistics-box:hover {
            transform: scale(1.1); /* Zoom out the card */
            background-color: #e7c798; /* Change the background color */
        }
        .statistics-box p {
            font-size: 48px;
            margin: 0;
            color: #008000; /* Green color for the number values */
        }
  
 

        .statistics-box {
            flex: 1;
            max-width: 300px;
            background-color: #cad9db;
            padding: 20px;
            margin: 10px;
            box-shadow: 0 5px 10px rgba(163, 157, 157, 0.2);
            text-align: center;
            color: #0a0808;
            border-radius: 10px;
        }

        .statistics-box h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .statistics-box p {
            font-size: 48px;
            margin: 0;
        }
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
  <li><a href="doctorhome">Home</a></li>
  <li><a href="viewallpatients">ViewAllPatients</a></li>
  <li><a href="deletepatient">Deletepatients</a></li>
    
    <li><a href="dashboard">Dashbaord</a></li>
  <li><a href="/">Logout</a></li>
  
</ul>
</div>
<h1 align=center>Welcome DOC!</h1>

<div class="statistics-box">
        <h3>Total Patients</h3>
        <p id="anotherStatCount">${pcount}</p>
    </div>
    
<div class="statistics-box">
        <h3>Total Doctors</h3>
        <p id="anotherStatCount">${dcount}</p>
    </div>    




</body>
</html>