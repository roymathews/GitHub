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

<div align="center" style="border:1px solid #AFAFAF" class="col-md-4">
<img width="300" height="350" style="padding-top: 5%" src="${pageContext.request.contextPath}/resources/products/${product.id}.jpg" alt="">
<br><br>
<button class="btn btn-info">ADD TO CART</button>
<button class="btn btn-warning">BUY NOW</button>
<br><br>
</div>
<div class="col-md-1"></div>
<div class="col-md-7">
<h3 style="text-transform: capitalize;">${product.name}</h3>


<h2>Rs: ${product.rate}</h2><strike>Rs:${product.rate+100}</strike>,<br>

<h3>Company</h3>
<h4><b>Name: </b>${product.category.name}</h4> 
<h3>Supplier Details</h3>
<h4><b>Name: </b>${product.supplier.name}</h4>

<h4><b>Address:</b> ${product.supplier.address}</h4>
</div>
</div></div>

</body>
</html>