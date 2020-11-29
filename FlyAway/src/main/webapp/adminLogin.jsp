<html>
<head></head>
<style>
body{
background-color:#87ceeb;
}
table{
padding:10%;
border:0px;
background-color: #87ceeb;
margin-top:0px; 
}

input[type=email]{
width:400px;
height:30px;
}
input[type=password]{
width:400px;
height:30px;
}

input[type=submit]{
width:200px;
}
a{
	width : 10px;
}
#link{
color:white;
}
h5{
color:white;
}
</style>
<title></title>
<body>
<table style="background-color:black;padding:10px;width:100%">
<tr>
<td>
<td><h5>FlyAway</h5></td>
<td><a href = "home.jsp" id ="link">Home</a></td>
<td><a href = "search.jsp" id="link">Search</a></td>
</tr>
</table>
<table align = "center">
<form action= "LoginServlet" method="post">
<tr><td colspan="2"><h2 align="left">Admin Login</h2></td><tr>
	
	<%if(request.getAttribute("failure")!=null){  %>
	<tr><td style="color:red" >
	<%="*"+request.getAttribute("failure") %></td></tr>
	<%} %>
<tr>
<td>Login Id*</td>
<td><input type = "email" name ="loginId" placeholder="enter your email id"  required></td>
</tr>
<tr>
<td>Password*</td>
<td><input type = "password" name ="password" placeholder="enter your password" required></td>
</tr>
<tr><td><a href = "changePassword.jsp">Change Password</a></td></tr>
<tr><td colspan = "2" align = "center"><input type = "submit" value ="Login"></td></tr>
<input type="hidden" name="page" value="adminLogin"> 
</form>
</table>
</body>
</html>