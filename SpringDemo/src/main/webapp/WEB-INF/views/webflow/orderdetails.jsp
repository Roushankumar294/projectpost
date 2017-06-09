<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <c:url value="/resources/images" var="a"/>    
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body{
background-image:url("${a}/paymentoptions.png");
background-size:cover;
}
</style>

<title>orders Page</title>
</head>
<body style="margin-left:30%;margin-top:10%;">
<div class="container">
${orders.shippingAddress}
</div>
<br>
<div class="container">
${orders.payment}
</div>
<br>
<div class="container">
<a href="${flowExecutionUrl}&_eventId=gotoorderplaced" class="btn btn-info">NEXT</a>
</div>
</body>
</html>