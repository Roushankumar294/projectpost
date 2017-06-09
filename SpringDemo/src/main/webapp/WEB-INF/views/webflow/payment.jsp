 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="e"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 <c:url value="/resources/images" var="a"/>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>payment mode Page</title>
<style>
body{
background-image:url("${a}/paymentoptions.png");
background-size:cover;
}
</style>

</head>
<body>
       <e:form action="${flowExecutionUrl}&_eventId=gotoorderdetails" commandName="payment">  
        <table  style="margin-left:40%;margin-right:30%;margin-top:15%;border:2px dashed red;">
        <tr>
        <th style="padding:15px;color:black;">SELECT YOUR PAYMENT MODE </th>
        </tr>
    <tr> 
             <td style="padding:15px;color:blue;"> 
               <div class="form-control input-group">
    <span class="input-group-addon">
    <i class="glyphicon glyphicon-credit-card"style="color:green;">&nbsp;
         <e:radiobutton path="mode" value="credit_card" label="credit_card" /> 
         </i>
         </span> 
         </div> 
             </td>          
            </tr>
            <tr>
            <td style="padding:15px;color:blue;">
            <div class="form-control input-group">
    <span class="input-group-addon">
    <i class="glyphicon glyphicon-credit-card"style="color:green;">&nbsp;
            <e:radiobutton path="mode" value="debit_card" label="debit_card" />
            </i>
            </span>
            </div>
            </td>
            <tr>
            <td style="padding:15px;color:blue;">
             <div class="form-control input-group">
    <span class="input-group-addon">
    <i class="glyphicons glyphicons-currency-conversion" style="color:green;">&nbsp;
           <e:radiobutton path="mode" value="cash" label="cash"/>
           </i>
           </span>
           </div>
        </td>
        </tr>
        </table>
         <input type="submit" value="Next" class="btn btn-success" style="margin-left:55%;height:30px;width:150px;height:40px;">
       
       </e:form> 
</body>
</html>