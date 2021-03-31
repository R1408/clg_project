<%@page import="java.sql.Statement"%>
<!-- <%@page import="com.mysql.jdbc.Statement"%>
-->
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
Connection con = null;
Statement st = null;

try
{
String fname= request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String password = request.getParameter("password");
String confirmpassword = request.getParameter("confirmpassword");


Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
out.println("established");


if(con!=null)
{
	st = con.createStatement();
	st.executeUpdate("insert into fitness_ex(fname) values(fname)");
	
}
else
{
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