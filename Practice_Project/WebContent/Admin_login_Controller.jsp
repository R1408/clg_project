<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>
<%
String email;
String password;
String get_email="";
String get_password="";
int get_id = 0;

email = request.getParameter("email");
password = request.getParameter("password");

Connection con = null;
Statement st = null;

ResultSet rs = null;
if(email == "" || password == "")
	response.sendRedirect("Ex1.jsp");
try
{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
st = con.createStatement();
rs = st.executeQuery("select count(*) as cnt from register_data where email = '"+email+"'  and password = '"+password+"'");
//rs = st.executeQuery("");
while(rs.next())
{
	//rs = st.executeQuery("select count(*) from register_data where fname = "+username+" and password = "+password);
if(rs.getInt("cnt") >= 1)
	response.sendRedirect("web/MainIndex.jsp");
else {
	response.sendRedirect("Ex2.jsp");
}
}

}
catch(ClassNotFoundException e)
{
	out.println("connection refuse in catch 1");
}
catch(Exception e)
{
	out.println("connection refuse in catch 2");
} finally{
	if(rs != null)
		rs.close();
	if(st != null)
		st.close();
	if(con != null)
		con.close();
}
%>