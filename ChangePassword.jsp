<%
	if(session.getAttribute("name") != "cp"){
		response.sendRedirect("Login.jsp");
	}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="ChangePassword.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div id="hide" class="Error">
			<h2>Enter Correct Username/Password</h2>
	</div>
	<div class="changepassword">
		<form action="LoginServlet" method="get">
			<p>Old Password</p> <input id="old" type="password" name="oldpass" required>
			<p>New Password</p> <input id="np" type="password" name="newpass" required>
			<p>Confirm Password</p> <input id="cp" type="password" name="confirmpass" onchange="confirmPassword(value)"  required>
			<button id="btn" type="button" >Submit</button>
			<input type="hidden" name="action" value="changepassword" >
		</form>
	</div>
<script type="text/javascript">
	var e = "<%=request.getAttribute("cperror")%>"
	var div = document.getElementById("hide");
	if(e == "pwrong"){
		div.style.display = "block";
	}
	else{
		div.style.display = "none";
	}
	
	const confirmPassword = (c) =>{
		var n = document.getElementById("np").value;
		var d = document.getElementById("cp");
		console.log("c "+c)
		if(n != c){
			d.style.color = "red";
			document.getElementById("btn").type = "button"
			console.log(c)
		}
		else{
			d.style.color = "whitesmoke";
			document.getElementById("btn").type = "submit"
		}
	}
	
</script>
</body>
</html>