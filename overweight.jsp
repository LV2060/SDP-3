<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Rubik&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

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
    
    
        .btn1{
            height: 45px;
            width: 35%;
            border: none;
            outline: none ;
            background-color:rgb(248, 26, 92) ;
            color: white;
            font-weight: 700;
            border-radius: 60px;
        }

        .card:hover{
            box-shadow: -2px -1px 25px -4px rgba(0,0,0,0.75);
            -webkit-box-shadow: -2px -1px 25px -4px rgba(0,0,0,0.75);
            -moz-box-shadow: -2px -1px 25px -4px rgba(0,0,0,0.75);
            transition: 0.5s;
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
              <li><a href="addconsultation">DoctorConsultation</a></li>
              <li><a href="nutritionalassessment">nutritionalassessment</a></li>
            <li><a href="/">LOGOUT</a></li>
        </ul>
    </div>
    <br> 
<br> 
 

    
    <section class="product">
        <div class="container">
          <div class="row">
            <div class="row py-5">
              <div class="col-lg-5 m-auto text-center">
                <h1>Health Is Wealth</h1>
                <h6 style="color:red">How to handle your overweight</h6>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 text-center">
              <div class="card border-0 bg-light mb-2">
                <div class="card-body">
                  <img src="images/overweight1.jpg" class="img-fluid" alt="">
                </div>
              </div>
              <h6>Grilled Vegetable Salad</h6>
              <a href="https://www.google.com/search?q=ingredients+for+grilled+vegetable+salad&sca_esv=573472004&tbm=shop&sxsrf=AM9HkKnOhXJpjE7azOGLNWIONYK4O31wZQ:1697299262078&source=lnms&sa=X&ved=2ahUKEwj7ut-89PWBAxUF2jgGHSLvAKYQ_AUoAnoECAIQBA&biw=1280&bih=563&dpr=1.5">ShopItems</a><br>
              <a href="https://www.youtube.com/watch?v=U3CBz6_Q618">ViewRecipie</a>
              
              
            </div>
            <div class="col-lg-3 text-center">
              <div class="card border-0 bg-light mb-2">
                <div class="card-body">
                  <img src="images/overweight2.jpeg" class="img-fluid" alt="">
                </div>
              </div>
              <h6>Chicken and Vegetable Soup</h6>
              <a href="https://www.google.com/search?q=Chicken+and+Vegetable+Soup&sca_esv=573472004&tbm=shop&sxsrf=AM9HkKlnJeR7UrQ2yDaFhy9p4tw0Na14HQ:1697299480064&source=lnms&sa=X&ved=2ahUKEwi8udik9fWBAxXxxTgGHXYvCYMQ_AUoAnoECAIQBA&cshid=1697299677190267&biw=1280&bih=563&dpr=1.5">ShopItem</a>
              </br><a href="https://www.youtube.com/watch?v=wOjsAUktnhg">ViewRecipie</a>
            </div>
            
            
            <div class="col-lg-3 text-center">
              <div class="card border-0 bg-light mb-2">
                <div class="card-body">
                  <img src="images/overweight3.jpeg" class="img-fluid" alt="">
                </div>
              </div>
              <h6>greek yogurt parfait</h6><br>
              <a href="https://www.google.com/search?q=greek+yogurt+parfait&sca_esv=573472004&hl=en&tbm=shop&sxsrf=AM9HkKnUiEqxhEwj6-2KI1g_fAOpw34Asg:1697299853902&source=lnms&sa=X&ved=2ahUKEwjt0PnW9vWBAxWwwjgGHXuYCEcQ_AUoAnoECAMQBA&biw=1280&bih=563&dpr=1.5">ShopItem</a></br>
              <a href="https://www.homemadefoodjunkie.com/greek-yogurt-parfait/">ViewRecipie</a>
            </div>
            
            
            
            
            
            
            <div class="col-lg-3 text-center">
              <div class="card border-0 bg-light mb-2">
                <div class="card-body">
                  <img src="images/overweight4.jpeg" class="img-fluid" alt="">
                </div>
              </div>
              <h6>Roasted Vegetable Quiche</h6>
              <a href="https://www.google.com/search?q=Roasted+Vegetable+Quiche&sca_esv=573472004&hl=en&tbm=shop&sxsrf=AM9HkKlZ7cH5jcVHgxPwHoyW1xfgBq8_mw:1697300020186&source=lnms&sa=X&ved=2ahUKEwjo5Z6m9_WBAxXhxjgGHU7oDAgQ_AUoAnoECAIQBA&biw=1280&bih=563&dpr=1.5">ShopItem</a><br>
              <a href="https://www.yummly.com/recipes/roasted-vegetable-quiche">ViewRecipie</a>
            </div>
          </div>
          <div class="row">
          
         
            <br>
            <br>
            <br>
           
            <br>
            <br>
            <br>
            <div class="col-lg-6 text-center m-auto">
              <button class="btn1">Click For More</button>
            </div>
          </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>