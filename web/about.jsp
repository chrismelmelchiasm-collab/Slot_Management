<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>About - Car Parking System</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

body{
margin:0;
font-family:Arial, Helvetica, sans-serif;
background-image:url("parking.jpg");
background-size:cover;
background-position:center;
min-height:100vh;
}

/* OVERLAY */

.overlay{
position:absolute;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.6);
}

/* NAVBAR */

.navbar{
position:fixed;
top:0;
width:100%;
background:rgba(0,0,0,0.7);
padding:15px 0;
text-align:center;
z-index:2;
}

.navbar a{
color:white;
margin:0 20px;
text-decoration:none;
font-size:18px;
}

.navbar a:hover{
color:#ff4b2b;
}

/* CONTAINER */

.container{
position:relative;
z-index:1;
margin-top:120px;
text-align:center;
color:white;
padding:20px;
}

/* ABOUT BOX */

.about-box{
margin:auto;
width:60%;
background:rgba(255,255,255,0.1);
padding:30px;
border-radius:12px;
backdrop-filter:blur(8px);
box-shadow:0 5px 20px rgba(0,0,0,0.5);
}

.about-box h1{
margin-bottom:15px;
}

.about-box p{
font-size:18px;
line-height:1.6;
}

/* FOOTER */

.footer{
position:fixed;
bottom:0;
width:100%;
text-align:center;
padding:10px;
background:rgba(0,0,0,0.8);
color:white;
}

</style>

</head>

<body>

<div class="overlay"></div>

<!-- NAVBAR -->

<div class="navbar">
<a href="home.jsp"><i class="fas fa-home"></i> Home</a>
<a href="bookSlot.jsp"><i class="fas fa-car"></i> Book</a>
<a href="checkSlots.jsp"><i class="fas fa-th"></i> Slots</a>
<a href="checkout.jsp"><i class="fas fa-sign-out-alt"></i> Checkout</a>
<a href="about.jsp"><i class="fas fa-info-circle"></i> About</a>
<a href="login.jsp"><i class="fas fa-user"></i> Logout</a>
</div>

<!-- ABOUT CONTENT -->

<div class="container">

<div class="about-box">

<h1>About This System</h1>

<p>
This Car Parking Slot Management System is designed to simplify parking
in busy places like malls and theatres. Users can easily book a slot,
check availability, and checkout after use.
</p>

<p>
The system prevents duplicate bookings by ensuring that once a slot is
occupied, it cannot be booked again until it is vacated. This improves
efficiency and avoids confusion in parking management.
</p>

<p>
This project is built using JSP, Servlets, and Java DB (Derby), providing
a simple and effective solution for real-world parking problems.
</p>

</div>

</div>

<!-- FOOTER -->

<div class="footer">
© 2026 Car Parking System 🚗
</div>

</body>
</html>
