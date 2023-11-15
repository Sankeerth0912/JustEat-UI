<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="Login.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="hide" class="Error">
			<h2>Enter Correct Username/Password</h2>
	</div>
	<div class="loginform">
	<h1>Just Eat</h1>
		<form action="LoginServlet" method="get">
			<p>Username</p> <input type="text" name="name" placeholder="Enter your name" required ><br>
			<p>Password</p> <input type="password" name="pass" placeholder="Enter your password" required><br>
			<button type="submit">Login</button>
			<input type="hidden" name="action" value="login" >
		</form>
	</div>
	
	<script type="text/javascript">
	var error = "<%=request.getAttribute("error") %>"
	var div = document.getElementById("hide");
	if(error == "failed"){
		div.style.display = "block";
	}
	else{
		div.style.display = "none";
	}
	</script>
</body>
</html>