<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>


<div class="container" style="width:90%;padding-top:20px">
  			<c:if test="${not empty msg}">
<div class="msg" align="center"  style="color: red;">${msg}</div>	</c:if>	
<div class="col-md-12">

<div align="center" style="border:1px solid #AFAFAF" class="col-md-4">
<img width="300" height="350" style="padding-top: 5%" src="${pageContext.request.contextPath}/resources/products/${product.id}.jpg" alt="">
<br><br>

<a href="user/cart?id=${product.id}"><button class="btn btn-info">ADD TO CART</button></a>
<a href="user/cart1?id=${product.id}"><button class="btn btn-warning">BUY NOW</button></a>
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
 
</div></div>
<div class="container" style="margin-top:40px">
 <div  class="col-md-12">
     <h3 >Similar Products</h3><br>
     <c:if test="${!empty productlist}">
   <c:forEach items="${productlist}" begin="0" end="3" var="product"> 
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

</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>