<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false" %>
   <c:url value="/resources/images" var="a"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
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
<body>
<div class="container-fluid c1" style="padding:4px;">
<div style="float:right;">
	<ul style="list-style-type:none;padding-right:14px;">
	<li style="float:right;padding:4px;"><kbd><a href="logout"  style="color:cyan;">LOGOUT</a></kbd>
</ul>
	</div>
	</div>
<marquee><h1 style="color:red;">welcome to Category information</h1></marquee>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
 <tr>
 <th>id</th>
  <th>name</th>
  <th>description</th>
  <th>Edit</th>
    <th>Delete</th>
   </tr>
   </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <tr>
 <c:forEach var="i" items="${categorydata}">
 <tr>
 <td>${i.id}</td>
 <td>${i.name}</td>
  <td>${i.description}&nbsp;&nbsp;</td>
  <td><a href="getcategorydata/${i.id}">
     <span class="glyphicon glyphicon-pencil"  style="color:red;font-size:16px;"></span>

</a>
   <td><a href="deletecategorydata/${i.id}" style="color:red;font-size:16px;">
     <span class="glyphicon glyphicon-trash"></span>
</a>
    </td>
    </tr> 
    </c:forEach>
  </tr>
  </tbody>
    </table>
  </div>
</body>
</html>