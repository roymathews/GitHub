<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shopping Site</title>
<!-- <link href="css/bootstrap.css" rel="stylesheet" type="text/css"> -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-3.3.4.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/test.css" rel="stylesheet">
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
#shop-nav ul {
    list-style-type: none;
	display:block;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #3B7C9F;
}

#shop-nav li {
    float: left;
}

 #shop-nav li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

  #shop-nav li a:hover {
    background-color: #2226E0;
}
#border
{
	border:1px solid #A4A3A3;		
}
</style>
</head>

<body style="padding-top: 70px;padding-bottom:50px">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#topFixedNavbar1" ><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="#">Shop Cart</a></div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div style="padding-right:40px" class="collapse navbar-collapse" id="topFixedNavbar1">
     
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Sign Up</a></li>
         <li><a href="#">Login</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container-fluid -->
</nav>

<nav style="border:none" role="navigation" class="navbar navbar-default">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
     
        <button type="button" data-target="#shop-nav" data-toggle="collapse" class="navbar-toggle">
            <span class="sr-only">Open Menu</span>
              MENU <span class="glyphicon glyphicon-chevron-down"></span>
          
        </button>
     
    </div>
<div  class="container collapse navbar-collapse" style="width:90%;" id="shop-nav" >
<ul >
  <li><a href="#">ELECTRONICS</a></li>
  <li><a href="#">APPLIANCES</a></li>
  <li><a href="#">SPORTS</a></li>
  <li><a href="#">CLOTHINGS</a></li>
  <li><a href="#">HOME & FURNITURES</a></li>
  <li><a href="#">VIDEO GAMES</a></li>
    <li><a href="#">BOOKS</a></li>
      <li><a href="#">TODAYS DEAL</a></li>
</ul>
</div>
</nav>
<div class="container" style="width:90%;padding-top:20px">
<div style="width: 73%; float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
<h4 style="padding-left:3%;padding-top:2%">MY CART</h4>
<hr/>
<div class="col-md-12">
<div class="col-md-3"><img width="180" src="${pageContext.request.contextPath}/resources/images/3.jpeg" alt=""></div>
<div class="col-md-3">
<h5>Tiptopp </h5>
<p>Multicolor</p>
<p>Seller: Retailnet</p>
<p><b>Rs.500</b>&nbsp;&nbsp;<strike>Rs.600</strike>, 20% OFF </p>
<p class="btn btn-danger">REMOVE</p><br><br>
</div>
<div align="right" class="col-md-6">
<p>FREE DELIVERY IN 3-5 DAYS</p>
</div>

</div>


<div class="col-md-12">
<hr/>
<div class="col-md-2"></div>
<div align="right" class="col-md-5">

<p class="btn btn-default">CONTINUE SHOPPING</p>
</div>
<div align="left" class="col-md-5">
<p class="btn btn-warning">PLACE ORDER</p>
</div><br><br><br>
</div>

</div>
<div style="width: 23%; float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
<h4 style="padding-left:3%;padding-top:2%">PRICE DETAILS</h4>
<hr/>
<h5 style="padding-left:3%;">PRICE (1 ITEM) : Rs.500</h5>
<h5 style="padding-left:3%;">DELIVERYCHARGES : FREE</h5>
<hr/>
<h5 style="padding-left:3%;">AMOUNT PAYABLE : Rs.500</h5>

<hr/>
<p style="padding-left:3%;color:#38CB60">Your total savings Rs.100</p>
</div></div>
</body>
</html>
