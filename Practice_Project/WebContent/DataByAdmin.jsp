<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>
<html>
<head></head>
<body>
<%
Connection conn = null;
Statement stt = null;
ResultSet rss= null;
String fileName = "";
try
{

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");

stt = conn.createStatement();
rss = stt.executeQuery("select * from admin_add_data");
    while(rss.next())
	  {
    	fileName = rss.getString("image");
	%>
<div style = "width:50%; float:left;">	
<div style = "float:left;">	
    <image src = "\Practice_Project/web/adminaddImages/<%=fileName%>" width = "300" height = "200"/>	  
</div>
<div style = "float:left;margin-left:15px;">     
     <%= rss.getString("description")%>
</div>      
</div>       
    <%}%>
  
<%
}
catch(ClassNotFoundException e)
{
	out.println("connection refuse in catch 1");
}
catch(Exception e)
{
	out.println("connection refuse in catch 2");
} 
finally{
	if(rss != null)
		rss.close();
	if(stt != null)
		stt.close();
	if(conn != null)
		conn.close();
}
%>

</body>
</html>