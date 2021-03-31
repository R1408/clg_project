<%@page import="java.sql.Statement"%>
<%//@page import="com.mysql.jdbc.Statement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%//@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
Connection con = null;
Statement st = null;
PreparedStatement pstmt = null;
String img = request.getParameter("img");
String description = request.getParameter("description");
File image = new File(img);
//pstmt = con.prepareStatement();
try
{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
if(con!=null){
	st = con.createStatement();
	st.executeUpdate("insert into admin_add_data(image,description) values('"+image+"','"+description+"')");
}
else {
 System.out.println("Connection Problem in else");
}
//insert into data("");
}
catch(ClassNotFoundException e){
	out.println("Connection problem in catch 1");
}
catch(Exception e){
	out.println("Connection problem in catch 2");
}
%>