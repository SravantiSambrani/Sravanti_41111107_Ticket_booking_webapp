<%@ page import="com.dao.UserDao" %>
<%@ page import="com.bean.User" %>

<jsp:useBean id="u" class="com.bean.User" />
<jsp:setProperty property="*" name="u" />

<%
    // Assuming the bus ID is passed as a parameter
    int busId = Integer.parseInt(request.getParameter("id"));
    User bus = UserDao.getUserById(busId);
%>

<html>
<head>
    <title>Bus Details</title>
</head>
<body>
    <h2>Bus Details</h2>
    <%
        if(bus.getId() != 0) {
    %>
        <p>Bus ID: <%= bus.getId() %></p>
        <p>Bus Name: <%= bus.getBname() %></p>
        <p>Bus Number: <%= bus.getBno() %></p>
        <p>Cost per Seat: <%= bus.getCost() %></p>
        <p>Seats Available: <%= bus.getSeats() %></p>
        <p>Boarding: <%= bus.getBoard() %></p>
        <p>Destination: <%= bus.getDest() %></p>
        <p>Journey Date: <%= bus.getDate() %></p>
        
        <form action="ticket.jsp" method="post">
            <input type="hidden" name="busId" value="<%= bus.getId() %>">
            <input type="hidden" name="costPerSeat" value="<%= bus.getCost() %>">
            <label for="numTickets">Number of Tickets:</label>
            <input type="number" id="numTickets" name="numTickets" min="1" max="<%= bus.getSeats() %>" required>
            <br><br>
            <input type="submit" value="Book Tickets">
        </form>
    <%
        } else {
    %>
        <p>Bus not found.</p>
    <%
        }
    %>
</body>
</html>
