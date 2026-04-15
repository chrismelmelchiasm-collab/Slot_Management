<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String selectedSlot = request.getParameter("slot");
%>

<!DOCTYPE html>
<html>
<head>
<title>Book Parking Slot</title>

<!-- ICONS -->
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

/* CENTER FORM */
.container{
position:relative;
z-index:1;
flex:1;
display:flex;
justify-content:center;
align-items:center;
}

/* FORM BOX */
.form-box{
width:350px;
padding:30px;
background:rgba(255,255,255,0.1);
border-radius:12px;
backdrop-filter:blur(10px);
box-shadow:0 5px 20px rgba(0,0,0,0.5);
text-align:center;
color:white;
}

/* TITLE */
.form-box h2{
margin-bottom:20px;
}

/* INPUTS */
input, select{
width:90%;
padding:12px;
margin:10px;
border:none;
border-radius:6px;
outline:none;
}

/* BUTTON */
button{
padding:12px 25px;
background:linear-gradient(45deg,#ff4b2b,#ff416c);
border:none;
color:white;
font-size:16px;
border-radius:8px;
cursor:pointer;
transition:0.3s;
}

button:hover{
transform:scale(1.05);
}

/* FOOTER */
.footer{
text-align:center;
padding:10px;
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
<a href="checkSlots.jsp"><i class="fas fa-th"></i> Slots</a>
<a href="checkout.jsp"><i class="fas fa-sign-out-alt"></i> Checkout</a>
<a href="about.jsp"><i class="fas fa-info-circle"></i> About</a>
</div>

<!-- FORM -->
<div class="container">

<div class="form-box">

<h2>Book Parking Slot</h2>

<form action="BookSlotServlet" method="post">

<input type="text" name="veh_no" placeholder="Vehicle Number" required>

<input type="text" name="owner_name" placeholder="Owner Name" required>

<select name="slot_no" required>
<option value="">Select Slot</option>

<%
for(int i=1;i<=25;i++){
%>

<option value="<%=i%>" 
<%= (selectedSlot != null && selectedSlot.equals(String.valueOf(i))) ? "selected" : "" %>>
Slot <%=i%>
</option>

<%
}
%>

</select>

<input type="time" name="checkin_time" required>
<br>

<button type="submit">Book Slot</button>

</form>

</div>

</div>

<!-- FOOTER -->
<div class="footer">
© 2026 Car Parking System
</div>

</body>
</html>