<%@page import="java.sql.Statement"%>
<%//@page import="com.mysql.jdbc.Statement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
Connection con = null;
Statement st = null;

try{
String name= request.getParameter("name");
String email = request.getParameter("email");
String aboutvideo = request.getParameter("aboutvideo");
String videolink = request.getParameter("message");
String flag = request.getParameter("flag");

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");

if(con!=null){
	st = con.createStatement();
	st.executeUpdate("insert into videos(name,email,aboutvideo,videolink,flag) values('"+name+"','"+email+"','"+aboutvideo+"','"+videolink+"','"+flag+"')");
	response.sendRedirect("videos.jsp");
}
else {
 System.out.println("Connection Problem in else");
}

}
catch(ClassNotFoundException e){
	out.println("Connection problem in catch 1");
}
catch(Exception e){
	out.println("Connection problem in catch 2");
}
%>