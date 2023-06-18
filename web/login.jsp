<%-- 
    Document   : login
    Created on : Oct 14, 2021, 9:18:59 PM
    Author     : Phước Hà
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
        <jsp:include page= "components/head.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="components/header.jsp"></jsp:include>   
            <!-- Home Room Section Begin -->
            <section class="hp-room-section">
                <div class="container-fluid">
                    <div class="section-title mt-3">
                        <div class="d-flex justify-content-center align-items-center">
                            <form action="MainController" class="form-group col-sm-3" method="POST">
                                <div class="mb-3 form-group">
                                    <label for="exampleInputEmail1" class="form-label">Username</label>
                                    <input type="text" name="Username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input type="password" name="Password" class="form-control" id="exampleInputPassword1">
                                </div>
                            <c:if test="${not empty requestScope.LOGIN_MSG}">
                                <p style="color: red">${requestScope.LOGIN_MSG}</p>
                            </c:if>
                            <c:if test="${not empty requestScope.CREATE_MSG}">
                                <p style="color: red">${requestScope.CREATE_MSG}</p>
                            </c:if>
                            <c:if test="${not empty requestScope.VIEWDETAIL_MSG}">
                                <p style="color: red">${requestScope.VIEWDETAIL_MSG}</p>
                            </c:if>
                            <c:if test="${not empty requestScope.CART_MSG}">
                                <p style="color: red">${requestScope.CART_MSG}</p>
                            </c:if>
                            <c:if test="${not empty requestScope.VIEWORDER_MSG}">
                                <p style="color: red">${requestScope.VIEWORDER_MSG}</p>
                            </c:if>
                            <c:if test="${not empty requestScope.ORDERDETAILS_MSG}">
                                <p style="color: red">${requestScope.ORDERDETAILS_MSG}</p>
                            </c:if>
                            <c:if test="${not empty requestScope.FEEDBACK_MSG}">
                                <p style="color: red">${requestScope.FEEDBACK_MSG}</p>
                            </c:if>
                            <c:if test="${not empty requestScope.CHECKDISCOUNT_MSG}">
                                <p style="color: red">${requestScope.CHECKDISCOUNT_MSG}</p>
                            </c:if>
                            <br>
                            <button type="submit" name ="btnAction" value="loginServlet" class="btn btn-primary">Submit</button>
                            <a class="btn btn-primary" href="MainController?btnAction=registerPage">Register</a>
                            <a class="btn btn-danger" href="search?searchValue=">Home Page</a>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        
        <jsp:include page="components/footer.jsp"></jsp:include>
    </body>

</html>