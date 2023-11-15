<%
	if(session.getAttribute("name") != "admin"){
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
<link href="AdminHome.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="Header.jsp"/>
<div class="adminform">
<form action="AdminServlet" method="get">
	<button type="submit" name="action" value="Modify Order">Modify Order</button>
	<button type="submit"  name="action" value="Cancel Order">Cancel Order</button>
</form>
</div>

</body>
</html>