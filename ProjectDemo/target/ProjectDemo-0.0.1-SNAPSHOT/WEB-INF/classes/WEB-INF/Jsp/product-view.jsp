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
<div class="col-md-12">
<div  class="col-md-1">
<div style="border:1px solid #AFAFAF"> 
<img width="65px" height="75px" src="${pageContext.request.contextPath}/resources/images/1.jpeg" alt="">
</div>
<div style="border:1px solid #AFAFAF"> 
<img width="65px" height="75px" src="${pageContext.request.contextPath}/resources/images/2.jpeg" alt="">
</div>
<div style="border:1px solid #AFAFAF"> 
<img width="65px" height="75px" src="${pageContext.request.contextPath}/resources/images/4.jpeg" alt="">
</div>
</div>
<div align="center" style="border:1px solid #AFAFAF" class="col-md-4">
<img width="300" height="350" src="${pageContext.request.contextPath}/resources/images/3.jpeg" alt="">

<button class="btn btn-info">ADD TO CART</button>
<button class="btn btn-warning">BUY NOW</button>
<br><br>
</div>
<div class="col-md-1"></div>
<div class="col-md-7">
<h3>Tiptopp </h3>

<p style="background-color:#92DF9F;width:30px">4.2*</p>

<h2>Rs.500 </h2><strike>Rs.600</strike>, 20% OFF <br><br>
<li style="list-style-type:none"><i class="fa fa-tags">&nbsp;</i><b>No Cost EMI </b> No Cost EMI on Bajaj Finserv EMI Card on cart value above Rs.4499</li><br>
<li style="list-style-type:none"><i class="fa fa-tags">&nbsp;</i><b>No Cost EMI</b> No Extra Cost EMI on HDFC Bank Credit Card</li>
<br>
<h4 style="color:#929191">Highlights</h4>
<li>Color: Brown</li>
<li>Wear: Casual</li>
<li>Material:PVC</li>
<li>Leather/Non-Leather: Non-leather</li>
<h4 style="color:#929191">Seller</h4> 
<p>Retailnet</p>
<h4 style="color:#929191">Description</h4>
<p>Toss a pair of this brown non-leather flat sandals and enjoy unparalleled ease and style it offers you through this season. Made purely of supreme-quality PVC, these sandals come with a fashionable buckle closure for just a hint of style. These sandals are also open at the front and the sides for improved ventilation at all times and feature a plush cushioned footbed for premium comfort.
Team these classy Tiptopp Meena-05 Flats Sandals (By Liberty) with your regular casual attire and you’re good to go. For the confident city belle who likes things all voguish, Tiptopp has delightful options in its collection of footwear, designed skillfully keeping in mind every micro detail and the comfort factor.
Footwear Care
On a regular basis, clean these sandals by gently wiping the surface and the corners with a soft, damp cloth.</p>
</div>
</div></div>
</body>
</html>