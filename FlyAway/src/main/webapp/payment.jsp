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
#payment{
margin-left: auto;
margin-right:auto;
}
body{
background-color: #87ceeb;
}
h4{
margin-left: 40%;
}
h5{
color:white;
}
</style>
</head>
<body>
<table style="background-color:black;width:100%" >
<tr>
<td>
<td padding="10px"><h5>FlyAway</h5></td>
<td><a href = "home.jsp" id="link" id="link">Home</a></td>
<td><a href = "search.jsp" id="link">Search</a></td>
</tr>
</table>
<form action="paymentSuccess.jsp" method="post">
<h4>Payment</h4>
<table id="payment">
<tr>
<td>Card Number</td>
<td><input type="text" name="cardNumber" required></td>
</tr>
<tr>
<td>CVV</td>
<td><input type="password" name="cvv" required></td>
</tr>
<tr>
<td>Name On Card</td>
<td><input type="text" name="nameOnCard" required></td>
</tr>
<tr>
<td>Email</td>
<td><input type="email" name="email" required></td>
</tr>
<tr>
<td><!-- <button><a href="paymentSuccess.jsp">Payment</a></button> -->
<input type="submit" name="submit" value="Payment">
</td>
</tr>
</table>
</form>
</body>
</html>