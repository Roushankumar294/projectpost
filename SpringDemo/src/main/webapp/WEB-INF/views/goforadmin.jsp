<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:url value="/resources/images" var="a"/>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
  *{
  margin:0%;
  padding:0%;
  }
  a{
  text-decoration:none;
  color:white;
  font-weight:bold;
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
		.fa{
	padding:10px;
	font-size:30px;
	width:45px;
	text-align:center;
	text-decoration:none;
	margin:5px 2px;
	border-radius:100%;
	}
  </style>
</head>
<body>
<div class="container-fluid c1" style="padding:4px;">
<div style="float:right;">
	<ul style="list-style-type:none;padding-right:14px;">
	<li style="float:right;padding:4px;"><kbd><a href="logout"  style="color:cyan;">LOGOUT</a></kbd>
</ul>
	</div>
	</div>

	<div style="width:25%;height:620px;float:left;overflow:auto;
	border:1px solid grey;background-color:#7cc3b1;">
<img src="${a}/1908409_1657366644489210_4743937553071984114_n.jpg" width="150" height="150" class="img-thumbnail">
<div class="col-sm-12 col-xl-12 col-xs-12">
<h6>NAME : <kbd>Roushan Kumar</kbd></h6><br><br>
<h6>ROLE : <kbd>ADMIN</kbd></h6><br><br>
<h6>CONTACT NUMBER : <kbd>9560547022</kbd></h6><br><br>
<h6>CONTACT ID : <kbd>kroushan294@gmail.com</kbd></h6><br><br>
	</div>
	</div>
<div class="container" style="margin-left:25%;background-color:#9efbf6;">
<marquee><b style="color:coral;">
welcome to the world of Admin.perform task as per mentioned options</b>
</marquee>
<div class="container" style="margin-top:3%;">
<div class="col-sm-4 col-md-4 col-xs-4" style="padding:12px;background-color:#00bcd4;font-weight:bold;">
SUPPLIER
</div>
<div class="col-sm-4 col-md-4 col-xs-4" style="padding:12px;background-color:#00bcd4;font-weight:bold;">
CATEGORY
</div>
<div class="col-sm-4 col-md-4 col-xs-4" style="padding:12px;background-color:#00bcd4;font-weight:bold;">
PRODUCT
</div>
<a href="addsupplier" class="col-sm-4 col-md-4 col-xs-4" style="padding:12px;background-color:#00bcd4">
ADD SUPPLIER
</a>
<a href="addcategory" class="col-sm-4 col-md-4 col-xs-4" style="padding:12px;background-color:#00bcd4">
ADD CATEGORY
</a>
<a href="addproduct" class="col-sm-4 col-md-4 col-xs-4" style="padding:12px;background-color:#00bcd4;">
ADD PRODUCT
</a>
<a href="viewsupplier" class="col-sm-4 col-md-4 col-xs-4" style="padding:12px;background-color:#00bcd4">
VIEW SUPPLIER
</a>
<a href="viewcategory" class="col-sm-4 col-md-4 col-xs-4" style="padding:12px;background-color:#00bcd4">
VIEW CATEGORY
</a>
<a href="viewproduct" class="col-sm-4 col-md-4 col-xs-4" style="padding:12px;background-color:#00bcd4;">
VIEW PRODUCT
</a>
</div>
</div>	
</body>
</html>