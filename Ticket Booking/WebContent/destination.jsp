<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Destination</title>
</head>
<body>
    <center>
    <form method="post" action="filter.jsp">
        <table border="1" cellpadding="5">
            <tr>
                <td>From</td>
                <td><input type="text" name="From" placeholder="Leaving From"></td>
            </tr>
            <tr>
                <td>To</td>
                <td><input type="text" name="To" placeholder="Going to"></td>
            </tr>
            <tr>
                <td>Date</td>
                <td><input type="text" name="Date" placeholder="YYYY-MM-DD"></td>
            </tr>
            <tr>
                <td colspan="2"><center><input type="submit" value="Submit"></center></td>
            </tr>
        </table>
    </form>
    </center>
</body>
</html>
