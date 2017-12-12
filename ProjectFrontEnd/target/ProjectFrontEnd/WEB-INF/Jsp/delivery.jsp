<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
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
  <c:if test="${pageContext.request.userPrincipal.name !='roymathewsp@gmail.com'}">
<div  class="container collapse navbar-collapse" style="width:90%;" id="shop-nav" >
<ul >
<c:if test="${!empty listcat}">
   <c:forEach items="${listcat}" var="category"> 
  <li style="text-transform: uppercase;"><a href="productbycat?id=${category.id}&sort=0">${category.name} </a></li>
  
      </c:forEach></c:if>
</ul>
</div></c:if>
</ul>
</div>
</nav>

<div class='container'>
    <div class='row' style="padding-bottom:25px;">
        <div class='col-md-12'>
            <div id='mainContentWrapper'>
                <div class="col-md-8 col-md-offset-2">
                    <h2 style="text-align: center;">
                        Review Your Order & Complete Checkout
                    </h2>
                    <hr/>
                   
                    <div class="shopping_cart">
                        <form class="form-horizontal"  action="place-order" method="post" >
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Review
                                                Your Order</a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <div class="items">
                                                <div class="col-md-9">
                                                    <table class="table table-bordered">
                                                      <tr ><th >Product</th><th>Price(Rs)</th></tr>
                                                      
                                                            
                                                               <c:choose>
                                                                 <c:when test="${!empty cartlist}">
                                                                  <c:set var = "total" scope = "session" value = "0"/>
                                                                  <c:forEach items="${cartlist}" var="cart"> 
                                                                   <tr> <td><c:out value = "${(cart.product.name)}"/></td>
                                                               <td><c:out value = "${(cart.product.rate)}"/></td>   </tr>  
                                                                <c:set var = "total" scope = "session" value = "${(cart.product.rate*cart.quantity)+total}"/>  
                                                                  </c:forEach>
                                                                 
                                                                 </c:when>
                                                                 <c:otherwise>
                                                                 <c:redirect url="view-cart"/> 
                                                                 </c:otherwise>
                                                                    </c:choose>
                                                              
                                                         
                                                           
                                                               
                                                    </table>
                                                </div>
                                                <div class="col-md-3">
                                                    <div style="text-align: center;">
                                                        <h3>GrandTotal</h3>
                                                        <h3><span style="color:green;">Rs.${total}</span><input type="text" hidden value = "${total}" name="total"  /></h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <div style="text-align: center; width:100%;"><a style="width:100%;"
                                                                                        data-toggle="collapse"
                                                                                        data-parent="#accordion"
                                                                                        href="#collapseTwo"
                                                                                        class=" btn btn-success"
                                                                                        onclick="$(this).fadeOut(); $('#payInfo').fadeIn();">Continue
                                            to Billing Information»</a></div>
                                    </h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Contact
                                            and Billing Information</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Help us keep your account safe and secure, please verify your billing
                                            information.</b>
                                        <br/><br/>
                                        <c:if test="${!empty userlist}">
                                    <c:forEach items="${userlist}" var="user"> 
                                        <table class="table table-striped" style="font-weight: bold;">
                                          
                                            <tr>
                                                <td style="width: 175px;">
                                                    <label for="id_first_name"> Name:</label></td>
                                                <td>
                                                    <input class="form-control" id="id_first_name" value="${user.username}" name="name"
                                                           required="required" type="text"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 175px;">
                                                    <label for="id_address_line_1">Email:</label></td>
                                                <td>
         <input class="form-control" readonly id="email" value="${user.email}"
                                                           name="email" required="required" type="email"/>
                                                </td>
                                            </tr>
                                           
                                            <tr>
                                            <tr>
                                                <td style="width: 175px;">
                                                    <label for="id_address_line_1">Address:</label></td>
                                                <td>
                                                    <input class="form-control" id="id_address_line_1"
                                                           name="address" required="required" type="text"/>
                                                </td>
                                            </tr>
                                           
                                            <tr>
                                                <td style="width: 175px;">
                                                    <label for="id_city">City:</label></td>
                                                <td>
                                                    <input class="form-control" id="id_city" name="city"
                                                           required="required" type="text"/>
                                                </td>
                                            </tr>
                                           
                                            <tr>
                                                <td style="width: 175px;">
                                                    <label for="id_postalcode">Postalcode:</label></td>
                                                <td>
                                                    <input class="form-control" id="id_postalcode" name="pin"
                                                           required="required" type="number"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 175px;">
                                                    <label for="id_phone">Phone:</label></td>
                                                <td>
                                                    <input class="form-control" id="id_phone" value="${user.mobile}" name="phone" type="number"/>
                                                </td>
                                            </tr>

                                        </table>
                                        </c:forEach></c:if>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <div style="text-align: center;"><a data-toggle="collapse"
                                                                            data-parent="#accordion"
                                                                            href="#collapseThree"
                                                                            class=" btn   btn-success" id="payInfo"
                                                                            style="width:100%;display: none;" onclick="$(this).fadeOut();  
                   document.getElementById('collapseThree').scrollIntoView()">Enter Payment Information »</a>
                                        </div>
                                    </h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                            <b>Payment Information</b>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <span class='payment-errors'></span>
                                        <fieldset>
                                            <legend>What method would you like to pay with today?</legend>
                                      
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label" for="cvv">Cash On Delivery</label>
                                                    <div class="col-sm-3">
                     <input type="checkbox" class="form-control" 
                                                               id="card-cvc" checked="checked">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-3 col-sm-9">
                                                    </div>
                                                </div>
                                        </fieldset><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <button type="submit" class="btn btn-success btn-lg" style="width:100%;">Pay
                                            Now
                                        </button>
                                        <br/>
                                        <div style="text-align: left;"><br/>
                                            By submitting this order you are agreeing to our universal
                                                billing agreement, and terms of service.
                                            If you have any questions about our products or services please contact us
                                            before placing this order.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </form>
                    </div>
</div></div></div></div></div>
</body>
</html>
