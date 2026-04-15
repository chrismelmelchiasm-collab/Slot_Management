<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<title>Booking Status</title>

<script>

function showMessage(){

let msg="<%=request.getParameter("msg")%>";

if(msg=="SlotBooked"){
alert("Slot Booked Successfully!");
}

window.location="home.jsp";

}

</script>

</head>

<body onload="showMessage()">

</body>
</html>