<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<%@ page import="com.fly.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#link{
color:white;
}
h5{
color:white;
}
body{
background-color:#87ceeb;
}
#center{
 margin-left: auto;
  margin-right: auto;

}
h3{
margin-left:30%;
}
h4{
margin-left: 35%;
}
</style>
</head>
<body>
<table style="background-color:black;width:100%" >
<tr>
<td>
<td padding="10px"><h5>FlyAway</h5></td>
<td><a href = "home.jsp" id="link">Home</a></td>
<td><a href = "search.jsp" id="link">Search</a></td>
</tr>
</table>

<table border="1px solid black" id="center">
<%  
List<Flight> flight = (List<Flight>)request.getAttribute("flight1"); 
%>
<%
if(flight != null && !flight.isEmpty()){
for(Flight fli:flight) {%>
<h4>Flights</h4>
<tr>
<td>Source</td>
<td>Destination</td>
<td>Date</td>
<td>Airline</td>
<td>Flight Number</td>
<td>Price</td>
<td>Book Ticket</td>
</tr>
</tr>
<tr>
<td><%=fli.getSource()%></td>
<td><%=fli.getDestination()%></td>
<td><%=fli.getDate()%></td>
<td><%=fli.getAirline()%></td>
<td><%=fli.getFlightNo()%></td>
<td><%=fli.getPrice()%></td>
<td><button><a href="payment.jsp">Book Ticket</a></button></td>
</tr></table>
<%} 
}else{
%>
<h3>No Records Found</h3>
<%} %>
</table>
</body>
</html>