<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
<body style="background-color:#ADD8E6;margin-top: 3%">
<div align="right" class="col-md-3"></div>
	<div align="center" class="col-md-6">
	<h3>Product List</h3>
	<c:if test="${not empty msg}">
									<div class="msg" style="color: red;">${msg}</div>
								</c:if>
	<br>
	<c:if test="${!empty productList}">
		<table class="table table-bordered">
			<tr>
				<th>Sl.no</th>
				<th>Product Name</th>
				<th>Product Description</th>
				<th>Price</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product" varStatus="counter">
				<tr>
					<td>${counter.count}</td>
					<td>${product.name}</td>
					<td>${product.stock}</td>
					<td>${product.rate}</td>
					<td ><a  href="./product_edit?id=${product.id}"><i class='glyphicon glyphicon-edit'></i></a></td>
					<td><a  onclick="return confirm('Are you sure?');" href="./product_delete?id=${product.id}"><i class='glyphicon glyphicon-trash'></i></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
	<div align="left" class="col-md-3"><a href="admin"><button class="btn btn-primary" >Go back</button></a></div>
</body>
</html>