<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shopping Site</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-3.3.4.css" rel="stylesheet" >

<link href="${pageContext.request.contextPath}/resources/css/test.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
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

#shop-nav1 ul {
    list-style-type: none;
	display:block;
    margin: 0;
    padding: 0;
    overflow: hidden;
   
}

#shop-nav1 li {
    float: left;
}

 #shop-nav1 li a {
    display: block;
    color: BLACK;
	font-size:11px;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}
 .aa {
    display: block;
    color: BLACK;
	font-size:12px;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

  #shop-nav1 li a:hover {
    background-color: #EBEBEB;
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
<div class="container" style="width:90%;padding-top:20px;background-color:#FFFFFF">

<div style="width: 23%; float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
<h5 style="padding-left:10px" >FILTERS</h5>
<hr/>
<h6 style="padding-left:10px">BRAND</h6>

<li style="list-style-type:none;padding-left:10px;color:#ABA8A7;"><input type="checkbox">Samsung</li>
<li style="list-style-type:none;padding-left:10px;color:#ABA8A7;"><input type="checkbox">Lenovo</li>
<li style="list-style-type:none;padding-left:10px;color:#ABA8A7;"><input type="checkbox">Sony</li>
<li style="list-style-type:none;padding-left:10px;color:#ABA8A7;"><input type="checkbox">Sand disk</li>
<hr/>
<h6 style="padding-left:10px">PRICE</h6>
<li style="list-style-type:none;padding-left:10px;color:#ABA8A7;"><input name="price" type="radio">Above 2000</li>
<li style="list-style-type:none;padding-left:10px;color:#ABA8A7;"><input name="price" type="radio">1000-2000</li>
<li style="list-style-type:none;padding-left:10px;color:#ABA8A7;"><input name="price" type="radio">500-1000</li>
<li style="list-style-type:none;padding-left:10px;color:#ABA8A7;"><input name="price" type="radio">Below 500</li>
<hr/>
</div>
  <div style="width: 73%; float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
  <h6 style="padding-left:10px">Showing Results</h6>
  
  <div style="float:right" class="container collapse navbar-collapse"  id="shop-nav1" >
<ul >
  <li class="aa">SORT BY</li>
  <li><a href="#">RELEVANCE</a></li>
  <li><a href="#">POPULARITY</a></li>
  <li><a href="#">PRICES LOW TO HIGH</a></li>
  <li><a href="#">PRICES HIGH TO LOW</a></li>
  <li><a href="#">NEWEST FIRST</a></li>
    
</ul><br></div>
<div  class="col-md-12">
 <div align="center"  id="border" class="col-md-3"> 
  
    <br>
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/iphone-iphone4-colors.jpg" alt="" />
       <p>Iphone 6S</p>
      <strong>RS. 34000</strong>
      <p>Screen size:4.7inch</p>
      <p>Ram:4gb</p>
   </div>
    <div align="center" id="border" class="col-md-3"> 
  
    <br>
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/mobile.jpg" alt="" />
       <p>Iphone 6S</p>
      <strong>RS. 34000</strong>
      <p>Screen size:4.7inch</p>
      <p>Ram:4gb</p>
   </div>
    <div align="center" id="border" class="col-md-3"> 
  
    <br>
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/iphone-iphone4-colors.jpg" alt="" />
       <p>Iphone 6S</p>
      <strong>RS. 34000</strong>
      <p>Screen size:4.7inch</p>
      <p>Ram:4gb</p>
   </div>
    <div align="center" id="border" class="col-md-3"> 
  
    <br>
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/mobile.jpg" alt="" />
       <p>Iphone 6S</p>
      <strong>RS. 34000</strong>
      <p>Screen size:4.7inch</p>
      <p>Ram:4gb</p>
   </div>
   </div>
    
   <div  class="col-md-12">
 <div align="center"  id="border" class="col-md-3"> 
  
    <br>
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/iphone-iphone4-colors.jpg" alt="" />
       <p>Iphone 6S</p>
      <strong>RS. 34000</strong>
      <p>Screen size:4.7inch</p>
      <p>Ram:4gb</p>
   </div>
    <div align="center" id="border" class="col-md-3"> 
  
    <br>
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/display-phone.png" alt="" />
       <p>Iphone 6S</p>
      <strong>RS. 34000</strong>
      <p>Screen size:4.7inch</p>
      <p>Ram:4gb</p>
   </div>
    <div align="center" id="border" class="col-md-3"> 
  
    <br>
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/mobile.jpg" alt="" />
       <p>Iphone 6S</p>
      <strong>RS. 34000</strong>
      <p>Screen size:4.7inch</p>
      <p>Ram:4gb</p>
   </div>
    <div align="center" id="border" class="col-md-3"> 
  
    <br>
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/iphone-iphone4-colors.jpg" alt="" />
       <p>Iphone 6S</p>
      <strong>RS. 34000</strong>
      <p>Screen size:4.7inch</p>
      <p>Ram:4gb</p>
   
   </div>


</div>
   
  </div>
  




 </div>
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<!-- <script src="js/bootstrap.js" type="text/javascript"></script> -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-3.3.4.js" type="text/javascript"></script>
</body>
</html>