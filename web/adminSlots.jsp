<%@ page import="java.sql.*" %>

<!DOCTYPE html>

<html>
<head>
<title>Admin Slot Status</title>

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
.overlay{
position:absolute;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.6);
z-index:0;
}
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
.wrapper{
flex:1;
display:flex;
justify-content:center;
align-items:center;
position:relative;
z-index:1;
}
.grid-box{
padding:40px;
background-color:rgba(255,255,255,0.1);
border-radius:12px;
backdrop-filter:blur(10px);
box-shadow:0 5px 20px rgba(0,0,0,0.5);
text-align:center;
color:white;
}
.grid{
display:grid;
grid-template-columns: repeat(5, 1fr);
gap:20px;
margin-top:20px;
}
.slot{
width:80px;
height:80px;
line-height:80px;
border-radius:10px;
color:white;
font-weight:bold;
font-size:18px;
transition:0.3s;
}

/* FREE */
.free{
background:#0F9428;
box-shadow:0 0 8px rgba(0,184,148,0.6);
}

/* OCCUPIED */
.occupied{
background:linear-gradient(45deg,#ff4b2b,#ff416c);
}

/* DISABLE CLICK */
.slot{
pointer-events:none;
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

<!-- ? ADMIN NAVBAR -->

<div class="navbar">
<a href="adminHome.jsp"><i class="fas fa-home"></i> Dashboard</a>
<a href="viewBookings.jsp"><i class="fas fa-list"></i> Bookings</a>
<a href="AdminCheckSlotsServlet"><i class="fas fa-th"></i> Slots</a>
<a href="login.jsp"><i class="fas fa-user"></i> Logout</a>
</div>

<div class="wrapper">
<div class="grid-box">

<h2>Slot Status (Admin View)</h2>

<div class="grid">

<%
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection conn = DriverManager.getConnection(
"jdbc:derby://localhost:1527/userdb","app","app");

for(int i=1;i<=25;i++){

boolean occupied=false;

PreparedStatement ps=conn.prepareStatement(
"SELECT * FROM PARKING_SLOTS WHERE SLOT_NO=?");
ps.setInt(1,i);

ResultSet rs=ps.executeQuery();

if(rs.next()){
occupied=true;
}

rs.close();
ps.close();

if(occupied){
%>

<div class="slot occupied"><%=i%></div>
<%
}else{
%>
<div class="slot free"><%=i%></div>
<%
}
}

conn.close();
%>

</div>

</div>
</div>

<div class="footer">
© 2026 Admin Panel | Car Parking System ?
</div>

</body>
</html>
