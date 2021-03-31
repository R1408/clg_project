<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<html>
<head>
 <title>Edit Data</title>
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
//rs = st.executeQuery("select * from register_data");

String fname = "";
String lname = "";
String email = "";
int id = 0;
fname = request.getParameter("fname");
lname = request.getParameter("lname");
email = request.getParameter("email");
id = Integer.parseInt(request.getParameter("idValue"));
//PrintWriter out = response.getWriter();
out.println("fname is " + fname);
out.println("id is " + id);

    while(rs.next())
	  {
%>

  <form>
     <input type = "text" name = "fname" value = '<% rs.getString("fname");%>' />
     <input type = "text" name = "lname" value = ""  />
     <input type = "email" name = "email" value = "" />  
  </form>
 <% }
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
