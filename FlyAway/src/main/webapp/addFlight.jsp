<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table {
border:1px solid black;
width : 100%;
padding-left:30px; 
}
a{
color:white;
}
h5{
color:black;
}
body{
background-color:#87ceeb;
}
h1{
margin-top:20%;
margin-left:10%;
}
.one{
margin-left: 50%;
margin-right: 20%;
margin-top: 20%;
margin-bottom: 20%;
}
input[type=text]{
width:400px;
height:30px;
margin-top:3%;
}

input[type=submit]{
margin-top:3%;
margin-left:30%;
width:200px;
}
select{
width:400px;
height:30px;
}
h5{
color:white;
}
#label{
color:black;
}
</style>
</head>
<body>
<table style="background-color:black" >
<tr>
<td>
<td padding="10px"><h5>FlyAway</h5></td>
<td><a href = "home.jsp">Home</a></td>
<td><a href = "search.jsp">Search</a></td>
</tr>
</table>
	<table id="one">
	<tr><td><h5 id="label">Add Flight</h5></td></tr>
	<form action = "LoginServlet" method="post">
	<%if(request.getAttribute("failure")!=null){  %>
	<tr><td style="color:red" >
	<%="*"+request.getAttribute("failure") %></td>
	<%}else if(request.getAttribute("success")!=null){ %>
	<td style="color:red" >
	<%="*"+request.getAttribute("success") %></td></tr>
	<%} %>
	</tr>
	<tr>
	<td>
	Source</td><td><select name="source" required>
	<option>Please choose source</option>
	<option>Chandigrah</option>
	<option>Hyderabad</option>
	<option>Chennai</option>
	<option>New Delhi</option>
	<option>Banglore</option>
	<option>Pune</option>
	<option>Mumbai</option>
	<option>Goa</option>
	<option>Lucknow</option>
	</select></td>
	</tr>
	<tr>
	<td>Destination</td>
	<td>
	<select name="destination" required>
	<option>Please choose destination</option>
	<option>Chandigrah</option>
	<option>Hyderabad</option>
	<option>Chennai</option>
	<option>New Delhi</option>
	<option>Banglore</option>
	<option>Pune</option>
	<option>Mumbai</option>
	<option>Goa</option>
	<option>Lucknow</option>
	</select>
	</td>
	</tr>
	<tr><td>Airline</td>
	<td> 
	<select name="airline" required>
	<option>Please choose airline</option>
	<option>IndiGo</option>
	<option>Air India</option>
	<option>Spice.Jet</option>
	<option>GoAir</option>
	<option>AirAsiaIndia</option>
	<option>Vistara</option>
	<option>AllianceAir</option>
	<option>TruJet</option>
	<option>Qatar Airways</option>
	<option>Air Arabia</option>
	</select> </td></tr>
	<tr><td>
	Enter price</td><td> <input type="text" name="price" placeholder="enter the price" required></td> </tr>
<tr><td>	Enter Date</td><td><input type="date" name="date" placeholder="enter date" required></td></tr>
	<tr><td>Enter Flight No</td><td><input type="text" name="flightNo" placeholder="enter flight number" required></td></tr>
	
	<input type="hidden" name="page" value="addFlight">
	<tr><td colspan="2"><input type="submit" value="Add Flight"></td></tr> 
	</form>
	</table>
</body>
</html>