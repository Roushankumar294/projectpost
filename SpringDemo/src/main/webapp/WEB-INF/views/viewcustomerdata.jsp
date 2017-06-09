<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
  color:black;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}

::-webkit-scrollbar {
    width: 2px;
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
<jsp:include page="Header.jsp"></jsp:include>
<h1 style="color:red;">Welcome To Customer Information Page</h1>
<div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0" class="table table-hover">
      <thead>
 <tr>
 <th>uername</th>
  <th>emailid</th>
  <th>password</th>
  <th>confirm-password</th>
  <th>address</th>
  <th>Delete</th>
 </tr>
 </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0" class="table table-hover">
      <tbody>
<tr>
 <c:forEach var="i" items="${customerdata}">
 <tr>
 <td>${i.username}</td>
 <td>${i.emailid}</td>
 <td>${i.password}</td>
  <td>${i.confirmpassword}</td>
  <td>${i.address}</td>
  <td><a href="deletecustomerdata/${i.emailid}" style="color:red;font-size:16px;">
     <span class="glyphicon glyphicon-trash"></span>
</a></td>
  </tr>
     </c:forEach>
  </tr>
  </tbody>
    </table>
  </div>
</body>
</html>