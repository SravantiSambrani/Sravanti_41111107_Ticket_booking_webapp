<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dao.UserDao, com.bean.User, java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bus Details</title>
</head>
<body>
<h1>Bus List</h1>
<%
    List<User> list = UserDao.getAllRecords();
    request.setAttribute("list", list);
%>
<table border="1" width="100%">
    <tr>
        <th>Bus Id</th>
        <th>Bus Name</th>
        <th>Bus Service_no</th>
        <th>Amount</th>
        <th>Availability</th>
        <th>Boarding</th>
        <th>Destination</th>
        <th>Date</th>
        <th>Select</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.bname}</td>
            <td>${u.bno}</td>
            <td>${u.cost}</td>
            <td>${u.seats}</td>
            <td>${u.board}</td>
            <td>${u.dest}</td>
            <td>${u.date}</td>
            <td><a href="selectuser.jsp?id=${u.id}">Select</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
