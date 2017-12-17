<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<c:if test="${!empty listcat}">
   <c:forEach items="${listcat}" var="category"> 
  <li style="text-transform: uppercase;"><a href="productbycat?id=${category.id}&sort=0">${category.name} </a></li>
  
      </c:forEach></c:if>
</ul>
</div>
</nav>
<div class="container" style="width:90%; ">

<div style="width: 23%; float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
<h5 style="padding-left:10px" >FILTERS</h5>
<hr/>

<hr/>
<h6 style="padding-left:15px">PRICE</h6>
 <c:if test="${not empty msg1}">
									
								
<li style="list-style-type:none;padding-left:15px;color:#ABA8A7;"><input  onclick="document.location='productbycat?id=${msg1}&sort=4'" class="users"  name="price" type="radio">Above 20000</li>
<li style="list-style-type:none;padding-left:15px;color:#ABA8A7;"><input onclick="document.location='productbycat?id=${msg1}&sort=3'" class="users" name="price" type="radio">10000-20000</li>
<li style="list-style-type:none;padding-left:15px;color:#ABA8A7;"><input onclick="document.location='productbycat?id=${msg1}&sort=2'" class="users" name="price" type="radio">5000-10000</li>
<li style="list-style-type:none;padding-left:15px;color:#ABA8A7;"><input onclick="document.location='productbycat?id=${msg1}&sort=1'" class="users" name="price"  type="radio">Below 5000</li>
</c:if>
<hr/>
</div>
  <div style="width: 73%; float:left; margin: 1%; background-color: #F8F8F8;border:0.1px solid #CBCBCB">
  <h6 style="padding-left:10px">Showing Results</h6>
  
 
<div id="javaquery" style="padding-bottom: 5%" class="col-md-12">
 
  
    <br>
     <c:choose>
   <c:when test="${!empty productlist}">
   <c:forEach items="${productlist}" var="product">  
   
   <div align="center"  id="border" class="col-md-3">  
   <a href="product-view?id=${product.id}&msg=">
    <img width="100px" style="padding-top: 3%" height="100px" src="${pageContext.request.contextPath}/resources/products/${product.id}.jpg" alt="" />
   </a>
       <p>${product.name}</p>
      <strong>${product.rate} </strong>
      <p>${product.category.name}</p>
   </div>   
 
      </c:forEach>
      
      </c:when>
  <c:otherwise>
      <li style="list-style-type: none"><h5 style="color:orange">No results found</h5></li>
      
      </c:otherwise>
   </c:choose>
   </div>
 
  <br>  
  </div>
 




 </div>
 
<jsp:include page="footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<!-- <script src="js/bootstrap.js" type="text/javascript"></script> -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-3.3.4.js" type="text/javascript"></script>
</body>
</html>