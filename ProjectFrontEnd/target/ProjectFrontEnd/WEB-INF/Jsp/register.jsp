<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>

<body class="container" ng-app="app">

<div class="col-md-3"></div>
<div style="margin-top:10%;border:1px solid #ACACAC" class="col-md-6" ng-controller="controllerName">
 
 <form method="post" action="registerUser" name="myForm">
 <h3 align="center">New User ?? Register Here</h3><br>
 <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="name" type="text" required class="form-control" name="name" placeholder="Name">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
      <input id="mobile" type="number" maxlength="10" required class="form-control" ng-model="mobile" name="mobile" ng-pattern="mob" placeholder="Mobile Number">
  <span ng-show="myForm.mobile.$error.pattern"  style="color:red">Please enter 10 digit mobile number.</span> 
  
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="email" type="text" required  class="form-control" ng-model="mail" name="email" ng-pattern="re" placeholder="Email">
    <span ng-show="myForm.email.$error.pattern" style="color:red">Please enter correct email address.</span>
   
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" required class="form-control"   name="password" placeholder="Password">
  
    </div>
    
     
    <br>
    <div align="center" >
     <input type="submit" value="Submit"  class="btn btn-success" name="submit">
     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </div><br>
    <c:if test="${not empty msg}">
									<div align="center" class="msg" style="color: red;">${msg}</div>
								</c:if>
  </form>
</div>
 <script>
    var app = angular.module("app", []);
    app.controller('controllerName', ['$scope', function ($scope) {
       
        $scope.re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
 
    $scope.mob = /^[0-9]{10}$/;
    
    
    }]);
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <script src="js/bootstrap.js" type="text/javascript"></script> -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-3.3.4.js" type="text/javascript"></script>
</body>
</html>
