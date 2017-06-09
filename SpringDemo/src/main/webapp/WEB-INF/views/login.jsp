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
input[type="text"]:focus{
background-color:white;
}
input[type="password"]:focus{
background-color:white;
}
body{
background-image:url("${a}/67530205-clothing-wallpapers.jpg");
background-size:cover;
}
.c1{
margin-top:15%;
}
</style>
<script>
function validate()
{
var namev=document.form.uname;
var idv=document.form.eid;
if(username(namev))
{
if(emailid(idv))
{
}
}
return false;
}
function username(namev)
{
var x=/^[a-zA-Z]+$/; 
if(namev.value.match(x))
{
return true;
}
else
{
alert("Username must have alphabet characters only");  
uname.focus();  
return false;  
}
} 
function emailid(idv)
{
var y=/^[0-9a-zA-Z]+$/;
if(idv.value.match(y))
{
return true;
}
else
{
alert("enter valid id");  
elem.focus();
return false;
}
}
 </script>
 </head>
 <body>
 <div class="c1 container" align="center" margin-top:3%;">
 <form name="form"method="post" onsubmit="return validate();" class="form-horizontal" action="/SpringDemo/sendtoindex">
 <div class="form-group"style="width:400px;height:381px;">
 	        <c:if test="${empty username}">
 <%= session.getAttribute("s1")%>
 </c:if>
 <h1 style="color:red">Sign In</h1>
 <div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"></i></span>
    <input id="username" type="text" class="form-control" name="username" placeholder="userid">
  </div>
  <div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"style="color:green;"></i></span>
    <input id="password" type="password" class="form-control" name="password" placeholder="Password">
	</div>
<input type="submit"class="btn btn-block btn-success" value="Log In">
	  <pre><input type="checkbox"style="float:left;">Remember me             <a style="text-decoration:none;float:right;"href="#">Forgot Password?</a></pre>
   
  </div>
 </form>
 </div>
 </body>
 </html>