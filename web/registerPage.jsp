<%-- 
    Document   : registerPage
    Created on : Oct 15, 2021, 12:54:33 PM
    Author     : Phước Hà
--%>

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
                            <form action="MainController" method="POST">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email</label>
                                    <input type="text" name="userId" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    <p style="color: red">${requestScope.USER_ERROR.getUserIDError()}</p>
                            </div>

                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Password</label>
                                <input type="password" name="Password" class="form-control" id="exampleInputPassword1">
                                <p style="color: red">${requestScope.USER_ERROR.getPasswordError()}</p>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Re Password</label>
                                <input type="password" name="rePassword" class="form-control" id="exampleInputPassword1">
                                <p style="color: red">${requestScope.USER_ERROR.getConfirmPasswordError()}</p>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Full Name</label>
                                <input type="text" name="fullName" class="form-control" id="exampleInputPassword1">
                                <p style="color: red">${requestScope.USER_ERROR.getNameError()}</p>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Address</label>
                                <input type="text" name="address" class="form-control" id="exampleInputPassword1">
                                <p style="color: red">${requestScope.USER_ERROR.getAddress()}</p>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">phone Number</label>
                                <input type="text" name="phoneNumber" class="form-control" id="exampleInputPassword1">
                                <p style="color: red">${requestScope.USER_ERROR.getPhoneNumberError()}</p>
                            </div>


                            <br>
                            <button type="submit" name ="btnAction" value="CreateServlet" class="btn btn-primary">Create</button>

                        </form>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="components/footer.jsp"></jsp:include>
    </body>
</html>

