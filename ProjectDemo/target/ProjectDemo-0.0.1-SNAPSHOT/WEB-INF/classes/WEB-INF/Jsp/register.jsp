<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>

<body class="container">

<div class="col-md-3"></div>
<div style="margin-top:10%;border:1px solid #ACACAC" class="col-md-6">
 <form method="post" action="registerUser">
 <h3 align="center">New User ?? Register Here</h3><br>
 <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="name" type="text" class="form-control" name="name" placeholder="Name">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
      <input id="mobile" type="text" class="form-control" name="mobile" placeholder="Mobile Number">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Email">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="Password">
    </div>
    <br>
    <div align="center" >
     <input type="submit" value="Submit" class="btn btn-success" name="submit">
    </div><br>
  </form>
</div>
<script src="{pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<!-- <script src="js/bootstrap.js" type="text/javascript"></script> -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-3.3.4.js" type="text/javascript"></script>
</body>
</html>
