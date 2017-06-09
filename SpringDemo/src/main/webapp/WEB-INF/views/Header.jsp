<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
  *{
  margin:0%;
  padding:0%;
  }
  a{
  text-decoration:none;
  color:white;
  }
  a:hover{
  text-decoration:none;
  color:orange;
  }
  a:active{
  text-decoration:none;
  color:green;
  }
 	.c1{
	background-color:#657d97;
	}
	input[type=search]{
	width:0.4s linear;
	padding:4px;
	}
 </style>
  </head>
<body>
  <div class="container-fluid c1"  style="padding:4px;">
<div class="dropdown">
<button class="btn dropdown-toggle" type="button" id="menu1" data-toggle="dropdown" style="float:left;
	color:white;background-color:#657d97;" title="HOME">zoop
    </button>
        </div>
 <button class="btn dropdown-toggle" type="button" id="menu1" data-toggle="dropdown" style="float:left;
	color:white;background-color:#657d97;" title="HOME">HOME
    </button>
   <div class="dropdown">
    <button class="btn dropdown-toggle" type="button" id="menu1" data-toggle="dropdown" style="float:left;
	color:white;background-color:#657d97;" title="CATEGORY">CATEGORY
	<span class="caret"></span></button>
	<ul class="dropdown-menu" role="menu" aria-labelledby="menu1" style="top:35px;left:125px;">
      <li><a href="kids">Kids</a></li>
      <li><a href="mens">Mens</a></li>
      <li><a href="womens">Womens</a></li>
    </ul>
	</div>
  
     <button class="btn dropdown-toggle" type="button" id="menu1" data-toggle="dropdown" style="float:left;
	color:white;background-color:#657d97;" title="CONTACT">CONTACT
    </button>
	
    <button class="btn dropdown-toggle" type="button" id="menu1" data-toggle="dropdown" style="float:left;
	color:white;background-color:#657d97;"title="ABOUT US">ABOUT US
    </button>
	<div style="float:right;">
	<ul style="list-style-type:none;padding-right:14px;">
	        <li style="float:right;">
	        <c:if test="${empty username}">
	       
      <li style="float:right;padding-right:14px;"><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li style="float:right;padding-right:14px;"><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      </li>
      <li style="float:right;">
      <c:if test="${not empty username}">
		<kbd style="color:white;">welcome: <%= session.getAttribute("username")%> </kbd>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="myprofile"><span class="glyphicon glyphicon-shopping-cart" style="font-size:36px;color:#4ac34c"></span>
		</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="signout" style="color:red;padding-right:14px;">
		<kbd style="font-size:19px;color:red;">signout</kbd>
		</a>
	</c:if>
	</li>
	 </ul>
	</div>
	</div>
</body>
</html>