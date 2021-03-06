<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
<body ng-app="app">
 <div  class="container-fluid">

  <div role="tabpanel">
  <ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="#home1" data-toggle="tab" role="tab">CATEGORY</a></li>
    <li><a href="#paneTwo1" data-toggle="tab" role="tab">PRODUCTS</a></li>
    <li><a href="#paneTwo2" data-toggle="tab" role="tab">SUPPLIER</a></li>
     <li><a href="#paneTwo3" data-toggle="tab" role="tab">OFFERS</a></li>
    
   
  </ul>  
   <c:if test="${not empty msg}">
									<div class="msg" align="center" style="color: red;">${msg}</div>
								</c:if>
    <div id="tabContent1" class="tab-content" ng-controller="controllerName">
    <div class="tab-pane fade in active" id="home1">
             
        
 <div class="row">
        <!-- left column -->
       
      <div class="col-md-3"></div>
<div style="margin-top:5%;" class="col-md-6">

 <form method="post" action="admin/categorysubmit">
 <h3>Add Category</h3>

 <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="name" type="text" required class="form-control" name="name" placeholder="Name">
    </div>
   
    <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i></span>
      <input id="desc" type="text" required class="form-control" name="desc" placeholder="Description">
    </div>
    <br>
    
    <div align="center" >
     <input type="submit" value="Submit" class="btn btn-success" name="submit">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </div><br>
  </form>
  
</div>
<div style="margin-top:5%;" class="col-md-3">

<a href="admin/listcat"> <button   class="btn btn-primary">List all Category</button></a>
</div>
          
        
            </div>
          
       </div>
       
       
  
  
  
    <div class="tab-pane fade" id="paneTwo1">
    
 <div class="row">
        <!-- left column -->
       
     <div class="col-md-3"></div>
<div style="margin-top:3%;" class="col-md-6">

 <form method="post" action="admin/productsubmit?_csrf=${_csrf.token}" name="proform" enctype="multipart/form-data">
 <h3>Add Product</h3>
 <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="name" type="text" required class="form-control" name="name" placeholder="Name">
    </div>
     <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>
      <input id="rate" type="text" required class="form-control" ng-model="rate" name="rate" ng-pattern="rate2" placeholder="Price">
   <span ng-show="proform.rate.$error.pattern"  style="color:red">Please enter correct Amount</span> 
   
    </div>
    
    <c:if test="${!empty listcat}">
    <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-link"></i></span>
      <select name="cat" required  class="form-control">
      <option selected="">Select Category</option>
      <c:forEach items="${listcat}" var="category" >
     
      <option value="${category.id}">${category.name}</option>
     
      </c:forEach>
      </select>
   
   
    </div>
    </c:if>
    
     <c:if test="${!empty listsup}">
    <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-shopping-cart"></i></span>
      <select name="sup" required  class="form-control">
      <option selected="">Select Supplier</option>
      <c:forEach items="${listsup}" var="supplier">
     
      <option value="${supplier.ID}">${supplier.name}</option>
     
      </c:forEach>
      </select>
   
   
    </div>
    </c:if><br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-equalizer"></i></span>
      <input id="stock" type="text" required class="form-control" ng-model="stock" name="stock" ng-pattern="stock2" placeholder="Stock">
      <span ng-show="proform.stock.$error.pattern"  style="color:red">Numbers only</span> 
    </div>
    
     <br>
    <div class="input-group">
 
   <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
    <input type="file" required class="form-control"  name="img">
    
    </div>
    
   
    <br>
    <div align="center" >
      
     <input type="submit" value="Submit" class="btn btn-success" name="submit">
   
    </div><br>
  </form>
  
</div>
<div style="margin-top:10%;" class="col-md-3">

<a href="admin/prodetails"> <button   class="btn btn-primary">List all Product</button></a>
</div>
     
        
            </div>
       </div>
       
  
      <div class="tab-pane fade" id="paneTwo2">
    
 <div class="row">
        <!-- left column -->
       
      <div class="col-md-3"></div>
<div style="margin-top:5%;" class="col-md-6">

 <form method="post" action="admin/suppliersubmit">
 <h3>Add Supplier</h3>
 <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="name" type="text" required class="form-control" name="name" placeholder="Supplier Name">
    </div>
   
    <br>
     <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <textarea id="address"  required class="form-control" name="address" placeholder="Supplier Address"></textarea>
    </div>
    <br/>
     <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
      <input id="phone" type="number" required class="form-control" name="phone" placeholder="Supplier Contact number">
    </div>
    <br>
    <div align="center" >
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
     <input type="submit" value="Submit" class="btn btn-success" name="submit">

    </div><br>
  </form>
  
</div>
<div style="margin-top:10%;" class="col-md-3">

<a href="admin/listsup"> <button   class="btn btn-primary">List all Supplier</button></a>
</div>
     
          
        
            </div></div>
       
         <div class="tab-pane fade in" id="paneTwo3">
             
        
 <div class="row">
        <!-- left column -->
       
      <div class="col-md-3"></div>
<div style="margin-top:5%;" class="col-md-6">

 <form method="post" action="admin/offersubmit">
 <h3>Add Offers</h3>

 <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="main" type="text" required class="form-control" name="main" placeholder="Heading">
    </div>
   
    <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i></span>
      <input id="desc2" type="text" required class="form-control" name="desc" placeholder="Description">
    </div>
    <br>
    
    <div align="center" >
     <input type="submit" value="Submit" class="btn btn-success" name="submit">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </div><br>
  </form>
  
</div>
<div style="margin-top:5%;" class="col-md-3">

<a href="admin/listoffers"> <button   class="btn btn-primary">List all Offers</button></a>
</div>
          
        
            </div>
          
       </div>
       
       
       
      </div>
       </div></div>
       <script>
    var app = angular.module("app", []);
    app.controller('controllerName', ['$scope', function ($scope) {
       
      
 
    $scope.rate2 = /^-?[0-9]\d*(\.\d*)?$/;
    $scope.stock2 = /^[0-9]*$/;
    
    }]);
</script>
       <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<!-- <script src="js/bootstrap.js" type="text/javascript"></script> -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-3.3.4.js" type="text/javascript"></script>
</body>
</html>