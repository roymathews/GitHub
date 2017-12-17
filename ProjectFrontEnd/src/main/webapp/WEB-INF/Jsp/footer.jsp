<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <section style="height:80px;"></section>
	
    <!----------- Footer ------------>
    <footer  class="footer-bs">
        <div class="row">
        	<div class="col-md-4 footer-brand animated fadeInLeft">
        <img height="30" width="30" src="${pageContext.request.contextPath}/resources/images/logo.jpg" alt="logo">
            	<h3>Mobile Cart</h3>
                <p>Buy all kinds of mobile online</p>
                <p>&copy; 2017 India, All rights reserved</p>
              
            </div>
        	<div class="col-md-4 footer-nav animated fadeInUp">
            	
            	
                    <ul class="list">
       
      <c:choose>
       <c:when test="${pageContext.request.userPrincipal.name != null}">
     
       
	   <li ><a>Logged In as ${pageContext.request.userPrincipal.name}</a></li>
          <li> <a href="<c:url value="/logout" />" > Logout</a></li>
	</c:when>
	<c:otherwise>
        <li><a href="register">Sign Up</a></li>
         <li><a href="login?error=">Login</a></li></c:otherwise>
         </c:choose>
      </ul>
            </div>
        	<div class="col-md-4 footer-social animated fadeInDown">
            	<h4>Follow Us</h4>
            	<ul>
                	<li><a href="#">Facebook</a></li>
                	<li><a href="#">Twitter</a></li>
                	<li><a href="#">Instagram</a></li>
                
                </ul>
            </div>
        	
        </div>
    </footer>
   
</div>