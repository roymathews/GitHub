<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css/test.css" rel="stylesheet">
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<title>Mobile Cart</title>
<link rel="shortcut icon"  href="${pageContext.request.contextPath}/resources/images/logo.jpg">
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
     
       <ul class="nav navbar-nav navbar-right">
        <a   class="navbar-brand" href="./" ><span><img height="30" width="30" src="${pageContext.request.contextPath}/resources/images/logo.jpg" alt="logo"> <b>Mobile Cart</b></span></a>
        <sec:authorize access="!hasRole('ADMIN')">
    
        <li style="list-style-type: none;margin-top: 5%;"> 
        <select name="cat" required  class="form-control" onchange="location = this.value;">
      <option selected="">Select Category</option>
      <c:forEach items="${listcat}" var="category" >
     
   <option value="productbycat?id=${category.id}&sort=0">${category.name}</option>
     
      </c:forEach>
      </select></li>
      </sec:authorize>
      <sec:authorize access="hasRole('ADMIN')">
      <li>
      <a href="admin?msg=">ADMIN</a>
      </li>
      </sec:authorize>
      </ul>
      </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    
    <div style="padding-right:40px" class="collapse navbar-collapse" id="topFixedNavbar1">
   
      
      <ul class="nav navbar-nav navbar-right">
       
      <c:choose>
       <c:when test="${pageContext.request.userPrincipal.name != null}">
     
        <sec:authorize access="!hasRole('ADMIN')">
      <li>
      <a href="view-cart?msg=" title="View Cart"><i class="fa fa-shopping-cart fa-2x">
      <c:when test="${!empty count}"><span class="badge">
      ${count}
      </span>
      
      </c:when>
      </i></a>
      </li>
    </sec:authorize>
	   <li ><a>Welcome : ${pageContext.request.userPrincipal.name}</a></li>
          <li> <a href="<c:url value="/logout" />" > Logout</a></li>
	</c:when>
	<c:otherwise>
        <li><a href="register">Sign Up</a></li>
         <li><a href="login?error=">Login</a></li></c:otherwise>
         </c:choose>
      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container-fluid -->
</nav>

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
   <sec:authorize access="!hasRole('ADMIN')">
<div  class="container collapse navbar-collapse" style="width:90%;" id="shop-nav" >
<ul >
<c:if test="${!empty listcat}">
   <c:forEach items="${listcat}" var="category"> 
  <li style="text-transform: uppercase;"><a href="productbycat?id=${category.id}&sort=0">${category.name} </a></li>
  
      </c:forEach></c:if>
</ul>
</div></sec:authorize>
</ul>
</div>
</nav>
</body>