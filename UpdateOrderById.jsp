<%
	if(session.getAttribute("name") != "uorder"){
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
<jsp:include page="Header.jsp"/>
<div class="Order">
	<form action="AdminServlet" method="get" >
		<div class="search">
			<p>Enter Order ID</p>
			<input type="number" id="oid" name="oid" required>
			<button type="submit">Search</button>
			<input type="hidden" name="action" value="SearchId">
			<input  type="hidden" name="Search" value="us">
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
     /*function showhide()
     {
	    var div = document.getElementById("hide");
	    if (div.style.display !== "block") {
	        div.style.display = "block";
	    }
	    else {
	        div.style.display = "none";
	    }
     }*/
  </script>
</body>
</html>