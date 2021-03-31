<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%
Connection con = null;
Statement st = null;
ResultSet rs= null;
String id = request.getParameter("id");
int idNo = Integer.parseInt(id);
System.out.println(" geted id is "+idNo);
try{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
	st = con.createStatement();
	//st.executeUpdate("update videos set flag = '1' where id = '"+idNo+"'");
	st.executeUpdate("update videos set flag = '1' where id = '"+idNo+"'");
	response.sendRedirect("MainIndex.jsp");
}
catch(ClassNotFoundException e){
	out.println("connection refuse in catch 1");
}
catch(Exception e){
	out.println("connection refuse in catch 2");
} 
finally{
	if(rs != null)
		rs.close();
	if(st != null)
		st.close();
	if(con != null)
		con.close();
}

%>
