<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
<body style="background-color: #fff">
<nav style="border:none" role="navigation" class="navbar navbar-default">
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
<div class="col-md-6">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      
        <img src="${pageContext.request.contextPath}/resources/images/display-phone.png" alt="Los Angeles" style="width:100%;"/>
        <div class="carousel-caption">
        <h3 style="color:#FF0004">Redmi A1 Sale Today!!!</h3>
      </div>
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/shopping.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
        <h3 style="color:#FF0004">50% Discount On Iphone</h3>
      </div>
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/game.jpg" alt="New york" style="width:100%;">
        <div class="carousel-caption">
        <h3 style="color:#FF0004">Galaxy s6!</h3>
      </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
 </div>
 <div class="col-md-6" style="height:367px;">
 <div style="background-color:#DCD5D5;border:1px solid #FBFBFB" class="col-md-12">
 <h3>Exchange Your Old Phones!! </h3>
 <p>Get a new Redmi Note 4 Phone </p>
 </div>
 <div style="background-color:#DCD5D5;border:1px solid #FBFBFB;padding-top:10px" class="col-md-12">
 <h3>Bank Offer</h3>
 <p>Extra 5% off* with Axis Bank Buzz Credit CardT&C</p>
 </div>
 <div style="background-color:#DCD5D5;border:1px solid #FBFBFB;padding-top:10px" class="col-md-12">
 <h3>Paytm</h3>
 <p>Extra 10% off on Paytm wallets</p>
 </div>
 <div style="background-color:#DCD5D5;border:1px solid #FBFBFB;padding-top:10px" class="col-md-12">
 <h3>Festival Offer</h3>
 <p>Buy Products more than Rs 50,000 and get Rs 1000 off</p>
 </div>

 </div>
 </div>
 <div class="container" style="width:90%;padding-top:20px">
 <div  class="col-md-12">
     <h3 align="center">NEW DEALS</h3><br>
     <c:if test="${!empty productlist}">
   <c:forEach items="${productlist}" begin="0" end="7" var="product"> 
     <div align="center" id="border" class="col-md-3"> 
  
    <br>
    <a href="product-view?id=${product.id}&msg=">
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/products/${product.id}.jpg" alt="" />
     </a>  <p>${product.name}</p>
      <strong>Rs :${product.rate}</strong>
     
      <p>${product.category.name}</p>
   </div>
    </c:forEach>
    </c:if> 
     
  </div>


 </div>
<jsp:include page="footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap-3.3.4.js" type="text/javascript"></script>
</body>
</html>
