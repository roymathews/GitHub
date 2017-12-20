<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
<body style="margin-top: 7%">
<div align="right" class="col-md-3"></div>
	<div align="center" class="col-md-6">
	<h3>Offers List</h3>
	 <c:if test="${not empty msg}">
									<div class="msg" style="color: red;">${msg}</div>
								</c:if> 
	<c:if test="${!empty listoffers}">
		<table class="table table-bordered">
			<tr>
				<th > Sl.no</th>
				<th >Heading</th>
				<th >Description</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${listoffers}" var="offers" varStatus="counter">
				<tr>
					<td>${counter.count}</td>
					<td>${offers.main}</td>
					<td>${offers.desc}</td>
					<td ><a  href="./offer_edit?id=${offers.id}"><i class='glyphicon glyphicon-edit'></i></a></td>
					<td><a onclick="return confirm('Are you sure to delete?');" href="./offer_delete?id=${offers.id}"><i class='glyphicon glyphicon-trash'></i></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
	<div align="left" class="col-md-3"><a href="admin"><button class="btn btn-primary" >Go back</button></a></div>
</body>
</html>