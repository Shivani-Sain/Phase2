<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:white;
}
table{
padding:10%;
border:0px;
background-color: #87ceeb;
margin-top:100px; 

}

input[type=password]{
width:400px;
height:30px;
margin-top:3%;
}

input[type=submit]{
margin-top:3%;
margin-left:30%;
width:200px;
}
input[type=email]{
width:400px;
height:30px;
}
</style>
</head>
<body>
<table align="center">

	<form action="LoginServlet" method="post">
<tr><td colspan="2"><h2 align="left">Change Password</h2></td><tr>
	<tr>
	<%if(request.getAttribute("password") != null){  %>
	<td style="color:red" ><%="*"+request.getAttribute("password") %></td></tr>
	<%} %>
	<tr><td>Login Id*</td>
	<td><input type = "email" name ="loginId" placeholder="enter your email id"  required></td>
	</tr>

	<tr><td>Enter Existing Password</td>
	<td><input type="password" name="password" placeholder="Enter existing password" required></td>
	</tr>
	<tr><td>Enter New Password</td>
	<td><input type="password" name="newPassword" placeholder = "Enter new password" required></td>
	</tr>
	<tr>
	<td colspan="2"><input type="submit" name="Change Password"></td>
	<input type="hidden" name = "page" value="changepassword"/>
	</tr>
	</form>
</table>
</body>
</html>