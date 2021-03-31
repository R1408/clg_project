<html>
<head>
<%@ include file = "Header.jsp" %>

<style>
.form-module {
position: relative;
background: #ffffff;
max-width: 320px;
width: 100%;
border-top: 5px solid #33e53b;
-webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
margin: 2% auto;
}
.form-module input {
outline: none;
display: block;
width: 100%;
border: 1px solid #d9d9d9;
margin: 0 0 20px;
padding: 10px 15px;
-webkit-box-sizing: border-box;
box-sizing: border-box;
font-weight: 400;
-webkit-transition: 0.3s ease;
transition: 0.3s ease;
}
.form-module .form {
padding: 30px;
}
.form-module .button {
cursor: pointer;
background: #33e53b;
width: 100%;
border: 0;
padding: 10px 15px;
color: #ffffff;
-webkit-transition: 0.3s ease;
transition: 0.3s ease;
}
a{
text-decoration:none;
}
h3
{
text-align : center;
margin-bottom: 10px;
font-size: 20px;
}
</style>
<script>
function validation()
{
	var x = document.myform.password.value;
	var y = document.myform.confirmpassword.value;
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
		//return true;
		}

if(x==y)
{

	if(x.length<6 && y.length<6)
	{
	alert("Password Length must be Minimum six character.");
	return false;
	}
	else{
	//request.getRequestDispatcher("Data_connection.java");	
	Window.location.href="Data_connection.java";
	return true;
	}
}
else
{
	if(x.length<6 && y.length<6)
    {
	alert("Please Match the Passwod and Password must be Minimum six character");
	return false;
	//request.getRequestDispatcher("Register.jsp");
	//Window.location.href= "Regist.jsp";
    }
	else
	{
	alert("please Match the Password");
	return false;
	}
}
}


</script>

</head>
<body>

<div class = "form-module" >
<div class = "form">
<h3>Registration</h3>
<form action = "insert.php" method = "post" name = "myform" onsubmit = "return validation()" >

<input type = "text" name = "fname" placeholder = "First Name" />

<input type = "text" name = "lname" placeholder = "Last Name" />

<input type = "text" name = "email" placeholder = "email" />

<input type = "password" name = "password" placeholder = "Password"  />

<input type = "password" name = "confirmpassword" placeholder = "confirm password" />

<input type = "submit" class="button" value = "Register" />

<a href = "Login.jsp" style="float:right;color:#202020;" >Click Here to Login </a>					

</form>
</div>
</div>

</body>
<%@ include file = "Footer.jsp" %>

</html>