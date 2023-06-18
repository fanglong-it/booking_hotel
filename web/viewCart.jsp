<%-- 
    Document   : viewCart
    Created on : Oct 17, 2021, 2:12:23 AM
    Author     : Phước Hà
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Home Page</title>
        <jsp:include page="components/head.jsp"></jsp:include>
            <style>
                .table-container {
                    width: 100%; /* Set the desired width for the scrollable area */
                    overflow-x: auto; /* Enable horizontal scrolling */
                }

                .table-container table {
                    width: max-content; /* Expand the table to accommodate all columns */
                }
            </style>
        </head>
        <body>
        <jsp:include page="components/header.jsp"></jsp:include>   
            <!-- Room Details Section Begin -->
            <section class="room-details-section spad">
                <div class="container mt-10 mb-10">
                    <div class="row">
                        <div class="col-sm-9">
                        <c:if test="${requestScope.CART_MSG != null}">
                            <p class="right" style="color: white">${requestScope.CART_MSG}</p>
                        </c:if>
                        <c:if test="${requestScope.CHECKDISCOUNT_MSG != null}">
                            <p class="right">${requestScope.CHECKDISCOUNT_MSG}</p>
                        </c:if>
                        <c:if test="${sessionScope.LIST_CART != null}">
                            <div class="table-container">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <th style="width: 10%" class="text-nowrap">No.</th>
                                        <th style="width: 20%" class="text-nowrap">Room Name</th>
                                        <th class="text-nowrap">Quantity</th>
                                        <th style="width: 20%; margin-left: 5px" class="text-nowrap">Price</th>
                                        <th style="width: 20%" class="text-nowrap">Check In</th>
                                        <th style="width: 20%" class="text-nowrap">Check Out</th>
                                        <th class="text-nowrap">Night</th>
                                        <th  style="width: 20%" class="text-nowrap">Total Price</th>
                                        <th  style="width: 20%" class="text-nowrap">Action</th>
                                    </tr>
                                    <c:forEach var="r" items="${sessionScope.LIST_CART}" varStatus="count">
                                        <form action="MainController">
                                            <tr>
                                                <td>${count.count}</td>
                                                <td>${r.roomName}</td>
                                                <td>
                                                    <input type="number" class="form-control" name="quantity" value="${r.quantity}">
                                                </td> 
                                                <td> ${r.price} .vnđ </td>
                                                <td>
                                                    <input type="text" class="form-control" name="checkIn" value="${r.checkInDate}" readonly="">
                                                </td>
                                                <td>
                                                    <input type="text"  class="form-control"  name="checkOut" value="${r.checkOutDate}" readonly="">
                                                </td>
                                                <td>
                                                    <input type="hidden" name="roomNo" value="${r.roomNo}"/>
                                                    <select name="night">
                                                        <option value="${r.night}" selected="">${r.night} night</option>
                                                        <c:forEach begin="1" end="30" var="num">
                                                            <option value="${num}">${num} night</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                                <td>${r.total} .vnđ</td>
                                                <td class="align-content-center justify-content-center">
                                                    <a href="MainController?btnAction=deleteCart&roomNo=${r.roomNo}" class="btn btn-danger" onclick="return confirm('Are you sure delete?')">Delete</a>
                                                    <button class="btn btn-success" name="btnAction" value="updateCart">Update</button>
                                                </td>
                                            </tr>
                                        </form>
                                    </c:forEach>
                                </table>
                            </div>
                        </c:if>
                    </div>
                    <div class="col-sm-3">
                        <div class="row">
                            <form action="MainController">
                                <!-- Box Head -->
                                <div class="box-head">
                                    <h2>Manager Cart</h2>
                                </div>
                                <!-- Date Picker -->
                                <p>
                                    Total Price :<input type="text" name="totalPrice" value="${sessionScope.TOTAL}" style="width: 50%" class="field small-field"  readonly=""/>
                                    VNĐ
                                </p>
                                <hr>
                                <!-- End Sort -->
                                <button name="btnAction" value="checkOut" class="btn btn-primary" style="width: 100%">Check Out</button>
                                <hr>
                                <c:if test="${sessionScope.DISCOUNT_CODE == null}">

                                    <c:if test="${requestScope.CHECKDISCOUNT_MSG != null}">
                                        <p style="color: red">${requestScope.CHECKDISCOUNT_MSG}</p>
                                    </c:if>

                                    <p>
                                        Discount :<input type="text" name="discountCode" value="" style="width: 50%" class="field small-field"/>
                                        VNĐ
                                    </p>
                                    <button name="btnAction" value="checkDiscountCode" class="btn btn-warning" style="width: 100%">Check</button>
                                </c:if>

                                <c:if test="${sessionScope.DISCOUNT_CODE != null}">
                                    <hr>
                                    <p>
                                    <p>
                                        Discount :<input type="text" name="discountCode" value="" style="width: 50%" class="field small-field"/>
                                        VNĐ
                                    </p>
                                    <button name="btnAction" value="changeDiscount" class="btn btn-warning" style="width: 100%">Change DisCount</button>
                                    </p>
                                </c:if>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Room Details Section End -->
        <jsp:include page="components/footer.jsp"></jsp:include>
    </body>
</html>