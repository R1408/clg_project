<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
	<head>
		<title>Fitness Center</title>
		<link href="resources/css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='//fonts.googleapis.com/css?family=Monda|Roboto' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="resources/css/flexslider.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
function validation()
{
	var z = document.myform.email.value;
	var atr = z.indexOf("@");
	var dot = z.lastIndexOf(".");
	
	
	if(atr<1 || dot<atr+2 || z.length<=dot+2)
		{
		alert("Please Enter Valid Email Address");
		return false;
		}
	else
		{
		return true;
		}
}

function resetForm()
{
	document.getElementById("reset").reset();
}
</script>
		
	</head>
	<body>
	<%
HttpSession sesion = request.getSession(false);
if(sesion!=null){
	String name = (String)sesion.getAttribute("name");
	if(name == null){
		response.sendRedirect("Login.jsp");
	}
}else{
	out.println("please login");
	response.sendRedirect("Login.jsp");
}
%>	
		<!---start-wrap--->
		<div class="wrap">
			<!---start-header--->
			<div class="header">
				<!---start-logo--->
				<div class="logo">
					<a href="Home.jsp"><img src="resources/images/head.jpg" style = "width:100px;height:50px;" title="logo" /></a>
				</div>
				<!---End-logo--->
				<!---start-head-social-icons--->
				<div class="top-social-icons">
					<div class="social-icons">
						<ul>
							<li><a href="#"><img src="resources/images/facebook1.png" title="facebook" /></a></li>
							<li><a href="#"><img src="resources/images/twitter1.png" title="Twitter" /></a></li>
							<li><a href="#"><img src="resources/images/youtube1.png" title="Youtube" /></a></li>
						</ul>
					</div>
					<div class="clear"> </div>
				</div>
				<div class="clear"> </div>
				<!---End-head-social-icons--->
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li><a href="Home.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home</a></li>
						<li><a href="about.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About us</a></li>
						<li><a href="videos.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Upload Video</a></li>
						<li><a href="Uservideos.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vidoes</a></li>
						<li><a href="contact.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Comment</a></li>
						<li><a href="logout.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Logout</a></li>
						<li><a href="Register.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sign up</a></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<!---End-top-nav---->
				
			</div>
			<!---End-header--->
			
			<!---start-main---->
			<div class="main">
			
				<!---start-Content---->
				<!---start-Contact---->
				<div class="content">
						
					<div class="contact">
						<h3>Comment</h3>
						<form id = "reset" action = "submitComment.jsp" method = "Post" onsubmit = "return validation();" name = "myform"  />
							<span>Name:</span>
							<span><input type="text" name = "name"></span> 
							<span>Email:</span>
							<span><input type="text" name = "email"></span>
							<span>Message:</span> 
							<span><textarea name = "message"> </textarea></span>
							<input type="submit" value="Send" style = "float :left;">
						</form>
						<input style = " margin-left:5px;" type="submit" value="Reset" onclick = "resetForm()">
					</div>
					<div class="clear"> </div>
				</div>
				<!---End-Contact---->
				<!---End-Content---->
				<!---start-sidebar---->
				<div class="side-bar">
					<div class="sidebar-top-add">
						<h3>Sponsersed by</h3>
						<a href="#"><img src="resources/images/slid10.jpg" title="add"/></a>
					</div>
					<div class="presedent-img">
							<div class="Latest-news-title side-bar-sub-heading">
								<h3>Form the desk of President</h3>
								<h5> </h5>
								<div class="clear"> </div>
							</div>
						<a href="#"><img src="resources/images/slid7.jpg" title="name" /></a>
					</div>
					<div class="sponsers-list">
						<h3>Sponsersed by</h3>
						<a href="#"><img src="resources/images/slid14.jpg" title="sponser-name" /></a>
						<a href="#"><img src="resources/images/slid14.jpg" title="sponser-name" /></a>
					</div>
				</div>
				<div class="clear"> </div>
				<!---End-sidebar---->
			</div>
			<!---End-main---->
			</div>
			<!---start-footer---->
			<div class="footer">
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
						<input type="submit" value="Call Me" >
					</form>
				</div>
				<div class="clear"> </div>
				
			</div>
			<!---End-footer---->
		<!---End-wrap--->
		<!-- Reset Form After Submit Data -->
		
	</body>
</html>

