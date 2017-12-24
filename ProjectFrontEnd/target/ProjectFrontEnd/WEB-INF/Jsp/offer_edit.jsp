<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<body>

<div style="width: 60%" class="container">
<c:if test="${not empty msg}">
									<div class="msg" style="color: red;">${msg}</div>
								</c:if> 
 <h3 align="center">Edit Offers</h3>
<hr/>
  <form action="offer_update"  method="post">
    <div class="form-group">
      <label for="p_id">Offer  ID :</label>
      <input type="number" readonly class="form-control" id="p_id" placeholder="ID" name="id" value="${offers.id}">
    </div>
    <div class="form-group">
      <label for="p_name">Heading:</label>
      <input type="text" class="form-control" id="p_name" placeholder="Heading" name="name" value="${offers.main}">
   </div>
    <div class="form-group">
      <label for="p_desc"> desc:</label>
      <input type="text" class="form-control" id="p_desc" placeholder="Description" name="desc" value="${offers.desc}" >
    </div>
    
  
 <div align="center" class="form-group">

    <button  type="submit" class="btn btn-primary" >UPDATE</button>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</div>
  </form>

</div>

</body>
</html>

