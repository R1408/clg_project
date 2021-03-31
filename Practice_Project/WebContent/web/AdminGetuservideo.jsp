<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>
<%
Connection con3 = null;
Statement st3 = null;
ResultSet rs3= null;
String videolink = "";
try
{

Class.forName("com.mysql.jdbc.Driver");
con3 = DriverManager.getConnection("jdbc:mysql://localhost:3307/fitness_hub","root","");
st3 = con3.createStatement();
rs3 = st3.executeQuery("select * from videos");

%>
<form method = "Post" name = "form" >
<table class="table table-hover" cellspacing = "4" cellpadding = "4">
  <thead class="thead-dark" >
    <tr>
     
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">About video</th>
      <th scope="col">&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;video</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  
  <tbody>
  <% 
    while(rs3.next())
	  {%>
    <form>
    <input type = "hidden" name = "id" value = "<%= rs3.getString("id") %>">
    </form>
        <tr> 
      <td style = "margin-top:20px;"><%= rs3.getString("name") %></td>	  
      <td style = "margin-top:20px";><%= rs3.getString("email")%></td>
      <td style = "margin-top:20px";><%= rs3.getString("aboutvideo")%></td>
      <td style = "margin-top:20px";><%= videolink = rs3.getString("videolink")%></td>
      <td>
      
  <!-- <form action = "ApproveUserVideo.jsp">
     <input type = "checkbox" name = "check" >
     <input type = "checkbox" name = "check" value = "false">
     -->
    <a href = "ApproveUserVideo.jsp?id=<%=rs3.getString("id")%>"> <button type = "button" class = "btn btn-default">Submit</button></a>
    <a href = "DeleteVideo.jsp?d=<%=rs3.getString("id")%>"><button type = "button" class = "btn btn-danger" >Delete</button></a>
     </td> 
     </tr>
     <hr style = "width:85%;color:white;"/>
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
	if(rs3 != null)
		rs3.close();
	if(st3 != null)
		st3.close();
	if(con3 != null)
		con3.close();
}
%>

