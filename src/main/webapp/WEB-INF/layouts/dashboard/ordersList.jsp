<%-- 
    Document   : ordersList
    Created on : Jan 31, 2021, 12:04:16 AM
    Author     : J2EE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>


        </style>
    </head>
    <body>


        <div class="row mt-3" >
            
            <div class="table-responsive">
              <h3 class="text-center">Order List</h3>
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
                            <th>Status</th>
                            <th colspan="2">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                        <c:forEach items="${orderlist}" var="ol">
                            <tr id="second">
                                <td>${ol.id}</td>
                                <td>${ol.name}</td>
                                <td>${ol.phone}</td>
                                <td>${ol.address}</td>
                                <td>${ol.city}</td>
                                <td>${ol.date}</td>
<!--                                <td>4, 14</td>-->
                                <td>${ol.proqty}</td>
                                <td>${ol.paymentType}</td>
                                <td>${ol.totalproprice}</td>
                                <td>
                                    <div id="myDIV"></div>
                                </td>
                                <td><button type="submit" onclick="changeSecond('green')" ondblclick="orPending()">Accept</button></td>
                                <td><button type="submit" onclick="changeSecond'pink')" ondblclick="orCancel()">Decline</button></td>     

                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>

        <script>
           

            function changeSecond(color) {
                document.getElementById("second").style.background = color;
            }

            function orPending() {
                var x = document.getElementById("myDIV");
                if (x.innerHTML === "") {
                    x.innerHTML = "Pending";
                } else {
                    x.innerHTML = "";
                }
            }
             function orCancel() {
                var x = document.getElementById("myDIV");
                if (x.innerHTML === "") {
                    x.innerHTML = "Cancel";
                } else {
                    x.innerHTML = "";
                }
            }

        </script>
    </body>
</html>
