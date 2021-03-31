<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 
 </head>
<body>
<%
String username;
String password;
String get_username="";
String get_password="";
int get_id = 0;

Connection con = null;
Statement st = null;

ResultSet rs= null;

try
{

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");

st = con.createStatement();
rs = st.executeQuery("select * from register_data");

%>
<table class="table table-hover" cellspacing = "4" cellpadding = "4">
  <thead class="thead-dark">
    <tr>
      <th scope="col">id</th>
      <th scope="col">FirstName</th>
      <th scope="col">LastName</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  
  <tbody>
  <% 
    while(rs.next())
	  {
	%>
    <tr>
      <td><%= rs.getInt("id") %></td>
      <td><%= rs.getString("fname")%></td>
      <td><%= rs.getString("lname")%></td>
      <td><%= rs.getString("email")%></td>
      <td><%= rs.getString("password")%></td> 
      <td><button type = "button" class = "btn btn-primary" onclick = "editRecord()">Edit</button>
          <button type = "button" class = "btn btn-danger" onclick = "deleteRecord()">Delete</button></td> 
    </tr>
    <%} %>
  </tbody>
</table>	
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
	if(rs != null)
		rs.close();
	if(st != null)
		st.close();
	if(con != null)
		con.close();
}
%>
</body>
</html>