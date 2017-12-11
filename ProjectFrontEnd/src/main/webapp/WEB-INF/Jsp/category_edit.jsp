<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<body>

<div style="width: 60%" class="container">
<c:if test="${not empty msg}">
									<div class="msg" style="color: red;">${msg}</div>
								</c:if> 
 <h3 align="center">Edit category Details</h3>
<hr/>
  <form action="category_update"  method="post">
    <div class="form-group">
      <label for="p_id">category  ID :</label>
      <input type="number" readonly class="form-control" id="p_id" placeholder="category ID" name="id" value="${category.id}">
    </div>
    <div class="form-group">
      <label for="p_name">category Name :</label>
      <input type="text" class="form-control" id="p_name" placeholder="category Name " name="name" value="${category.name}">
    </div>
    <div class="form-group">
      <label for="p_desc">category desc:</label>
      <input type="text" class="form-control" id="p_desc" placeholder="category desc" name="desc" value="${category.desc}" >
    </div>
    
  
 <div align="center" class="form-group">

    <button  type="submit" class="btn btn-primary" >UPDATE</button>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</div>
  </form>

</div>

</body>
</html>

