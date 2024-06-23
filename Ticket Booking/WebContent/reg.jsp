<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New Account</title>
</head>
<body>
<center>
<div class="register-box">
    <form method="post" action="registration.jsp">
        <table border="1" width="30%" cellpadding="3">
            <thead>
                <tr>
                    <th colspan="2">Create New Account</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="uname" value="" placeholder="User Name"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" value="" placeholder="Email"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass" value="" placeholder="Password"></td>
                </tr>
                <tr>
                    <td>Mobile No.</td>
                    <td><input type="text" name="phone" value="" placeholder="Mobile number"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                    <td><input type="reset" value="Reset"/></td>
                </tr>
                <tr>
                    <td colspan="2">Successfully registered <a href="index.jsp">Login Here</a></td>
                </tr>
            </tbody>
        </table>
    </form>
</div>
</center>
</body>
</html>
