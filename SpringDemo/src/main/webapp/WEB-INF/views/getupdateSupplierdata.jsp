<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
tr{
width:20%;}
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
</style>
</head>
<body>
<div style="margin-top:20%;margin-left:45%">
<form:form method="post" action="/SpringDemo/updationsuccess">    
        <table>    
         <tr>    
          <td>
          <div class="input-group" style="width:300px;">
  			<span class="input-group-addon"style="color:green;"> <i class="glyphicon glyphicon-user"></i></span>
          <form:input path="name" placeholder="name"/>
          </div>
          </td>  
         </tr>    
         <tr>    
          <td>
          <div class="input-group" style="width:300px;">
  			<span class="input-group-addon"style="color:green;"> <i class="glyphicon glyphicon-pencil"></i></span>
          <form:input path="id" placeholder="id"/>
          </div>
          </td>  
         </tr>   
         <tr>    
          <td>
          <div class="input-group" style="width:300px;">
  			<span class="input-group-addon"style="color:green;"> <i class="glyphicon glyphicon-menu-hamburger"></i></span>
          <form:input path="description" placeholder="description"/>
          </div>
          </td>  
         </tr>   
         <tr>    
          <td>
          <div class="input-group" style="width:300px;">
  			<span class="input-group-addon"style="color:green;"> <i class="glyphicon glyphicon-home"></i></span>
          <form:input path="address" placeholder="address"/>
          </div>
          </td>  
         </tr>   
        </table>   
              <input type="submit" value="Save" class="btn btn-success" style="margin-left:6%;"/> 

       </form:form>  
       </div>  
</body>
</html>