<a href = "InsertImage.jsp">
	<button class = "btn btn-success">Add Image</button>
</a>
<script>
 /*function editRecord(id){
	var f = document.form;
	f.method = "Post";
	f.action = 'EditImage.jsp?id='+id;
	f.submit();
 } */		
</script>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>

<%/*
String username;
String password;
String get_username="";
String get_password="";
int get_id = 0;
*/
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

%>
<form method = "Post" name = "form" >
<table class="table table-hover" cellspacing = "4" cellpadding = "4">
  <thead class="thead-dark" >
    <tr>
      <th scope="col">Id</th> 
      <th scope="col">Image</th>
      <th scope="col">Description</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  
  <tbody>
  <% 
    while(rss.next())
	  {
    	fileName = rss.getString("image");
	%>
    <tr>
   
    <td><%= rss.getString("id")%></td>
    
      <td><image src = "adminaddImages/<%=fileName%>" width = "300" height = "200"/>
	  </td>
      <td style = "width:350px;margin-left:30px;"><%= rss.getString("description")%></td>
      <td>
 <!--
 <a href = "EditImage.jsp?d=<%//=rss.getString("id")%>"><button type = "button" class = "btn btn-primary" >Edit</button></a>
    -->
     <a href = "DeleteImage.jsp?d=<%=rss.getString("id") %>"><button type = "button" class = "btn btn-danger" >Delete</button></a>
      </td> 
    </tr>
    <%}%>
  </tbody>
</table>	
</form>
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

