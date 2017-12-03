<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
<nav style="border:none;background-color: #ADD8E6;" role="navigation" class="navbar navbar-default">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
     
        <button type="button" data-target="#shop-nav" data-toggle="collapse" class="navbar-toggle">
            <span class="sr-only">Open Menu</span>
              MENU <span class="glyphicon glyphicon-chevron-down"></span>
          
        </button>
     
    </div>
<div  class="container collapse navbar-collapse" style="width:90%;" id="shop-nav" >
<ul >
  <li><a href="#">IPHONE</a></li>
  <li><a href="#">SAMSUNG</a></li>
  <li><a href="#">SONY</a></li>
  <li><a href="#">MI</a></li>
  <li><a href="#">OPPO</a></li>
  <li><a href="#">VIVO</a></li>
    <li><a href="#">LENOVO</a></li>
      <li><a href="#">ASUS</a></li>
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
