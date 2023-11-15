<%
	if(session.getAttribute("name") != "deleteorder"){
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
<link href="DeleteOrder.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<jsp:include page="Header.jsp"/>
<div>
	<form>
		<div class="search">
			<p>Enter Order ID</p>
			<input type="number" name="orderId" value=<%=request.getAttribute("orderId")%>>
			<button type="button">Search</button>
		</div>
		<div class="dispOrder">
			<p>Customer ID</p>
			<input type="text" id="custId" name="custId" value=<%=request.getAttribute("customerId")%>  readonly>
			<p>Order ID</p>
			<input type="number" id="OrderId" name="OrderId"  value=<%=request.getAttribute("orderId")%>  readonly>
			<p>Topping</p>
			<input type="text" id="topping" name="topping" value=<%=request.getAttribute("topping")%>   readonly>
			<p>Price</p>
			<input type="number" id="price" name="price" value=<%=request.getAttribute("price")%>  readonly>
			<Button type="submit" style="margin-top: 7%; margin-left: 0%; width: 40%;" >Delete</Button>
			<input type="hidden" name="action" value="Delete">
		</div>
	</form>
</div>
</body>
</html>