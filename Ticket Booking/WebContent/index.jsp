<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<center>
<form method="post" action = "login.jsp">
<table border = "1" width = "30%" cellpadding="3">
<tr>
<td colspan="2" ><center>Ticket Booking Application</center></td>
</tr>
<tr>
<td>User name</td>
<td><input type="text" name="uname"></td>
</tr>
<tr>
<td>Password</td>
<td><input type = "text" name = "pass"></td>
</tr>
<tr>
<td colspan = "2"><center><input type = "submit" value = "Login"></center>
</td>
</tr>
<tr>
<td colspan="2"><center>New User? <a href = "reg.jsp">Create New Account</a></center></td>
</tr>
</table>
</form>
</center>
</body>
</html>