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
  body{
background-image: url("${a}/beige-background-plush-fabric-delicate-soft-69152506.jpg");
 background-size:cover; 
 font-family:'Roboto', sans-serif;
 color:green;
} 
 .img1{
box-shadow:0 10px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
}
.img1:hover{
box-shadow: 0 0 6px rgba(35, 173, 278, 1);
}
  </style>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div class="container-fluid" style="margin-top:5%;">
 <c:forEach var="i" items="${kd}">
<form action="/SpringDemo/afteraddtocart/${i.p_id}" method="post">
	   <div class="container-fluid">
    <div class="col-sm-2">
	
<img src="${a}/${i.p_id}.jpg"  class="img1" style="width:100%;height:100%;">
    </div>
    <div class="col-sm-10" style="margin-top:6%;padding-left:16%;">
	 <div class="col-sm-2">
	 ID
	 </div>
	 <div class="col-sm-10">
	 ${i.p_id}
	 </div><br>
	  <div class="col-sm-2">
	 Name
	 </div>
	 <div class="col-sm-10">
	${i.p_name}
	 </div><br>
	  <div class="col-sm-2">
	 Price
	 </div>
	  <div class="col-sm-10">
	${i.p_price}
	 </div><br>
	 <div class="col-sm-2">
	 Brand
	 </div>
	  <div class="col-sm-10">
	${i.p_brand}
	 </div><br>
	  <div class="col-sm-2">
	 Description
	 </div>
	 <div class="col-sm-10">
	${i.p_description}
	 </div><br>
	  <div class="col-sm-12">
	 Enter the Quantity:<input type="text" name="quantity" size="8px">
	 </div><br><br><br>
	 </div>
	 <div class="col-sm-2 col-sm-push-5">
	 <input type="submit" value="AddToCart"class="btn btn-success img1" style="padding-left:8%; padding-right:8%;">
	 </div>
	 </div>
  </form>
   </c:forEach>
  </div>
</body>
</html>