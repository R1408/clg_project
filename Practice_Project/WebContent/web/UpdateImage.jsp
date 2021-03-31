<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>
<%
String ide = request.getParameter("id");
int num = Integer.parseInt(ide);
String image = request.getParameter("image");
String description = request.getParameter("description");

Connection conn = null;
Statement stt = null;
ResultSet rss= null;

try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
	stt = conn.createStatement();
	stt.executeUpdate("update admin_add_data set image = '"+image+"', description = '"+description+"'where id = '"+num+"'");
}
catch(Exception e){
	out.println("exception "+e);
}
%>