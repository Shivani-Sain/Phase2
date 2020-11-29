<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:#87ceeb;
}
a{
margin-left:20%;
margin-top:30%;
color: white;
}
table{
padding:5%;
border:0px;
background-color: #87ceeb;
}
input[type=date]{
width:200px;
}
input[type=submit]{
width:200px;
}
input[type=text]{
width:200px;
}
h2{
margin-left: 20%;
color:white;
}
#links{
margin-left :20px;
background-color: black;
}
h5{
margin-left :10px;
color: white;
}
</style>
</head>
<body>
<table style="background-color:black;padding:0px;width:100%">
<tr>
<td><h5>FlyAway</h5></td>
<td><a href = "home.jsp" id ="link">Home</a></td>
<td><a href = "search.jsp" id="link">Search</a></td>
</tr>
</table>

<table align="center">
<form action="LoginServlet" method="post">
<tr><td><h2>Search Ticket</h2></td></tr>
<tr>
<td>Travel Date:-</td><td><input type="date" name="date" required> </td>
</tr>
<tr>
<td>Source:-</td><td><input type="text" name="source" required> </td>
</tr>
<tr>
<td>Destination:-</td><td><input type="text" name="destination" required> </td>
</tr>
<tr>
<td>No Of Person:-</td><td><input type="text" name="noOfPerson" required> </td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Search"> </td>
</tr>
<input type="hidden" name="page" value="search">
</form>
</table>
</body>
</html>