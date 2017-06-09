<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:url value="/resources/images" var="a"/>
  <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style>
  body{
    background-color:#eae9ee;
    }
  *{
  margin:0%;
  padding:0%;
  }
  a{
  text-decoration:none;
  color:white;
  }
  a:hover{
  text-decoration:none;
  color:orange;
  }
  a:active{
  text-decoration:none;
  color:green;
  }
  body
	{
	background-image:url("C:\Users\K\Downloads\500_F_106213969_SkWrEJI7l8DZ2v1i64SnnFE4R8JcxgFG.jpg");
	}
	.c1{
	background-color:#657d97;
	}
	input[type=search]{
	width:0.4s linear;
	padding:4px;
	}
	input[type=search]:focus{
	width:200%;
	background-color:#9bdff1;
	}
	.fa{
	padding:10px;
	font-size:30px;
	width:45px;
	text-align:center;
	text-decoration:none;
	margin:5px 2px;
	border-radius:100%;
	}
	.fa:hover{
	opacity:0.5;
	}
.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

	.fa-youtube{
	background:#bb0000;
	color:white;
	}  </style>
  </head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div class="container">
	<marquee direction="right" behaviour="alternate" scrollamount="15">
<img src="${a}/051117_denim_1x._CB511356676_.jpg" height="150px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="${a}/Amazon_GW_DesktopHero_AVD-4688_GWAcquisitionCouchCouple_1500x300_HO._CB531091636_.
jpg" height="150px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="${a}/HERO_W_xCat_Moms_1x._CB510780384_.jpg" height="150px" >
	</marquee>
	</div>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
	        <li data-target="#myCarousel" data-slide-to="4"></li>

    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="${a}/K0707-Home-1-Main-Slider-3-Footwear-Store-11052017.jpg" style="width:100%;">
      </div>

      <div class="item">
        <img src="${a}/K0696-Home-Main-Slider-2-Brand-Day-Puma-Min-40-off-11052017.jpg" alt="Chania" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="${a}/K0674-Home-Main-Slider-3-Brand-Day-Dorothy-Perkins-Flat-40-off-10052017.jpg" alt="Flower" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div class="container">
 <h2 style="color:#6666FF;"> <b style="font-weight:bold;font-size:36px;">o</b>ur inspiration</h2>
  <p style="color:#0099CC;font-variant:small-caps;font-size:16px;">Get closer than ever to your customers. So close that you tell them what they need well before they realize it themselves." - Steve Jobs, Apple

It is not the employer who pays the wages. Employers only handle the money... It is the customer who pays the wages."- Henry Ford, Ford Motor Company

We see our customers as invited guests to a party, and we are the hosts. It's our job to make the customer experience a little bit better.- Jeff Bezos, Amazon.com</p>
  <blockquote style="background-color:#f0f8ff;">
    <p>For 50 years,we have been offering oue best ervices to our customers.</p>
  </blockquote>
</div>
<div class="container">
<div class="col-xs-3 col-sm-3 col-md-3" style="padding:34px;">
<img src="${a}/417nnPezJPL._AC_UL260_SR200,260_.jpg"  width="250px">
</div>
<div class="col-xs-3 col-sm-3 col-md-3" style="padding:34px;">
<img src="${a}/p19.jpg"  width="250px">
</div>
<div class="col-xs-3 col-sm-3 col-md-3" style="padding:34px;">
<img src="${a}/p20.jpg"  width="250px">
</div>
<div class="col-xs-3 col-sm-3 col-md-3" style="padding:34px;">
<img src="${a}/pw6.jpg"  width="250px">
</div>
<div class="col-xs-3 col-sm-3 col-md-3" style="padding:34px;">
<img src="${a}/pw5.jpg"  width="250px">
</div>
<div class="col-xs-3 col-sm-3 col-md-3" style="padding:34px;">
<img src="${a}/pw1.jpg"  width="250px">
</div>
<div class="col-xs-3 col-sm-3 col-md-3" style="padding:34px;">
<img src="${a}\pw3.jpg"  width="250px">
</div>
<div class="col-xs-3 col-sm-3 col-md-3" style="padding:34px;">
<img src="${a}\pw4.jpg"  width="250px">
</div>
</div>
<button class="btn btn-primary" onclick="scroll()" style="width:100%;">Back to top</button>
<script>
  function scroll(){
  window.scrollTo(0,1);
  }
  </script>
  <div class="container">
  <div class="row">
  <div class="col-sm-12">
  <h4 style="color:red;">FOLLOW US ON</h4>
	<a href="#" class="fa fa-facebook"></a>
   <a href="#" class=" fa fa-twitter"></a>
  <a href="#" class=" fa fa-youtube"></a>
</div>
</div>
</div>
</body>
</html>