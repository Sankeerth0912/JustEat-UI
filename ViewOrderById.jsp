<%
	if(session.getAttribute("name") != "vorder"){
		response.sendRedirect("Login.jsp");
	}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="ViewOrderById.css" rel="stylesheet" type="text/css"/> 
</head>
<body>
<%-- 
	<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/pizza"
                           user="root"  password="vamsi"/>
        <% 
        	int id = Integer.valueOf(request.getParameter("orderid"));
        %>
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from pizzaorder where orderId=?;
            <sql:param value="<%=id %>" />
        </sql:query>
--%>
<jsp:include page="Header.jsp"/>
<div class="view">
	<form action="CustomerServlet" method="get">
		<div class="searchOrder">
		<p style="color: black;">Enter OrderID</p>
		<input type="number" id="orderId" name="orderid" style="border-bottom: 2px solid #000; color:black">
		<input type="hidden" id="customerId" name="customerId" value="<%="C"+session.getAttribute("id") %>">
		<button type="submit" onclick="displayData()"> Search</button>
		<input type="hidden" name="action" value="viewOrder" >
		</div>
		<div id="hide" class="Error">
			<h2>Order ID is not present</h2>
		</div>
	</form>
</div>
<script>

	var error = "<%=request.getAttribute("error") %>"
	var div = document.getElementById("hide");
	if(error == "noId"){
		div.style.display = "block";
	}
	else{
		div.style.display = "none";
	}
</script>
</body>
</html>