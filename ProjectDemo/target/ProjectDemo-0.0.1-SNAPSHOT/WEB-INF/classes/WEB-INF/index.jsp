<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="Jsp/header.jsp"></jsp:include>
<body>
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
  <li><a href="#">HOME and FURNITURES</a></li>
  <li><a href="#">VIDEO GAMES</a></li>
    <li><a href="#">BOOKS</a></li>
      <li><a href="#">TODAYS DEAL</a></li>
</ul>
</div>
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
        <h3 style="color:#FF0004">50% Discount On Clothing</h3>
      </div>
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/game.jpg" alt="New york" style="width:100%;">
        <div class="carousel-caption">
        <h3 style="color:#FF0004">FIFA 18 !! Grab Your Copies</h3>
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
 <h3>Offer 1 </h3>
 <p>some line about offer</p>
 </div>
 <div style="background-color:#DCD5D5;border:1px solid #FBFBFB;padding-top:10px" class="col-md-12">
 <h3>Offer 2 </h3>
 <p>some line about offer</p>
 </div>
 <div style="background-color:#DCD5D5;border:1px solid #FBFBFB;padding-top:10px" class="col-md-12">
 <h3>Offer 1 </h3>
 <p>some line about offer</p>
 </div>
 <div style="background-color:#DCD5D5;border:1px solid #FBFBFB;padding-top:10px" class="col-md-12">
 <h3>Offer 1 </h3>
 <p>some line about offer</p>
 </div>

 </div>
 </div>
 <div class="container" style="width:90%;padding-top:20px">
 <div  class="col-md-12">
     <h3 align="center">NEW DEALS</h3><br>
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
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/mobile.jpg" alt="" />
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
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/mobile.jpg" alt="" />
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
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/mobile.jpg" alt="" />
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
      <div align="center"id="border" class="col-md-3"> 
    <br>
   
    <img width="100px" height="100px" src="${pageContext.request.contextPath}/resources/images/mobile.jpg" alt="" />
       <p>Iphone 6S</p>
      <strong>RS. 34000</strong>
      <p>Screen size:4.7inch</p>
      <p>Ram:4gb</p>
   </div>
  
  </div>


 </div>
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap-3.3.4.js" type="text/javascript"></script>
</body>
</html>
