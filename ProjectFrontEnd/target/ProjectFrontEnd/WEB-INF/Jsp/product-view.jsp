<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
  <li style="text-transform: uppercase;"><a href="productbycat?id=${category.id}&sort=0">${category.name} </a></li>
  
      </c:forEach></c:if>
</ul>
</div></c:if>
</nav>

<div class="container" style="width:90%;padding-top:20px">
  				
<div class="col-md-12">

<div align="center" style="border:1px solid #AFAFAF" class="col-md-4">
<img width="300" height="350" style="padding-top: 5%" src="${pageContext.request.contextPath}/resources/products/${product.id}.jpg" alt="">
<br><br>

<a href="user/cart?id=${product.id}"><button class="btn btn-info">ADD TO CART</button></a>
<button class="btn btn-warning">BUY NOW</button>
<br><br>
</div>
<div class="col-md-1"></div>
<div class="col-md-7">
<h3 style="text-transform: capitalize;">${product.name}</h3>


<h2>Rs: ${product.rate}</h2><strike>Rs:${product.rate+100}</strike>,<br>
<p style="color:green">${ product.stock} Stocks Left </p>
<h3>Company</h3>
<h4><b>Name: </b>${product.category.name}</h4> 
<h3>Supplier Details</h3>
<h4><b>Name: </b>${product.supplier.name}</h4>

<h4><b>Address:</b> ${product.supplier.address}</h4>
 <c:if test="${not empty msg}">
									<div class="msg" align="center" style="color: red;">${msg}</div>	</c:if>
</div>
</div></div>

</body>
</html>