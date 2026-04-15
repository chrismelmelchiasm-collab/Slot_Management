<%@ page import="java.sql.*" %>

<!DOCTYPE html>

<html>
<head>
<title>View Bookings</title>

<style>
body{
margin:0;
font-family:Arial, Helvetica, sans-serif;
background-image:url("parking.jpg");
background-size:cover;
background-position:center;
height:100vh;
display:flex;
justify-content:center;
align-items:center;
}

/* OVERLAY */
.overlay{
position:absolute;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.7);
}

/* CONTAINER */
.container{
position:relative;
z-index:1;
text-align:center;
color:white;
width:85%;
}

/* TITLE */
h1{
margin-bottom:20px;
text-shadow:2px 2px 10px black;
}

/* BUTTONS */
.btn{
display:inline-block;
margin:10px;
padding:12px 25px;
background:linear-gradient(45deg,#ff4b2b,#ff416c);
color:white;
text-decoration:none;
border-radius:8px;
font-weight:bold;
transition:0.3s;
box-shadow:0 4px 12px rgba(0,0,0,0.4);
}

.btn:hover{
transform:scale(1.08);
box-shadow:0 6px 18px rgba(0,0,0,0.6);
}

/* ACTIVE BUTTON */
.active{
border:2px solid white;
}

/* TABLE */
table{
width:100%;
border-collapse:collapse;
background:white;
color:black;
border-radius:10px;
overflow:hidden;
box-shadow:0 5px 20px rgba(0,0,0,0.5);
}

th{
background:#ff4b2b;
color:white;
padding:14px;
font-size:16px;
}

td{
padding:12px;
text-align:center;
border-bottom:1px solid #ddd;
}

tr:hover{
background:#f5f5f5;
}

/* BACK BUTTON */
.back{
margin-top:20px;
display:inline-block;
padding:10px 20px;
background:#333;
color:white;
text-decoration:none;
border-radius:6px;
}

.back:hover{
background:black;
}

</style>

</head>

<body>

<div class="overlay"></div>

<div class="container">

<h1> Parking Records</h1>

<%
String type=request.getParameter("type");
if(type==null) type="current";
%>

<!-- BUTTONS -->

<a href="viewBookings.jsp?type=current" class="btn <%= type.equals("current")?"active":"" %>">Current Bookings</a>
<a href="viewBookings.jsp?type=history" class="btn <%= type.equals("history")?"active":"" %>">Parking History</a>

<br><br>

<table>

<tr>
<th>ID</th>
<th>Vehicle No</th>
<th>Owner</th>
<th>Slot</th>
<th>Check-In</th>
<th>Check-Out</th>
<th>Amount (?)</th>
</tr>

<%
try{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/userdb","app","app");

String query;

if(type.equals("history")){
query="SELECT * FROM PARKING_HISTORY";
}else{
query="SELECT * FROM PARKING_SLOTS";
}

Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);

while(rs.next()){
%>

<tr>
<td><%=rs.getInt("ID")%></td>
<td><%=rs.getString("VEH_NO")%></td>
<td><%=rs.getString("OWNER_NAME")%></td>
<td><%=rs.getInt("SLOT_NO")%></td>
<td><%=rs.getString("CHECKIN_TIME")%></td>
<td><%=rs.getString("CHECKOUT_TIME")%></td>
<td><%=rs.getInt("AMOUNT")%></td>
</tr>

<%
}

rs.close();
stmt.close();
conn.close();

}catch(Exception e){
e.printStackTrace();
}
%>

</table>

<a href="adminHome.jsp" class="back"> Back to Dashboard</a>

</div>

</body>
</html>
