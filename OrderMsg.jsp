<%
	if(session.getAttribute("name") != "ordermsg"){
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
<link href="Order.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<%
		String orderId = String.valueOf(session.getAttribute("oid"));
		String topping = String.valueOf(session.getAttribute("Topping"));
	%>
<jsp:include page="Header.jsp"/>
<div class="order">
	<form action="CustomerServlet" method="get">
		<div class="customer">
			<p>Customer ID</p>
			<input type="text" name="customerId" value=<%=session.getAttribute("cid") %> readonly>
			<p>Customer Name</p>
			<input type="text" name="customerName" value=<%=session.getAttribute("cname") %>>
			<p>Address</p>
			<input type="text" name="address" value=<%=session.getAttribute("address") %>>
			<p>Phone Number</p>
			<input type="number" name="phno" value=<%=session.getAttribute("phno") %>>
		</div>
		<div class="ordertype"	>
			<p>Topping</p>
			<select name="topping" id="topping" onchange="onSelectTopping(value)" >
				<option id="Mushroom" value="Mushroom">Mushroom</option>
				<option id="Capsicum" value="Capsicum" >Capsicum</option>
				<option id="Paneer" value="Paneer" >Paneer</option>
				<option id="Jalapeno" value="Jalapeno">Jalapeno</option>
			</select>
			<p>Date</p>
			<input type="date" name="date" value=<%=session.getAttribute("date") %>>
			<p>Price</p>
			<input type="number" id="price" name="price" value=<%=session.getAttribute("Price") %> readonly>
			<button type="submit">Submit</button>
		</div>
	</form>
	<div id="dispId" class="hide">
		<h2><%="Your order has been placed order Id :"+orderId %></h2>
	</div>
</div>
<script type="text/javascript">
	var topping = "<%=topping%>"
	console.log(topping)
	document.getElementById(topping).selected = true;	
</script>
</body>
</html>