<html>
<head>
		<link href="resources/css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='//fonts.googleapis.com/css?family=Monda|Roboto' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="resources/css/flexslider.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
</head>

<body>
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
<%@include file = "HeaderLogout.jsp" %>

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

<iframe width="340" height="200" style =  "float : ;margin-left:35px;"  src="https://www.youtube.com/embed/GgNPTGOmD3A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<iframe width="340" height="200" style =  "float : ;margin-left:300px;" src="https://www.youtube.com/embed/CLKlZ5OdtP0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br/><br/>
<hr/ style = "width:76%;margin-left:0px;">
<div class="contact">
						<h3>For Video</h3>
						
						<form id = "reset" action = "Addvideo.jsp" method = "Post" onsubmit = "return validation();" name = "myform"  />
							<span>Name:</span>
							<span><input type="text" name = "name"></span> 
							<span>Email:</span>
							<span><input type="text" name = "email"></span>
							<span>About video:</span>
							<span>
							      <input type="radio" name = "aboutvideo" value = "Weight gain" style = "color:black;">Weightgain
								  <input type="radio" name = "aboutvideo" value = "Weight loss" style = "color:black;">Weightloss	
							</span>
							<span>Add Video Link:</span> 
							<span><textarea name = "message" rows = "3" cols = "30" style = "width:40%;height:80px;"> </textarea></span>
							<input type = "hidden" value = "0" name = "flag" />
							<input type="submit" value="Send" style = "float :left;">
						</form>
						<input style = " margin-left:5px;" type="submit" value="Reset" onclick = "resetForm()">
</div>
<br/>
	<%@include file = "Footer.jsp" %>
</body>
</html>