<%
	if(session.getAttribute("name") != "user"){
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
<link href="UserHome.css" rel="stylesheet" type="text/css"/> 
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<div class="userform">
	<form action="CustomerServlet" method="get">
		<button type="submit" name="action" value="Place Order">Place Order</button>
		<button type="submit" name="action" value="View Order">View Order</button>
	</form>
</div>
</body>
</html>   