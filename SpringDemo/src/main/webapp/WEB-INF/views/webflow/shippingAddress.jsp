<%@ taglib uri="http://www.springframework.org/tags/form" prefix="d"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
 <c:url value="/resources/images" var="a"/>   
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>payment mode Page</title>
<style>
 body{
background-image: url("${a}/68299119-clothing-wallpapers.jpg");
 background-size:cover; 
 font-family:'Roboto', sans-serif;
 color:green;
} 
</style>
</head>
<body>
 
       <d:form action="${flowExecutionUrl}&_eventId=gotopayment" commandName="shippingAddress" class="form-horizontal">    
         <table style="margin-left:35%;margin-right:30%;margin-top:20%;" >    
         <tr  style="width:100%;">    
          <td>city: </td>   
          <td>
            <div class="form-control input-group">
          <span class="input-group-addon"style="color:green;"><i class="glyphicon glyphicon-user"></i>
          <d:input path="city"  />
          </span>
         </div>
          </td>  
         </tr>    
         <tr>    
          <td>State :</td>    
          <td>
            <div class="form-control input-group">
          <span class="input-group-addon"style="color:green;"><i class="glyphicon glyphicon-user"></i>
          <d:input path="state" />
          </span>
          </div>
          </td>  
         </tr>   
         <tr>    
          <td>Country :</td>    
          <td>
            <div class="form-control input-group">
          <span class="input-group-addon"style="color:green;"><i class="glyphicon glyphicon-user"></i>
          <d:input path="country" />
          </span>
          </div>
          </td>  
         </tr>  
         <tr>    
          <td>Street_no :</td>    
          <td>
            <div class="form-control input-group">
          <span class="input-group-addon"style="color:green;"><i class="glyphicon glyphicon-user"></i>
          <d:input path="street_no" />
          </span>
          </div>
          </td>  
         </tr>   
         <tr>    
          <td>House_no :</td>    
          <td>
            <div class="form-control input-group">
           <span class="input-group-addon"style="color:green;"><i class="glyphicon glyphicon-user"></i>
          <d:input path="house_no" />
          </span>
          </div>
          </td>  
         </tr>    
         <tr>    
          <td>
          <input type="submit" value="ORDER"  class="class="btn btn-block btn-success" style="margin-left:94%;margin-top:10%;width:100px;"/>
          </td>    
         </tr>    
        </table>    
       </d:form> 
</body>
</html>