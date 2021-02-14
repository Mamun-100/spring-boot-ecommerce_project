<%-- 
    Document   : userOrderList
    Created on : Feb 9, 2021, 3:56:36 PM
    Author     : J2EE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       

        <div class="row mt-3" >
            <h2></h2>
            <div class="table-responsive">      
                <table class="table table-hover table-striped table-sm text-center">
                    <thead>
                        <tr class="bg-success">
<!--                            <th>ID</th>-->
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>Date</th>
<!--                            <th>ProductId</th>-->
                            <th>Quantity</th>
                            <th>PayType</th>
                            <th>TotalPrice</th>
  
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${orderlist}" var="ol">
                            <tr>
<!--                                <td>${ol.id}</td>-->
                                <td>${ol.name}</td>
                                <td>${ol.phone}</td>
                                <td>${ol.address}</td>
                                <td>${ol.city}</td>
                                <td>${ol.date}</td>
<!--                                <td>8, 4</td>-->
                                <td>${ol.proqty}</td>
                                <td>${ol.paymentType}</td>
                                <td>${ol.totalproprice}</td>
                        
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
