<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <c:url value="/resources/images" var="a"/>    
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
h1{
color:green;
}
.globe {
    font-size: 175px;
}
</style>
</head>
<body style="margin-left:30%;margin-top:10%;">
    <i class="glyphicon glyphicon-ok-sign globe"style="color:#5bc0de;"></i>
   	<h5 style="color:green;">Thank You Mr./Ms <%= session.getAttribute("username")%> <br><br><br>
		Your order has been Placed. Must Visit again
		</h5>
</body>
</html>