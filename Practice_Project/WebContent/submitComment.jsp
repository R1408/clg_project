<%@page import="java.sql.Statement"%>
<%//@page import="com.mysql.jdbc.Statement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
Connection con = null;
Statement st = null;

try
{
String name= request.getParameter("name");
String email = request.getParameter("email");
String messages = request.getParameter("message");

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
response.sendRedirect("contact.jsp");


if(con!=null){
	st = con.createStatement();
	st.executeUpdate("insert into comments(name,email,messages) values('"+name+"','"+email+"','"+messages+"')");
}
else {
 System.out.println("Connection Problem in else");
}


//insert into data("");
}
catch(ClassNotFoundException e)
{
	out.println("Connection problem in catch 1");
}
catch(Exception e)
{
	out.println("Connection problem in catch 2");
}
%>