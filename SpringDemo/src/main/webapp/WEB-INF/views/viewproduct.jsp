<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false" %>
  <c:url value="/resources/images" var="a"/>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
   <style>
h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}

::-webkit-scrollbar {
    width:6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}
    </style>
</head>
<body ng-app="myApp" ng-controller="productCt" > 
<div class="container-fluid c1" style="padding:4px;">
<div style="float:right;">
	<ul style="list-style-type:none;padding-right:14px;">
	<li style="float:right;padding:4px;"><kbd><a href="logout"  style="color:cyan;">LOGOUT</a></kbd>
</ul>
	</div>
	</div>
<script>
var app = angular.module('myApp', []);
app.controller('productCt', function($scope) {
    $scope.product=${productdata}
                  
    });
</script>
<marquee><h1 style="color:red;">welcome to Product information</h1></marquee>
<input type="text" placeholder="search" style="border:1px solid blue;border-radius:5px;height:25px;float:right;" ng-model="product1">
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
 <tr>
 <th>Id</th>
  <th>Name</th>
  <th>Price</th>
  <th>Brand</th>
  <th>Description</th>
  <th>Quantity</th>
      <th>Category</th>
      <th>Supplier</th>
   <th>Edit</th>
   <th>Delete</th>   
 </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
<tr ng-repeat="i in product|filter:product1" >
 <td>{{i.p_id}}</td>
 <td>{{i.p_name}}</td>
 <td>{{i.p_price}}</td>
  <td>{{i.p_brand}}</td>
  <td>{{i.p_description}}</td>
    <td>{{i.p_quantity}}</td>
    <td>{{i.category_name}}</td>
    <td>{{i.supplier_name}}</td>
    <td><a href="/SpringDemo/editproduct/{{i.p_id}}" style="color:red;">
     <span class="glyphicon glyphicon-pencil"  style="color:red;font-size:16px;"></span>
</a></td>
    <td><a href="/SpringDemo/deleteproduct/{{i.p_id}}" style="color:red;font-size:16px;">
     <span class="glyphicon glyphicon-trash"></span>
</a></td>       
  </tr>
</tbody>
    </table>
  </div>
  </body>
</html>