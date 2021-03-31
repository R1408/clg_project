<script>
 function editRecord(id){
	var f = document.form;
	f.method = "Post";
	f.action = 'edit.jsp?id='+id;
	f.submit();
 } 		
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
Connection con1 = null;
Statement st1 = null;

ResultSet rs1= null;

try
{

Class.forName("com.mysql.jdbc.Driver");
con1 = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");

st1 = con1.createStatement();
rs1 = st1.executeQuery("select * from register_data");

%>
<form method = "Post" name = "form" >
<table class="table table-hover" cellspacing = "4" cellpadding = "4">
  <thead class="thead-dark" >
    <tr>
      <th scope="col">id</th>
      <th scope="col">FirstName</th>
      <th scope="col">LastName</th>
      <th scope="col">Email</th>
      <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      Action</th>
      
    </tr>
  </thead>
  
  <tbody>
  <% 
    while(rs1.next())
	  {
	%>
    <tr>
      <td><%= rs1.getString("id") %></td>
      <td><%= rs1.getString("fname")%></td>
      <td><%= rs1.getString("lname")%></td>
      <td><%= rs1.getString("email")%></td>
      <td>
     <!--  <button type = "button" class = "btn btn-primary" onclick = "editRecord(<%//=rs1.getString("id")%>);">Edit</button> 
     -->
     <a href = "edit.jsp?d=<%=rs1.getString("id")%>"><button type = "button" class = "btn btn-primary" >Edit</button></a>
      
     <a href = "DeleteData.jsp?d=<%=rs1.getString("id") %>"><button type = "button" class = "btn btn-danger" >Delete</button></a>
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
	if(rs1 != null)
		rs1.close();
	if(st1 != null)
		st1.close();
	if(con1 != null)
		con1.close();
}
%>
