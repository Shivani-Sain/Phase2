<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#table{
width:100%;
}
body{
background-color: #87ceeb;
}
#link{
color:white;
}
h5{
color:white;
}
h2{
margin-left:30%;
}
</style>
</head>
<body>
<table style="background-color:black" id="table">
<tr>
<td>
<td padding="10px"><h5>FlyAway</h5></td>
<td><a href = "home.jsp" id="link">Home</a></td>
<td><a href = "search.jsp" id="link">Search</a></td>
</tr>
</table>
<%String email= (String)request.getParameter("email"); %>
<h2>Flight Booked successfully for user<%=" "+email %></h2>
</body>
</html>