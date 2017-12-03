<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<link href="${pageContext.request.contextPath}/resources/css/bootstrap-3.3.4.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/test.css" rel="stylesheet">
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<style type="text/css">
body
{

background-color: #ADD8E6;

}
#shop-nav ul {
    list-style-type: none;
	display:block;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #3B7C9F;
}

#shop-nav li {
    float: left;
}

 #shop-nav li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

  #shop-nav li a:hover {
    background-color: #2226E0;
}

#shop-nav1 ul {
    list-style-type: none;
	display:block;
    margin: 0;
    padding: 0;
    overflow: hidden;
   
}

#shop-nav1 li {
    float: left;
}

 #shop-nav1 li a {
    display: block;
    color: BLACK;
	font-size:11px;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}
 .aa {
    display: block;
    color: BLACK;
	font-size:12px;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

  #shop-nav1 li a:hover {
    background-color: #EBEBEB;
}

#border
{
	border:1px solid #A4A3A3;		
}
</style>
</head>

<body>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#topFixedNavbar1" ><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="./">Mobile Cart</a>
       <ul class="nav navbar-nav navbar-right">
        <li style="list-style-type: none;margin-top: 5%"> 
        <select name="cat" required  class="form-control">
      <option selected="">Select Category</option>
      <c:forEach items="${listcat}" var="category" >
     
      <option value="${category.name}">${category.name}</option>
     
      </c:forEach>
      </select></li>
      </ul>
      </div>
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
</body>