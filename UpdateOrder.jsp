<%
	if(session.getAttribute("name") != "updateorder"){
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
<link href="UpdateOrder.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%
	System.out.println(request.getAttribute("customerId"));
%>
<jsp:include page="Header.jsp"/>
<div class="Order">
	<form >
		<div class="search">
			<p>Enter Order ID</p>
			<input type="number" id="oid" value=<%=request.getAttribute("orderId")%>>
			<button type="button">Search</button>
		</div>
		<div class="UpdateOrder">
			
			<p>Customer ID</p>
			<input type="text" id="custId" name="customerId" value=<%=request.getAttribute("customerId")%> readonly>
			<p>Order ID</p>
			<input type="number" id="OrderId" name="orderId" value=<%=request.getAttribute("orderId")%>  readonly>
			<p>Topping</p>
			<select name="topping" id="topping" onchange="onSelectTopping(value)">
				<option id="Mushroom" value="Mushroom">Mushroom</option>
				<option id="Capsicum" value="Capsicum" >Capsicum</option>
				<option id="Paneer" value="Paneer" >Paneer</option>
				<option id="Jalapeno" value="Jalapeno">Jalapeno</option>
			</select>
			<p>Price</p>
			<input type="number" id="price" name="price" value=<%=request.getAttribute("price")%>  readonly>
			<Button type="submit" style="margin-top: 7%; margin-left: 0%; width: 40%;" >Update</Button>
			<input type="hidden" name="action" value="Update">
		</div>
	</form>
</div>
<script type="text/javascript">
	
	var topping = "<%=request.getAttribute("topping")%>"
	document.getElementById(topping).selected = true
	
	const onSelectTopping = (i) =>{
		var p;
		if(i =="Mushroom"){
			p = 400
		}
		else if(i == "Capsicum"){
			p = 380
		}
		else if(i == "Paneer"){
			p = 435
		}
		else if(i == "Jalapeno"){
			p = 420
		}
		document.getElementById("price").value = p
	}
	
</script>
</body>
</html>