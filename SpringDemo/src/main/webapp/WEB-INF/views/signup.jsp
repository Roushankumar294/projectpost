 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false"%>
 <c:url value="/resources/images" var="a"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body{
   font-family: 'Roboto', sans-serif;
  background-image:url("${a}/faster-fashion-clothes-like-software-2.jpg");
background-size:cover;
}
  </style>
</head>
<body>
<div class="container" style="margin-left:35%;mragin-right:35%;margin-top:18%;width:25%;">
<form name="signup" method="post" action="savedata">
 <div class="input-group" style="width:300px;">
  <span class="input-group-addon"style="color:green;"><i class="glyphicon glyphicon-user"></i></span>
  <input type="text" class="form-control" placeholder="Username" name="username">
</div>
<div class="input-group" style="width:300px;">
<span class="input-group-addon" style="color:green;"><i class="glyphicon glyphicon-pencil"></i></span>
  <input type="text" class="form-control" placeholder="email-id"  name="emailid">
</div>
<div class="input-group" style="width:300px;">
<span class="input-group-addon"style="color:green;"><i class="glyphicon glyphicon-lock"></i></span>
  <input type="password" class="form-control" placeholder="password"  name="password">
</div>
<div class="input-group" style="width:300px;">
<span class="input-group-addon"style="color:green;"><i class="glyphicon glyphicon-lock"></i></span>
  <input type="password" class="form-control" placeholder="confirm-password" name="confirmpassword">
</div>
<div class="input-group" style="width:300px;">
<span class="input-group-addon"style="color:green;"><i class="glyphicon glyphicon-home"></i></span>
  <input type="text" class="form-control" placeholder="address" name="address">
</div>
<div class="input-group" style="width:300px;">
<input type="submit" value="SIGN-UP" class="btn btn-block btn-success">
</div>
</form>
</div>
</body>
</html>