<%
	if(session.getAttribute("name") != "vieworder"){
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
<link href="ViewOrder.css" rel="stylesheet" type="text/css"/> 
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
<%
	System.out.println(request.getAttribute("custId"));
%>
<jsp:include page="Header.jsp"/>
<div class="view">
	<form>
		<div class="searchOrder">
		<p style="color: black;">Enter OrderID</p>
		<input type="number" id="orderId" name="orderid" value=<%=request.getAttribute("oid")%> style="border-bottom: 2px solid #000; color:black">
		<input type="hidden" id="customerId" name="customerId" value="<%=request.getAttribute("custId") %>">
		<button type="submit"> Search</button>
		<input type="hidden" name="action" value="viewOrder" >
		</div>
		<div id="hide" class="displayOrder">
			
			<p>Customer ID</p>
			<input type="text" id="custId" name="custId" value=<%=request.getAttribute("custId")%>  readonly>
			<p>Order ID</p>
			<input type="number" id="OrderId" name="OrderId"  value=<%=request.getAttribute("oid")%>  readonly>
			<p>Topping</p>
			<input type="text" id="topping" name="topping" value=<%=request.getAttribute("topping")%>   readonly>
			<p>Price</p>
			<input type="number" id="price" name="price" value=<%=request.getAttribute("price")%>  readonly>
			
		</div>
	</form>
</div>
</body>
</html>