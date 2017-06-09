<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <c:url value="/resources/images" var="a"/>
<%@page isELIgnored="false"%>
  <c:url var="a" value="/perform_login"/>  
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
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
</style>
</head>
<body>
<form method="post" action='<c:url value='/perform_login'></c:url>' class="form-horizontal">
<div style="width:30%;margin-top:18%;margin-left:36%;">
<div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"></i></span>
    <input id="username" type="text" class="form-control" name="username" placeholder="userid">
  </div>
<div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"style="color:green;"></i></span>
    <input id="password" type="password" class="form-control" name="password" placeholder="Password">
	</div>
	    <input type="submit"class="btn btn-block btn-success" value="Log In">
</div>
</form>
</body>
</html>