<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<body>

<div style="width: 60%" class="container">

 <h3 align="center">Edit Supplier Details</h3>
<hr/>
<c:if test="${not empty msg}">
									<div class="msg" style="color: red;">${msg}</div>
								</c:if>
  <form action="supplier_update"  method="post">
    <div class="form-group">
      <label for="p_id">Supplier  ID :</label>
      <input type="number" readonly class="form-control" id="p_id" placeholder="Supplier ID" name="id" value="${supplier.ID}">
    </div>
    <div class="form-group">
      <label for="p_name">Supplier Name :</label>
      <input type="text" class="form-control" id="p_name" placeholder="Supplier Name " name="name" value="${supplier.name}">
    </div>
    <div class="form-group">
      <label for="p_desc">Supplier Address :</label>
      <input type="text" class="form-control" id="p_desc" placeholder="Supplier Address" name="address" value="${supplier.address}" >
    </div>
    <div class="form-group">
      <label for="p_price">Supplier Contact :</label>
      <input type="number" class="form-control" id="p_price" placeholder="Supplier Contact " name="phone" value="${supplier.mobile}" >
    </div>
  
 <div align="center" class="form-group">

    <button  type="submit" class="btn btn-primary" >UPDATE</button>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</div>
  </form>

</div>

</body>
</html>

