<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
<div class="col-md-3"  align="center"></div>
<div  style="border-style:solid;opacity:0.8;margin-top:5%;" align="center" class="col-md-6">
<h3 style="margin-top:5%;">Mobile Cart : LOGIN</h3><br>
<form action="loginsubmit" method="post" >

<div class="form-group">
<label >E-mail:</label>
<input name="name" class="form-control" type="text" id="email"  required/>
</div>
<div class="form-group">
<label >Password:</label>
<input name="password" class="form-control"  type="password" id="password"  required/>
</div>
<div class="form-group">
<input  class="btn btn-primary"   type="submit" value="Submit"/>
</div>
</form>
</div>
<div class="col-md-3"></div>

<script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<!-- <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js" type="text/javascript"></script> -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-3.3.4.js" type="text/javascript"></script>
</body>
</html>
