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
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
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
	   <c:forEach var="i" items="${kids}">
    <div class="col-sm-3">
     <a href="eachproductdetails/${i.p_id}">
     	  <img src="${a}/${i.p_id }.jpg"  class="img-responsive img1" style="width:320px;height:300px;">
      <div><p style="color:rgba(41, 89, 198, 0.78);">Rs.${i.p_price}</p>
        </div>
        </a>
	 </div>
     </c:forEach> 
       <c:forEach var="i" items="${mens}">
    <div class="col-sm-3">
     <a href="eachproductdetails/${i.p_id}">
     <img src="${a}/${i.p_id}.jpg"  class="img-responsive img1">
     <div><p style="color:rgba(41, 89, 198, 0.78);">Rs.${i.p_price}</p>
        </div>
        </a>
	 </div>
     </c:forEach>    
     <c:forEach var="i" items="${womens}">
         <div class="col-sm-3">
    <a href="eachproductdetails/${i.p_id}">
    	<img src="${a}/${i.p_id }.jpg"  class="img-responsive img1">
    	<div><p style="color:rgba(41, 89, 198, 0.78);">Rs.${i.p_price}</p>
        </div>
        </a>
	 </div>
     </c:forEach>   
  
</body>
</html>