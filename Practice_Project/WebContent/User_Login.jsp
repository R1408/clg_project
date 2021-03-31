<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
String username;
String password;
String get_username="";
String get_password="";
int get_id = 0;

username = request.getParameter("username");
password = request.getParameter("password");

Connection con = null;
Statement st = null;
//ResultSet rs = null;
ResultSet rs= null;
//ResultSet rs = null;
  //ResultSet rs = null;
if(username == "" || password == "")
	response.sendRedirect("Ex1.jsp");
try
{

Class.forName("com.mysql.jdbc.Driver");
//con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
//out.println("connection made");

st = con.createStatement();
rs = st.executeQuery("select count(*) as cnt from register_data where fname = '"+username+"'  and password = '"+password+"'");
//rs = st.executeQuery("");
while(rs.next())
{
	//rs = st.executeQuery("select count(*) from register_data where fname = "+username+" and password = "+password);
if(rs.getInt("cnt") >= 1){
	HttpSession sesion = request.getSession();
	sesion.setAttribute("name", username);
	response.sendRedirect("Bmi.jsp");
}		
else {
	response.sendRedirect("Ex2.jsp");
}
	/*	
get_username = rs.getString("fname");
get_password = rs.getString("password");
get_id = rs.getInt("id");
*/
}

/*
out.println(" fname is "+get_username);
out.println(" password is "+get_password);
out.println(" login is "+username);
out.println(" login is "+password);
out.println("id is "+get_id);
// here to go exception

*/
/*while(get_id!=0)
{
if(username.equalsIgnoreCase(get_username))
{
	out.println("match");
}else
{
	out.println(" Noo match");
}*/

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