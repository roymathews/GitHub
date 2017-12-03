<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
<body>
 <div  class="container-fluid">

  <div role="tabpanel">
  <ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="#home1" data-toggle="tab" role="tab">CATEGORY</a></li>
    <li><a href="#paneTwo1" data-toggle="tab" role="tab">PRODUCTS</a></li>
    <li><a href="#paneTwo2" data-toggle="tab" role="tab">SUPPLIER</a></li>
    
   
  </ul>  
    <div id="tabContent1" class="tab-content">
    <div class="tab-pane fade in active" id="home1">
             
        
 <div class="row">
        <!-- left column -->
       
      <div class="col-md-3"></div>
<div style="margin-top:5%;" class="col-md-6">

 <form method="post" action="categorysubmit">
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
    
    </div><br>
  </form>
  
</div>
<div style="margin-top:5%;" class="col-md-3">

<a href="listcat"> <button   class="btn btn-primary">List all Category</button></a>
</div>
          
        
            </div>
          
       </div>
       
       
  
  
  
    <div class="tab-pane fade" id="paneTwo1">
    
 <div class="row">
        <!-- left column -->
       
     <div class="col-md-3"></div>
<div style="margin-top:5%;" class="col-md-6">

 <form method="post" action="productsubmit">
 <h3>Add Product</h3>
 <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="name" type="text" required class="form-control" name="name" placeholder="Name">
    </div>
     <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>
      <input id="rate" type="text" required class="form-control" name="rate" placeholder="Price">
    </div>
     <br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-equalizer"></i></span>
      <input id="stock" type="text" required class="form-control" name="stock" placeholder="Stock">
    </div>
    
   
    <br>
    <div align="center" >
     <input type="submit" value="Submit" class="btn btn-success" name="submit">
    
    </div><br>
  </form>
  
</div>
<div style="margin-top:10%;" class="col-md-3">

<a href="prodetails"> <button   class="btn btn-primary">List all Product</button></a>
</div>
     
        
            </div>
       </div>
       
  
      <div class="tab-pane fade" id="paneTwo2">
    
 <div class="row">
        <!-- left column -->
       
      <div class="col-md-3"></div>
<div style="margin-top:5%;" class="col-md-6">

 <form method="post" action="suppliersubmit">
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
     <input type="submit" value="Submit" class="btn btn-success" name="submit">
    
    </div><br>
  </form>
  
</div>
<div style="margin-top:10%;" class="col-md-3">

<a href="listsup"> <button   class="btn btn-primary">List all Supplier</button></a>
</div>
     
          
        
            </div></div>
       
      </div>
       </div></div>
       <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<!-- <script src="js/bootstrap.js" type="text/javascript"></script> -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-3.3.4.js" type="text/javascript"></script>
</body>
</html>