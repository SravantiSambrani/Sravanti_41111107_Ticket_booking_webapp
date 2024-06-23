<%@ page import="java.sql.*" %>
<%
    int busId = Integer.parseInt(request.getParameter("busId"));
    int numTickets = Integer.parseInt(request.getParameter("numTickets"));
    int costPerSeat = Integer.parseInt(request.getParameter("costPerSeat"));
    int totalCost = numTickets * costPerSeat;

    // Simulate booking logic here
    // For simplicity, we assume the booking is always successful
%>

<html>
<head>
    <title>Payment Successful</title>
</head>
<body>
    <h2>Payment Successful</h2>
    <p>Bus ID: <%= busId %></p>
    <p>Number of Tickets: <%= numTickets %></p>
    <p>Total Cost: <%= totalCost %></p>
    <p>Your booking is confirmed. Thank you for choosing our service!</p>
</body>
</html>
