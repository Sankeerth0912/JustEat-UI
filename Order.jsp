<%
	if(session.getAttribute("name") != "porder"){
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
		String id = String.valueOf(session.getAttribute("id"));
		String orderId = String.valueOf(session.getAttribute("oid"));
	%>
<jsp:include page="Header.jsp"/>
<div class="order">
	<form action="CustomerServlet" method="get">
		<div class="customer">
			<p>Customer ID</p>
			<input type="text" name="customerId" value=<%="C"+id%> readonly>
			<p>Customer Name</p>
			<input type="text" name="customerName" required>
			<p>Address</p>
			<input type="text" name="address" required>
			<p>Phone Number</p>
			<input type="number" id="phno" name="phno" maxlength="10" onchange="onNumberChange()" required>
			<h5 id="ne" class="ne" style="display: none">phone number is short</h5>
		</div>
		<div class="ordertype"	>
			<p>Topping</p>
			<select name="topping" id="topping" onchange="onSelectTopping(value)">
				<option id="mushroom" value="Mushroom">Mushroom</option>
				<option id="capsicum" value="Capsicum" >Capsicum</option>
				<option id="paneer" value="Paneer" >Paneer</option>
				<option id="jalapeno" value="Jalapeno">Jalapeno</option>
			</select>
			<p>Date</p>
			<input type="date" name="date" required>
			<p>Price</p>
			<input type="number" id="price" name="price" readonly>
			<button id="btn" type="button" onclick="showhide()">Submit</button>
			<input type="hidden" name="order" value=<%=id%> >
			<input type="hidden" name="action" value="Order">
		</div>
	</form>
</div>
<script type="text/javascript">
	const onNumberChange = () =>{
		
		var ph = document.getElementById("phno").value
		var d = document.getElementById("ne")
		if(ph.toString().length === 10){
			d.style.display = "none"
			document.getElementById("btn").type = "submit"
		}
		else{
			d.style.display = "block"
			document.getElementById("btn").type = "button"
		}
	}
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