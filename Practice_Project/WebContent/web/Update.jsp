<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>
<%
String ide = request.getParameter("id");
int num = Integer.parseInt(ide);
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String password = request.getParameter("password");
String confirmpassword = request.getParameter("confirmpassword");

Connection conn = null;
Statement stt = null;
ResultSet rss= null;

try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
	stt = conn.createStatement();
	stt.executeUpdate("update register_data set fname = '"+fname+"',lname='"+lname+"',email = '"+email+"',password = '"+password+"',confirmpassword = '"+confirmpassword+"' where id = '"+num+"'");
	response.sendRedirect("MainIndex.jsp");
}
catch(Exception e){
	out.println("exception "+e);
}
%>