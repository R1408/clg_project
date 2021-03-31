<html>
<head>


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

<%@ include file = "HeaderLogout.jsp"%>
<!--  <a href = "logout.jsp"><button class = "btn btn-primary" type = "button" style = "margin-left:86em;">logout</button></a>
-->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
function validation()
{
	var x = document.myform.weight.value;
	var y = document.myform.height.value;
	var bmi = x/(y*y);
	
	if(bmi < 18.5)
		{
		alert("Your BMI is "+bmi+"\nUnderweight");
		window.location = "Incre_w.jsp";
		return  false;
		}
	else if(bmi > 24.9)
		{
		alert("Your BMI is "+bmi+"\nOverWeight");
		window.location = "Decre_w.jsp";
		return false;
		}
	else
		{
		alert("Your BMI is"+bmi+"\nNormal");
			 if(confirm("if you want to increase Weight"))
				 {
				 window.location = "Incre_w.jsp";
				 return false;
				 }
			 else if(confirm("if you want to decrease Weight"))
				 {
				 window.location = "Decre_w.jsp";
				 return false;
				 }
			 else
				 {
				 
				 return true;
				 }
		}
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
<div class = "container" style = "margin-top:50px;margin-bottom:40px ;width:60%" >
	<div class = "row">
	<div class = "col-md-3"></div>
	<div class = "col-md-6">
	
			<div class = "panel panel-success">
		
			<div class = "panel-heading" align = "center" bgcolor:"green">
			BMI(Body Mass Index)
			</div>
			<div class = "panel-body">
			<form method = "post" action = "" name = "myform" onsubmit = "return validation()">
			<table class = "table table-hover">
			<tr> 
			
			<td>Weight(KG)</td>
			<td><input type = "text" class = "form-control" name = "weight" placeholder = "Weight" ></td>
			</tr>
			
			<tr>
			
			<td>Height(m)</td>
			<td><input type = "text" class = "form-control" name = "height" placeholder = "Height" ></td>
			</tr>
			
			<tr>
			<td colspan = "4" align = "right">
			<input type = "submit" class = "btn btn-success" name = "submit" value = "Calculate BMI" >	
			</table>
			</form>
			</div>
			
		</div>
		</div>
	</div>
</div>
        <!-- Footer -->
        <div class = "footer">
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
        
</body>

<%//@ include file = "Footer.jsp"%>

</html>