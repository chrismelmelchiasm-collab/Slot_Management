<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Login</title>

<style>
/* (your full CSS remains SAME — no change needed) */
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial, Helvetica, sans-serif;
}

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

body::before{
content:"";
position:absolute;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.55);
}

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

.container h2{
margin-bottom:20px;
font-size:26px;
}

input[type="text"],
input[type="password"],
select{
width:100%;
padding:12px;
margin:10px 0;
border:none;
border-radius:6px;
font-size:14px;
outline:none;
}

input:focus, select:focus{
box-shadow:0 0 8px rgba(255,255,255,0.8);
}

input[type="submit"]{
width:100%;
padding:12px;
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

.error-msg{
color:#ff4b4b;
margin-top:10px;
font-weight:bold;
}
p{
    margin-top:15px;
    text-align:center;
    font-size:14px;
}

a{
    color:#ffdede;
    font-weight:bold;
    text-decoration:none;
    margin-left:5px;
    transition:0.3s;
}

a:hover{
    text-decoration:underline;
    color:#ffffff;
}
</style>

</head>

<body>

<div class="container">

<h2>Login</h2>

<form action="LoginServlet" method="post">

<select name="role">
<option value="user">User Login</option>
<option value="admin">Admin Login</option>
</select>

<input type="text" name="username" placeholder="Enter Username" required>
<input type="password" name="password" placeholder="Enter Password" required>

<input type="submit" value="Login">

<!-- 🔴 ERROR MESSAGE HERE -->
<%
String error = (String) request.getAttribute("error");
if(error != null){
%>
    <div class="error-msg"><%= error %></div>
<%
}
%>

</form>

<p>New user? <a href="register.jsp">Register here</a></p>

</div>

</body>
</html>