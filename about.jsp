<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Health and Nutrition Consultancy System</title>
        
        <link rel="icon" type="image/x-icon" href="images/icon2.png">
    <style>
        .menu-bar {
            background-color: gray;
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
            color: #fff;
        }

        .active, .menu-bar ul li:hover {
            background: rgb(103, 112, 70);
            border-radius: 3px;
        }

        .sub-menu-1 {
            display: none;
        }

        .menu-bar ul li:hover .sub-menu-1 {
            display: block;
            position: absolute;
            background: rgb(176, 215, 99);
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

        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
        }

        html {
            box-sizing: border-box;
        }

        *, *:before, *:after {
            box-sizing: inherit;
        }

        .column {
            float: left;
            width: 33.3%;
            margin-bottom: 16px;
            padding: 0 8px;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            margin: 8px;
        }

        .about-section {
            padding: 10px;
            text-align: center;
            background-color: #6ebc3a84;
            color: white;
        }

        .container {
            padding: 0 16px;
        }

        .container::after, .row::after {
            content: "";
            clear: both;
            display: table;
        }

        .title {
            color: grey;
        }

        .button {
            border: none;
            outline: 0;
            display: inline-block;
            padding: 8px;
            color: white;
            background-color: #000;
            text-align: center;
            cursor: pointer;
            width: 100%;
        }

        .button:hover {
            background-color: #555;
        }

        .display-container {
            background-size: auto;
        }

        h1 {
            background-color: white;
            color: #000;
        }

        h3 {
            background-color: rgba(150, 135, 113, 0.214);
            color: black;
            font-size: 40px;
        }
    </style>
</head>
<body>
<div class="menu-bar">
            <ul>
                <li ><a href="/">Home</a></li>
                <li class="active"><a href="about">About Us</a>
                <li><a href="adminlogin">Admin</a></li>
                
                <li>
                    <a href="patientlogin">Patient</a>
                    
                </li>
                <li><a href="doctorlogin">Doctor</a></li>
                
            </ul>
        </div>
<div class="about-section">
    <div class="container">
        <h1> Diet & Care Online nutrition consultancy</h1>
        <h2>Welcome to Diet&Care Online Nutrition Consultancy, your trusted partner in online healthcare consultations. Our mission is to revolutionize the way you access healthcare, making it more convenient, efficient, and accessible for everyone.</h2>
        <p>At Our Consultancy, our mission is to provide high-quality, secure, and reliable online consultations that connect patients with healthcare providers anytime, anywhere.
        We envision a future where healthcare is accessible to all, regardless of location or circumstance. Our goal is to become the leading platform for online consultations, setting new standards for excellence in telemedicine.</p>
        
                </div>
    <img class="mySlides" src="images/img19.jpeg" width="100%" height="550">
    <img class="mySlides" src="images/img20.jpg" width="100%" height="550">
    <img class="mySlides" src="images/img21.jpg" width="100%" height="550">
    <img class="mySlides" src="images/img22.jpg" width="100%" height="550">
</div>
<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) {
            myIndex = 1
        }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 2000); // Change image every 2 seconds
    }
</script>
<h3 style="text-align:center">Let's see what we have</h3>
<div class="row">
    <div class="column">
        <div class="card">
            <img src="images/img13.jpg" alt="Jane" style="width:100%">
            <div class="container">
                <h2>Diet based on personality</h2>
                <p class="title">What it means?</p>
                <p>The personality type diet is a diet developed by Dr. Robert Kushner that helps dieters identify what kind of eating, exercising,
                    and coping habits they have to help dieters achieve weight loss and better health through personalized incremental change.</p>
            </div>
        </div>
        
    </div>
    <div class="column">
        <div class="card">
            <img src="images/img14.jpg" alt="Mike" style="width:100%">
            <div class="container">
                <h2>BMI</h2>
                <p class="title">What it means?</p>
                <p>Body Mass Index is a person's weight in kilograms divided by the square of height in meters.
                    A high BMI can indicate high body fatness.</p>
            </div>
        </div>
        
    </div>
    <div class="column">
        <div class="card">
            <img src="images/img16.webp" alt="John" style="width:100%">
            <div class="container">
                <h2>DIET Reminders!</h2>
                <p class="title">We sent you diet reminders</p>
                <p>A balanced diet is a diet that contains differing kinds of foods in certain quantities and proportions so that the requirement for calories,
                    proteins, minerals, vitamins, and alternative nutrients is adequate, and a small provision is reserved for additional nutrients to endure the short length of leanness.</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
