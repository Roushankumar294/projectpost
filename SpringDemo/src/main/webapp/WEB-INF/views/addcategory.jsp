<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
.c1{
margin-top:15%;
}
input[type="text"]:focus{
background-color:white;
}
input[type="password"]:focus{
background-color:white;
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
<form:form method="post" action="savecategory" class="form-horizontal">         
         <div class="form-control input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"style="color:green;"></i></span>
        <form:input path="id" placeholder="id" class="form-control"/>
         </div>
         <div class="form-control input-group">
         <span class="input-group-addon"><i class="glyphicon glyphicon-lock"style="color:green;"></i></span>
    	 <form:input path="name" placeholder="name" class="form-control"/>
 		 </div>
         <div class="form-control input-group">
         <span class="input-group-addon"><i class="glyphicon glyphicon-lock"style="color:green;"></i></span>
         <form:input path="description" placeholder="description" class="form-control"/>
          </div>
          
                  <input type="submit" value="Save" class="btn btn-block btn-success"/>    
       </form:form> 
       </div>   
       </div>
</body>
</html>