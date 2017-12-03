<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
<nav style="border:none;background-color: #ADD8E6" role="navigation" class="navbar navbar-default">
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
