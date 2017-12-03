<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<body>

<div style="width: 60%" class="container">

 <h3 align="center">Edit Product Details</h3>
<hr/>
<c:if test="${not empty msg}">
									<div class="msg" style="color: red;">${msg}</div>
								</c:if>
  <form action="product_update"  method="post">
    <div class="form-group">
      <label for="p_id">Product  ID :</label>
      <input type="number" readonly class="form-control" id="p_id" placeholder="Product ID" name="id" value="${product.id}">
    </div>
    <div class="form-group">
      <label for="p_name">Product Name :</label>
      <input type="text" class="form-control" id="p_name" placeholder="Product Name " name="name" value="${product.name}">
    </div>
    <div class="form-group">
      <label for="p_desc">Product rate:</label>
      <input type="text" class="form-control" id="p_desc" placeholder="Product Rate" name="rate" value="${product.rate}" >
    </div>
    <div class="form-group">
      <label for="p_price">Product Stock :</label>
      <input type="number" class="form-control" id="p_price" placeholder="Product Stock " name="stock" value="${product.stock}" >
    </div>
  
   <c:if test="${!empty listcat}">
    
     <label>Category</label>
    <div class="input-group">
   
      <span class="input-group-addon"><i class="glyphicon glyphicon-link"></i></span>
      <select name="cat" required   class="form-control">
 
  <option value="${product.category.id}" selected>${product.category.name}</option>
  
      <c:forEach items="${listcat}" var="category" >
    
      <option value="${category.id}">${category.name}</option>
     
      </c:forEach>
      </select>
   
   
    </div>
    </c:if>
    
     <c:if test="${!empty listsup}">
   
    <label>Supplier</label>
    <div class="input-group">
   
      <span class="input-group-addon"><i class="glyphicon glyphicon-shopping-cart"></i></span>
      <select name="sup" required class="form-control">
 <option value="${product.supplier.ID}" selected>${product.supplier.name}</option>
      <c:forEach items="${listsup}" var="supplier">
     
      <option value="${supplier.ID}">${supplier.name}</option>
     
      </c:forEach>
      </select>
   
   
    </div>
    </c:if><br>
  
  
 <div align="center" class="form-group">

    <button  type="submit" class="btn btn-primary" >UPDATE</button>
</div>
  </form>

</div>

</body>
</html>

