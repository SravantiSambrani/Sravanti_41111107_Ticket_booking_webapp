<%@ page import = "java.sql.*" %>
<% 
String user = request.getParameter("uname");
String pwd = request.getParameter("pass");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/company", "root", "root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from employee where uname ='"+ user + "' and pass='" + pwd + "'");
if (rs.next()){
	session.setAttribute("user", user);
	response.sendRedirect("success.jsp");
}

else {
	out.println("Invalid password / username <a href='index.jsp'> try again </a>");
	}
%>
