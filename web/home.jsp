<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
<title>Car Parking Management</title>

<!-- ICON LIBRARY -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

body{
margin:0;
font-family:Arial, Helvetica, sans-serif;
background-image:url("parking.jpg");
background-size:cover;
background-position:center;
min-height:100vh;
display:flex;
flex-direction:column;
}

/* OVERLAY */

.overlay{
position:absolute;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.6);
z-index:0;
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
transition:0.3s;
}

.navbar a:hover{
color:#ff4b2b;
}

/* MAIN */

.container{
position:relative;
z-index:1;
color:white;
text-align:center;

/* PERFECT CENTER */
flex:1;
display:flex;
flex-direction:column;
justify-content:center;
align-items:center;
}

/* TITLE */

h1{
font-size:50px;
margin-bottom:10px;
text-shadow:2px 2px 10px black;
}

p{
font-size:20px;
margin-bottom:40px;
}

/* BUTTONS */

.btn{
display:inline-block;
padding:15px 30px;
margin:12px;
font-size:18px;
text-decoration:none;
color:white;
background:linear-gradient(45deg,#ff4b2b,#ff416c);
border-radius:10px;
transition:0.3s;
box-shadow:0 5px 15px rgba(0,0,0,0.4);
}

.btn i{
margin-right:10px;
}

.btn:hover{
transform:scale(1.08);
box-shadow:0 8px 20px rgba(0,0,0,0.6);
}

/* ABOUT */

.about{
margin:50px auto;
width:60%;
background:rgba(255,255,255,0.1);
padding:25px;
border-radius:12px;
backdrop-filter:blur(8px);
color:white;
text-align:center;
z-index:1;
position:relative;
}

.about h2{
margin-bottom:10px;
}

/* FOOTER */

.footer{
margin-top:auto;
text-align:center;
padding:15px;
background:rgba(0,0,0,0.8);
color:white;
font-size:14px;
}

</style>

</head>

<body>

<div class="overlay"></div>

<!-- NAVBAR -->

<div class="navbar">
<a href="home.jsp"><i class="fas fa-home"></i> Home</a>
<a href="bookSlot.jsp"><i class="fas fa-car"></i> Book</a>
<a href="checkSlots.jsp"><i class="fas fa-list"></i> Slots</a>
<a href="checkout.jsp"><i class="fas fa-sign-out-alt"></i> Checkout</a>
<a href="about.jsp"><i class="fas fa-info-circle"></i> About</a>
<a href="login.jsp"><i class="fas fa-user"></i> Logout</a>
</div>

<!-- MAIN -->

<div class="container">

<h1>Car Parking Slot Management</h1>

<p>Smart way to book and manage parking slots</p>

<a href="bookSlot.jsp" class="btn">
<i class="fas fa-car"></i> Book Slot
</a>

<a href="checkSlots.jsp" class="btn">
<i class="fas fa-th"></i> View Slots
</a>

<a href="checkout.jsp" class="btn">
<i class="fas fa-sign-out-alt"></i> Checkout
</a>


</div>

<!-- FOOTER -->

<div class="footer">
© 2026 Car Parking System | Designed for Smart Parking 🚗
</div>

</body>
</html>
