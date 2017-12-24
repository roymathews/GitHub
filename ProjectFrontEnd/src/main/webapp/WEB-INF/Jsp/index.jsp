<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
<body style="background-color: #fff">

<div class="container" style="width:90%;padding-top:20px">
<div class="col-md-6">
<div class="slider">
		<figure>
		
		<c:if test="${!empty productlist}">
   <c:forEach items="${productlist}" begin="0" end="8" var="product"> 
			<div  class="slide">
			 <a title="${product.name}" href="product-view?id=${product.id}&msg=">
	<img width="500" height="500" src="${pageContext.request.contextPath}/resources/products/${product.id}.jpg">
			
			
			</a>
			<h3 align="center" style="text-transform: capitalize;color:blue">${product.name}</h3>
			
			</div>
</c:forEach></c:if>
		
		</figure>
	</div>
 </div>
 <div class="col-md-6" style="height:367px;">
 <div style="background-color:#DCD5D5;border:1px solid #FBFBFB" class="col-md-12">

 </div>
<c:if test="${!empty listoffers}">
   <c:forEach items="${listoffers}" begin="0" end="3" var="offers"> 
     <div style="background-color:#DCD5D5;border:1px solid #FBFBFB" class="col-md-12"> 
   <h3>${offers.main} </h3>
 <p>${offers.desc}</p>
   </div>
    </c:forEach>
    </c:if> 



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
