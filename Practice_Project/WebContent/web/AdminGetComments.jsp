<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>

<%
String name;
String email = "";
String message = "";

Connection con = null;
Statement st = null;
ResultSet rs= null;

try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
st = con.createStatement();
rs = st.executeQuery("select * from comments");
while(rs.next()){
%>
<div>
	<p><b>Name:</b> <%=rs.getString("name")%>
		         &nbsp;&nbsp;
		   <b>Email:</b> <%=rs.getString("email")%>		
		 <a style = "margin-left:1000px;margin-top:50px;" href = "DeleteDataformComment.jsp?d=<%=rs.getString("id") %>"><button type = "button" class = "btn btn-danger" >Delete</button></a>
	</p>
	<p><b>Message:</b> <%=rs.getString("messages")%></p>
  <hr style = "border-top:1px solid grey "/>
</div>

<% }%>
<%
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
