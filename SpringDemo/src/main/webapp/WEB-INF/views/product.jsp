<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
.c1{
margin-top:8%;
}
</style>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head> 
<body>
<div class="c1 container" align="center" margin-top:3%;">
<div class="form-group"style="width:400px;height:381px;">
<form:form method="post" action="saveproduct" enctype="multipart/form-data" class="form-horizontal">    
        <div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"></i></span>
          <form:input path="p_id" placeholder="p_id" class="form-control"/>
          </div>
         <div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"></i></span>
 			<form:input path="p_name" placeholder="p-name" class="form-control"/>
 		</div>
 	<div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"></i></span>
 			<form:input path="p_price" placeholder="p_price" class="form-control"/>
 		</div>
 		<div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"></i></span>
 			<form:input path="p_brand" placeholder="p_brand" class="form-control"/>
 		</div>
 <div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"></i></span>
 			<form:input path="p_description" placeholder="p_description" class="form-control"/>
 		</div>
 <div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"></i></span>
 			<form:input path="p_quantity" placeholder="p_quantity" class="form-control"/>
 		</div>
 <div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"placeholder="supplier"></i></span>
        <form:select path="supplier_name" class="form-control"><br>
         <form:option value="supplier name"/>
         <form:options items="${SupplierName}"/>  
		</form:select> 
		</div>
         <div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"></i></span>
         <form:select path="category_name" class="form-control"><br>
         <form:option value="category name"/>
         <form:options items="${CategoryName}"/>
		</form:select> 
		</div>
		<div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"></i></span>
 			<form:input path="file" type="file" class="form-control"/>
 			</div>
                  <input type="submit" value="Save" class="btn btn-block btn-success"/>    
       </form:form> 
       </div>   
       </div>
</body>
</html>