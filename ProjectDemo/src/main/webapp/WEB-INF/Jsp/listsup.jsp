<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
<body style="margin-top: 7%">
<div align="right" class="col-md-3"></div>
	<div align="center" class="col-md-6">
	<c:if test="${not empty msg}">
									<div class="msg" style="color: red;">${msg}</div>
								</c:if>
	<h3>Supplier List</h3>
	<c:if test="${!empty listsup}">
		<table class="table table-bordered">
			<tr>
				<th>Sl.No</th>
				<th >Supplier Name</th>
				<th >Supplier Address</th>
				<th >Supplier Number</th>
				<th >Edit</th>
				<th >Delete</th>
				
			</tr>
			
			<c:forEach items="${listsup}" var="supplier" varStatus="counter">
				<tr>
				<td> ${counter.count}</td> 
					
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td>${supplier.mobile}</td>
					<td ><a  href="./supplier_edit?id=${supplier.ID}"><i class='glyphicon glyphicon-edit'></i></a></td>
					<td><a onclick="return confirm('Are you sure?');" href="./supplier_delete?id=${supplier.ID}"><i class='glyphicon glyphicon-trash'></i></a></td>
					
				</tr>
		
			</c:forEach>
		</table>
	</c:if>
	</div>
	<div align="left" class="col-md-3"><a href="admin"><button class="btn btn-primary" >Go back</button></a></div>
</body>
</html>