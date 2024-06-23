<%@ page import = "java.sql.*" %>
<% 
String uname = request.getParameter("uname");
String pass = request.getParameter("pass");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/booking", "root", "root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from passenger where uname ='"+ uname + "' and pass='" + pass + "'");
if (rs.next()){
	session.setAttribute("uname", uname);
	response.sendRedirect("destination.jsp");
}

else {
	out.println("Invalid password / username <a href='index.jsp'> try again </a>");
	}
%>