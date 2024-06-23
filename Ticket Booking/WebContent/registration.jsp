<%@ page import = "java.sql.*" %>
<% 
String uname = request.getParameter("uname");
String email = request.getParameter("email");
String pass = request.getParameter("pass");
String phone = request.getParameter("phone");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/booking", "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("INSERT INTO passenger(uname, email, pass, phone) VALUES ('" + uname + "', '" + email + "', '" + pass + "', '" + phone + "')");
    
    if (i > 0) { 
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("welcome.jsp");
    }
} catch (Exception e) {
    e.printStackTrace();
    out.println("Error: " + e.getMessage());
    response.sendRedirect("welcome.jsp");
}
%>
