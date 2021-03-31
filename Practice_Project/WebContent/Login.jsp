
<html>
<head>
<%@ include file = "Header.jsp"%>

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

 
<div class = "container" style = "margin-top:50px;margin-bottom:40px ;width:60%" >
	<div class = "row">
	<div class = "col-md-3"></div>
	<div class = "col-md-6">
	
			<div class = "panel panel-success">
		
			<div class = "panel-heading" align = "center" style = "font-size: 20px;">
			Login
			</div>
			<div class = "panel-body">
			<form method = "post" action = "User_Login.jsp">
			<table class = "table table-hover" >
			<tr> 
			
			<td><i class = "fa fa-user"></i>&nbsp;&nbsp;Username</td>
			<td><input type = "text" class = "form-control" name = "username" placeholder = "Enter Username" ></td>
			</tr>
			    
			<tr>
			    
			<td><i class = "fa fa-lock"></i>&nbsp;&nbsp;Password</td>
			<td><input type = "password" class = "form-control" name = "password" placeholder = "Enter Password" ></td>
			</tr>
			
			<tr>
			<td colspan = "4" align = "right">
			<input type = "submit" class = "btn btn-success" name = "submit" value = "login" >


			</table>
			</form>
			</div>
			
			<div align = "right" style = "margin:-30px 10px 10px 0px">
			<p><a href = "Register.jsp"><b style ="color:green">create account</b></a></p>
			</div>
		</div>
		</div>
	</div>
</div>

	<div class="footer">
				<div class="footer-nav-grid">
					<ul>
						<li><a href="Home.jsp">Home</a></li>
						<li><a href="about.jsp">About us</a></li>
						<li><a href="about.jsp">Our Purpose &#38; Objective</a></li>
						<li><a href="about.jsp">Membership</a></li>
						<li><a href="contact.jsp">Contact</a></li>
						<li><a href="Login.jsp">Sign in</a></li>
						<li><a href="Register.jsp">Sign up</a></li>
						
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
				<div class="clear"> </div>
		<!--  		
					<div class="copy-right">
					<p> &copy; 2013 Health_spa. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
					</div>	
		-->			
</body>
<%//@include file = "Footer.jsp"%>

</html>