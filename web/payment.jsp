<%@ page language="java" %>

<!DOCTYPE html>
<html>
<head>
<title>Parking Payment</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

body{
margin:0;
font-family:Arial;
background-image:url("parking.jpg");
background-size:cover;
background-position:center;
display:flex;
justify-content:center;
align-items:center;
height:100vh;
}

.overlay{
position:absolute;
width:100%;
height:100%;
background:rgba(0,0,0,0.6);
}

.container{
position:relative;
z-index:1;
background:rgba(255,255,255,0.1);
padding:40px;
border-radius:12px;
text-align:center;
color:white;
backdrop-filter:blur(10px);
box-shadow:0 5px 20px rgba(0,0,0,0.5);
width:350px;
}

.amount{
font-size:28px;
margin:20px 0;
color:#00ffcc;
}

input, select{
width:100%;
padding:10px;
margin:10px 0;
border:none;
border-radius:6px;
outline:none;
}

button{
width:100%;
padding:12px;
margin-top:10px;
border:none;
border-radius:8px;
font-size:16px;
cursor:pointer;
background:linear-gradient(45deg,#ff4b2b,#ff416c);
color:white;
}

</style>
</head>

<body>

<div class="overlay"></div>

<div class="container">

<h2><i class="fas fa-credit-card"></i> Parking Payment</h2>

<%
String amount = request.getParameter("amount");
String veh_no = request.getParameter("veh_no");
String checkout = request.getParameter("checkout_time");
%>

<!-- DEBUG (remove later) -->
<p style="font-size:12px;">
veh_no: <%= veh_no %> |
checkout: <%= checkout %> |
amount: <%= amount %>
</p>

<div class="amount">
Rs <%= (amount != null ? amount : "0") %>
</div>

<form action="PaymentServlet" method="post">

<input type="hidden" name="veh_no" value="<%= veh_no %>">
<input type="hidden" name="checkout_time" value="<%= checkout %>">
<input type="hidden" name="amount" value="<%= amount %>">

<input type="text" name="name" placeholder="Your Name" required>

<select name="method" required onchange="toggleFields(this.value)">
<option value="">Select Payment Method</option>
<option value="Credit Card">Credit Card</option>
<option value="Debit Card">Debit Card</option>
<option value="UPI">UPI</option>
</select>

<!-- Hidden by default -->
<input type="text" id="card" name="card" placeholder="Card Number" style="display:none;">
<input type="text" id="bank" name="bank" placeholder="Bank Name" style="display:none;">
<input type="text" id="upi" name="upi" placeholder="UPI ID" style="display:none;">

<button type="submit">Confirm Payment</button>

</form>

</div>

<script>

function toggleFields(method){

let card = document.getElementById("card");
let bank = document.getElementById("bank");
let upi = document.getElementById("upi");

card.style.display = "none";
bank.style.display = "none";
upi.style.display = "none";

if(method === "Credit Card" || method === "Debit Card"){
card.style.display = "block";
bank.style.display = "block";
}
else if(method === "UPI"){
upi.style.display = "block";
}

}

</script>

</body>
</html>