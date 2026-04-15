<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<title>User Register</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial, Helvetica, sans-serif;
}

/* BACKGROUND */

body{
height:100vh;
background-image:url("red.jpg");
background-size:cover;
background-position:center;
display:flex;
justify-content:center;
align-items:center;
position:relative;
}

/* DARK OVERLAY */

body::before{
content:"";
position:absolute;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.55);
}


/* FORM CONTAINER */

.container{
position:relative;
z-index:1;
background:rgba(255,255,255,0.15);
backdrop-filter:blur(12px);
padding:35px;
width:360px;
border-radius:15px;
box-shadow:0 10px 30px rgba(0,0,0,0.5);
text-align:center;
color:white;
}

/* HEADING */

h2{
margin-bottom:20px;
font-size:26px;
}

/* INPUTS */

input[type="text"],
input[type="password"]{
width:100%;
padding:12px;
margin:10px 0;
border:none;
border-radius:6px;
font-size:14px;
outline:none;
}

/* INPUT FOCUS */

input:focus{
box-shadow:0 0 8px rgba(255,255,255,0.8);
}

/* REGISTER BUTTON */

input[type="submit"]{
width:100%;
padding:12px;
margin-top:10px;
border:none;
border-radius:6px;
background:linear-gradient(45deg,#ff4b2b,#ff416c);
color:white;
font-size:16px;
font-weight:bold;
cursor:pointer;
transition:0.3s;
}

input[type="submit"]:hover{
transform:scale(1.05);
box-shadow:0 5px 15px rgba(0,0,0,0.4);
}

/* LINK */

p{
margin-top:15px;
}

a{
color:#ffdede;
font-weight:bold;
text-decoration:none;
}

a:hover{
text-decoration:underline;
}

</style>

</head>

<body>

<div class="container">

<h2>User Registration</h2>

<form action="RegisterServlet" method="post">

<input type="text" name="username" placeholder="Enter Username" required>

<input type="password" name="password" placeholder="Enter Password" required>

<input type="submit" value="Register">

</form>

<p>Already registered? <a href="login.jsp">Login here</a></p>

</div>

</body>
</html>
