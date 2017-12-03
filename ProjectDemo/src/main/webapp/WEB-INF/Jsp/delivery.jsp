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
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/test.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script>
$(document).ready(function(){
    $(".button1").click(function(){
        $("#div1").toggle();
    });
});
</script>
<script>
$(document).ready(function(){
    $(".button2").click(function(){
        $("#div2").toggle();
    });
});
</script>
<script>
$(document).ready(function(){
    $(".button3").click(function(){
        $("#div3").toggle();
    });
});
</script>
<script>
$(document).ready(function(){
    $(".button4").click(function(){
        $("#div4").toggle();
    });
});
</script>

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
<div class="col-md-9" style="float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
<h4 class="button1" style="padding-left:3%;padding-top:1%;padding-bottom:1%;background-color:#70A3FF">1) LOGIN OR SIGN UP</h4>
<hr/>
<div id="div1" class="col-md-12">
<div class="col-md-6">
<input type="text" name="login" class="form-control" placeholder="Email or Mobile" /><br>
<div class="col-md-4"></div><div class="btn-block"><a href="#" class="btn btn-warning btn-block">Continue</a></div><div class="col-md-3"><br></div></div>


<div align="center" class="col-md-6">
<p><i class="fa fa-lock"></i> Use Secure Login </p>
<p><i class="fa fa-truck"></i> Easily Track Orders</p>
<p><i class="fa fa-bell"></i> Get Relevant Alerts</p>
<p><i class="fa fa-star"></i> Wishlists & Reviews</p>

</div></div>

</div>


<div class="col-md-3">



</div>

<div class="col-md-9" style="float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
<h4 class="button2" style="padding-left:3%;padding-top:1%;padding-bottom:1%;background-color:#70A3FF">2) DELIVERY ADDRESS</h4>
<hr/>
<div id="div2" class="col-md-12">
<div align="center" style="border-right:1px solid #DDDDDD" class="col-md-6">
<h5>Saved Address</h5>
<p>
house name <br>
place<br>
district<br>
</p><br>
<div class="col-md-4"></div><div class="col-md-4"><a href="#" class="btn btn-warning">Deliver Here</a></div><div class="col-md-4"></div><br><br><br></div>


<div align="center"  class="col-md-6">
<div class="btn-block"><a href="#" class="btn btn-success btn-block">Add New Address</a></div>

</div></div>

</div>


<div class="col-md-3">



</div>

<div class="col-md-9" style="float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
<h4 class="button3" style="padding-left:3%;padding-top:1%;padding-bottom:1%;background-color:#70A3FF">3) ORDER SUMMARY</h4>
<hr/>
<div id="div3" class="col-md-12">
<div class="col-md-3"><img width="180" src="${pageContext.request.contextPath}/resources/images/3.jpeg" alt=""></div>
<div class="col-md-3">
<h5><b>Item : Tiptopp </b></h5>
<p><b>Color : Multicolor</b></p>
<p><b>Seller: Retailnet</b></p>
<p><b>Price : Rs.500</b></p>
<br><br>
</div>
<div align="right" class="col-md-6">
<p>FREE DELIVERY IN 3-5 DAYS</p>
<p><b>TOTAL: Rs.500</b></p>
</div>

</div>

</div>


<div class="col-md-3">



</div>


<div class="col-md-9" style="float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
<h4 class="button4" style="padding-left:3%;padding-top:1%;padding-bottom:1%;background-color:#70A3FF;">4) PAYMENT OPTIONS</h4>
<hr/>
<div id="div4" class="col-md-12">
<div class="col-md-3"></div>
<div class="col-md-3">
<h5><input type="radio" name="pay" >CASH ON DELIVERY </h5>
<h5><input type="radio" name="pay" >ONLINE PAYMENT </h5>
<br><br>
</div>
<div align="right" class="col-md-6">
<h5 class="btn btn-success" >PLACE ORDER</h5>
</div>

</div>

</div>


<div class="col-md-3">



</div>

</div>


</body>
</html>
