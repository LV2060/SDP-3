<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>

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
           h1, form, h2, p {
            text-align: center;
            
        }
        
        
    </style>

</style>
<head>
    <meta charset="UTF-8">
    <title>BMI Calculator</title>
</head>
<body>

<div class="menu-bar">
        <ul>
             <li class="active"><a href="patienthome">Home</a></li>
                 <li class="active"><a href="bmi">BMI</a></li>
                <li><a href="diet">DIET</a></li>
                <li><a href="/">LOGOUT</a></li>
        </ul>
    </div>
    
    <h1 >BMI Calculator</h1>
    
    

    <form method="post" action="bmi.jsp">
        Weight (kg): <input type="number" name="weight" step="0.01" required><br><br>
        Height (m): <input type="number" name="height" step="0.01" required><br><br>
        Disease: <td>
<select name="preferences" required>
<option value="">---Select---</option>
<option value="Diabetes">Diabetes</option>
<option value="Heart Disease">Heart Disease</option>
<option value="Eating Disorders">Eating Disorders</option>
<option value="OTHERS">Others</option>
</select>
</td><br><br>



        <input type="submit" value="Calculate BMI">
    </form>
    
    
    
    <h2 align=center>
Calculate your BMI to determine if you are at a healthy weight. 
Your BMI is important because it can help you to determine 
if you are underweight, normal weight, overweight, or obese.
A BMI below 18.5 means that you are underweight.
A BMI of 18.6 to 24.9 is healthy.
A BMI of 25 to 29.9 means that you are overweight.
A BMI of 30 or greater indicates obesity.</h2>
<h3>1.Underweight: BMI less than 18.5

Underweight individuals may be at risk for nutritional deficiencies and other health issues. They should consult with a healthcare professional for guidance.<br>
2.Normal Weight: BMI 18.5 to 24.9
Individuals in this range typically have a healthy body weight relative to their height. However, it's important to consider other factors, such as muscle mass and overall health.<br>
3.Overweight: BMI 25 to 29.9
Overweight individuals have excess body weight for their height. Being overweight can increase the risk of various health problems, including heart disease and diabetes.<br>
4.Obese (Class I): BMI 30 to 34.9
Class I obesity indicates a moderate degree of excess body weight and an increased risk of obesity-related health issues.<br>
5.Obese (Class II): BMI 35 to 39.9
Class II obesity indicates a more significant degree of excess body weight and a higher risk of obesity-related health issues.<br>
6.Obese (Class III - Morbidly Obese): BMI 40 or greater
Class III obesity, often referred to as morbid obesity, represents a severe degree of excess body weight with a substantially increased risk of obesity-related health problems.</h3>
    
    <%
        if (request.getMethod().equals("POST")) {
            double weight = Double.parseDouble(request.getParameter("weight"));
            double height = Double.parseDouble(request.getParameter("height"));
            double bmi = weight / (height * height);

            out.println("<h2>Your BMI: " + bmi + "</h2>");

            if (bmi < 18.5) {
                out.println("<p>You are underweight.check your diet.</p>");
            } else if (bmi >= 18.5 && bmi < 24.9) {
                out.println("<p>You are normal weight check your diet.</p>");
            } else if (bmi >= 25.0 && bmi < 29.9) {
                out.println("<p>You are overweight check your diet.</p>");
            } else {
                out.println("<p>You are obese check your diet.</p>");
            }
        }
    %>
    
   
</body>
</html>