<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.lang.Thread.State"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>Fitness center</title>
		<link href="resources/css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='//fonts.googleapis.com/css?family=Monda|Roboto' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="resources/css/flexslider.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
<style>

.footer-text-area textarea {

margin-left: 580px;
margin-top: -90px;

margin-bottom: 20px;

}
.footer-form h3 {

margin-left: 70px;

margin-top: -160px;

margin-left: 110px;
}
.footer-text-boxs {
margin-left: 100px;
}

</style>

</head>
<body>
<%@include file = "HeaderLogout.jsp" %>
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
<div style = "float:left;margin-left:60px;">	
    <image src = "\Practice_Project/web/adminaddImages/<%=fileName%>" width = "300" height = "200"/>	  
</div>
<div style = "float:left;margin-left:60px;width:50%;">     
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
rs3 = st3.executeQuery("select * from videos where flag = '1'");
%>
  <!--Add 250px -->
   <div style = "margin:15px 37px 550px 37px;background-color:#F2FFE4;">
  <%  
    while(rs3.next())
	  {%>
	  <%//=rs3.getString("videolink")%> 
  <div style = "margin-left:100px;float:left;"><%=rs3.getString("videolink")%> 
<br/><br/>
         <p><b style = "color:green;">About Video: </b><%=rs3.getString("aboutvideo")%></p>
         <p><b style = "color:green;">Name: </b><%=rs3.getString("name")%></p> 
         <p><b style = "color:green;">Email: </b><%=rs3.getString("email")%></p>         
    </div>
       <%}%>
    
   </div> 
    
  
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
 <div class = "footer" >
				<div class="footer-nav-grid">
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">About us</a></li>
						<li><a href="#">Our Purpose &#38; Objective</a></li>
						<li><a href="#">Membership</a></li>
						<li><a href="#">Asian &#38; Wellness Forum</a></li>
						<li><a href="#">Courses</a></li>
						<li><a href="#">Contact</a></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="footer-social-icons">
					<ul>
						<li><a href="#"><img src="resources/images/facebook.png" title="facebook" /></a></li>
						<li><a href="#"><img src="resources/images/twitter.png" title="twitter" /></a></li>
						<li><a href="#"><img src="resources/images/youtube.png" title="Youtube" /></a></li>
					</ul>
				</div>
				<div class="footer-form">
					<h3>Quick Contact</h3>
					<form>
						<div class="footer-text-boxs">
							<input type="text" class="textbox" value="Name:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
							<input type="text" class="textbox" value="Email:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
							<input type="text" class="textbox" value="mobile:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mobile';}">
							<input type="text" class="textbox" value="Website:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Website';}">
						</div>
						<div class="footer-text-area">
							<textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
						</div>
						<input type="submit" value="Call Me">
					</form>
				</div>
				<div class = "clear"> </div>       

<%//@include file = "Footer.jsp" %>
</body>
</html>
