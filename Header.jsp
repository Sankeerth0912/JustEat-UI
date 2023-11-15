<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="Header.css" rel="stylesheet" type="text/css" />
</head> 	
<body>
	<div class="header">
		<form action="LogOutServlet" method="get" style="
		    padding: 0px;
		    display: contents;">
		    <div class="home">
	   			<input type="submit" name="action" value="Home">
	   			<input type="hidden" name="role" value="<%=session.getAttribute("role") %>" >
   			</div>
			<div class="logout">
				<input type="submit" name="action"  value="Logout">
			</div>
		</form>
	</div>
</body>
</html>