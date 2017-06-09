 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:url value="/resources/images" var="a"/>
 <%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.img1{
box-shadow:0 10px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
}
.img1:hover{
box-shadow: 0 0 6px rgba(35, 173, 278, 1);
}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<form action="shippingAddress" method="post">
<table class="table img1">
<tr>
    <th>id</th>
    <th>name</th>
    <th>price</th>
    <th>brand</th>
	<th>description</th>
 	 <th>quantity</th>
 	 <th>delete</th>
  </tr>
  <c:forEach var="i" items="${details}">
  <tr>
 	 <td>${i.c_id}</td>
     <td>${i.c_name}</td>
     <td>${i.c_price}</td>
     <td>${i.c_brand}</td>
     <td>${i.c_description}</td>
     <td>${i.c_quantity}</td>
     <td>
     <a href="/SpringDemo/delete/${i.c_id}" style="color:red;">
     <span class="glyphicon glyphicon-trash"></span>
     </a>
     </td>
     </tr>
     </c:forEach>    
</table>
<hr color="red">
 <input type="submit" value="ORDER" class="btn btn-success container-fluid"  style="margin-left:85%;height:30px;width:150px;">
</form>
</body>
</html>