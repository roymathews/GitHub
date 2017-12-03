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
<div class="container" style="width:90%; ">

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