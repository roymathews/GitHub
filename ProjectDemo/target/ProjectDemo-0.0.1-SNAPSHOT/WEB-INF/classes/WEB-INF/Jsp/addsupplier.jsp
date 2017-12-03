<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
<body class="container">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#topFixedNavbar1" ><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="index">Shop Cart</a></div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div style="padding-right:40px" class="collapse navbar-collapse" id="topFixedNavbar1">
     
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="register">Sign Up</a></li>
         <li><a href="login">Login</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container-fluid -->
</nav>

<div class="col-md-3"></div>
<div style="margin-top:10%;" class="col-md-6">

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

<script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<!-- <script src="js/bootstrap.js" type="text/javascript"></script> -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-3.3.4.js" type="text/javascript"></script>
</body>
</html>
