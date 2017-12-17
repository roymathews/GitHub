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
  <c:if test="${pageContext.request.userPrincipal.name !='roymathewsp@gmail.com'}">
<div  class="container collapse navbar-collapse" style="width:90%;" id="shop-nav" >
<ul >
<c:if test="${!empty listcat}">
   <c:forEach items="${listcat}" var="category"> 
  <li style="text-transform: uppercase;"><a href="../productbycat?id=${category.id}&sort=0">${category.name} </a></li>
  
      </c:forEach></c:if>
</ul>
</div></c:if>
</nav>
<div class="container" style="width:90%;">
<div style="width: 73%; float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
<c:if test="${not empty msg}">
									<div align="center" class="msg" style="color: red;">${msg}</div>
								</c:if>
<h4 style="padding-left:3%;">MY CART</h4>

<hr/>

<c:choose>
  <c:when test="${!empty cartlist}">
    <c:set var = "total" scope = "session" value = "0"/>
     <c:set var = "loop" scope = "session" value = "0"/>
   <c:forEach items="${cartlist}" var="cart"> 
   <c:set var = "loop" scope = "session" value = "${loop+1}"/>
<div style="margin-top: 1%;" class="col-md-12">

<div class="col-md-2"><img width="180" src="${pageContext.request.contextPath}/resources/products/${cart.product.id}.jpg" alt=""></div>
<div class="col-md-1"></div>
<div class="col-md-5">
<h5>${cart.product.name}</h5>

<p>Seller: ${cart.product.supplier.name}</p>
<p><b>Rs. ${cart.product.rate}</b>,&nbsp;&nbsp;<strike>${cart.product.rate+100}</strike>,Rs. 100 OFF </p>
<a href="remove-cart?id=${cart.id}" class="btn btn-danger">REMOVE</a><br><br>
</div>
<div align="right" class="col-md-4">
<p>FREE DELIVERY IN 3-5 DAYS</p>
<form method="post" action="cartupdate">

<div class="col-md-12">
<div class="col-md-4">
<b>Quantity:</b>
</div>
<div class="col-md-5">
<input type="hidden" name="productid" value="${cart.product.id}" />
<input type="number" style="width:60px;padding-left: 8px" min="1"  name="quantity" value="${cart.quantity}">
</div>
<div class="col-md-3">
<button type="submit"><i  class="fa fa-refresh"></i></button>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</div>
</div>
</form>
<p><br><br><b>Total:${cart.product.rate*cart.quantity}</b></p>
</div>
 <c:set var = "total" scope = "session" value = "${(cart.product.rate*cart.quantity)+total}"/>

</div>
</c:forEach>
</c:when>
<c:otherwise>
<p style="padding-left:10px;color: orange">Your Cart is Empty</p>
</c:otherwise></c:choose>
<c:if test="${!empty cartlist}">
<div class="col-md-12">
<hr/>
<div class="col-md-2"></div>
<div align="right" class="col-md-5">

<a href="../"  class="btn btn-default">CONTINUE SHOPPING</a>
</div>
<div align="left" class="col-md-5">
<a href="check-out" class="btn btn-warning">PLACE ORDER</a>
</div><br><br><br>
</div>
</c:if>
</div>
<c:if test="${!empty cartlist}">
<div style="width: 23%; float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
<h4 style="padding-left:3%;padding-top:2%">TOTAL PRICE DETAILS</h4>
<hr/>

<h5 style="padding-left:3%;">DELIVERY CHARGES : FREE</h5>
<hr/>
<h5 style="padding-left:3%;">GRAND TOTAL : <c:out value = "${total}"/></h5>

<hr/>
<p style="padding-left:3%;color:#38CB60">Your total savings Rs.<c:out value = "${loop*100}"/></p>
</div>
</c:if>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
