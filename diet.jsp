<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Online Health and Nutrition Consultancy System</title>
        
        <link rel="icon" type="image/x-icon" href="images/icon2.png">
    <style>
/* Import Google font - Poppins */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");

body {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-start;
  background: #e3f2fd;
  padding: 0;
  margin: 0;
}

.menu-bar {
  background: grey;
  text-align: center;
  width: 100%;
}

.menu-bar ul {
  display: inline-flex;
  list-style: none;
  color: white;
  padding: 0;
  margin: 0;
}

.menu-bar ul li {
  width: 120px;
  margin: 1px;
  padding: 15px;
}

.menu-bar ul li a {
  text-decoration: none;
  color: #fff;
}

.menu-bar ul li:hover {
  background: rgb(255, 255, 255);
  border-radius: 3px;
}

* {
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

::-webkit-scrollbar {
  height: 8px;
}

::-webkit-scrollbar-track {
  background: #f1f1f1;
  border-radius: 25px;
}

::-webkit-scrollbar-thumb {
  background: #5e626f;
  border-radius: 25px;
}

::-webkit-scrollbar-thumb:hover {
  background: #704e72;
}

.container {
  display: flex;
  gap: 12px;
  max-width: 600px;
  height: 500px;
  width: 100%;
  background: #8a648b;
  border-radius: 12px;
  padding: 30px;
  scroll-snap-type: x mandatory;
  overflow-x: scroll;
  scroll-padding: 30px;
  box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
}

.container .card {
  display: flex;
  flex: 0 0 100%;
  flex-direction: column;
  align-items: center;
  padding: 30px;
  border-radius: 12px;
  background: #fff;
  scroll-snap-align: start;
  box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
}

.card .image {
  height: 150px;
  width: 150px;
  padding: 4px;
  background: #7a4083;
  border-radius: 50%;
}

.image img {
  height: 100%;
  width: 100%;
  object-fit: cover;
  border-radius: 50%;
  border: 5px solid #fff;
}

.card h2 {
  margin-top: 25px;
  color: #333;
  font-size: 22px;
  font-weight: 600;
}

.card p {
  margin-top: 4px;
  font-size: 18px;
  font-weight: 400;
  color: #333;
  text-align: center;
}
    </style>
  </head>
  <body>
    <div class="menu-bar">
      <ul>
        <li ><a href="patienthome">Home</a></li>
        <li><a href="bmi">BMI</a></li>
        <li class="active"><a href="diet">DIET</a></li>
        <li><a href="/">LOGOUT</a></li>
      </ul>
    </div>

    <section class="container">
      <div class="card">
        <div class="image">
          <img src="images/img1.jpg" alt="" />
        </div>
        <h2>Breakfast</h2>
        <h3>8:00-8:30AM</h3>
        <p>3 egg whites + 1 toasted brown bread + 1/2 cup low fat milk (no sugar)</p>
      </div>
      <div class="card">
        <div class="image">
         <img src="images/img2.jpg" alt="" />
        </div>
        <h2>Mid-Meal</h2>
        <h3>11:00-11:30AM</h3>
        <p>1 cup papaya</p>
      </div>
      <div class="card">
        <div class="image">
          <img src="images/img3.jpg" alt="" />
        </div>
        <h2>Lunch</h2>
        <h3>2:00-2:30PM</h3>
        <p>1 cup arhar dal + 1 chapatti + 1/2 cup low fat curd + salad.</p>
      </div>
      <div class="card">
        <div class="image">
          <img src="images/img4.jpg" alt="" />
        </div>
        <h2>Evening</h2>
        <h3>4:00-4:30PM</h3>
        <p>1 cup vegetable soup.</p>
      </div>
      <div class="card">
        <div class="image">
          <img src="images/img5.jpg" alt="" />
        </div>
        <h2>Dinner</h2>
        <h3>8:00-8:30PM</h3>
        <p>1 cup pumpkin + 1 chapati + salad</p>
      </div>
    </section>
  </body>
</html>
