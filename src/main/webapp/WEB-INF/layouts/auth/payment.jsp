

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">
    <div class="col-2"></div>
<div class="col-8">
    <form action="/addOrders" method="POST" >
        <div class="form-group">
            <label for="nm">Name:</label>
            <input type="text" name="orname" class="form-control" id="nm" required>
        </div>

        <div class="form-group">
            <label for="pn">Phone:</label>
            <input type="number" name="orphone" maxlength="11" class="form-control" id="pn" required>
        </div>

        <div class="form-group">
            <label for="ads">Address:</label>
            <input type="text" name="oraddress" class="form-control" id="ads" required>
        </div>

        <div class="form-group">
            <label for="ct">City</label>
            <input type="text" name = "orcity" class="form-control" id="ct" required>
        </div>

        <div class="form-group">
            <label for="dt">Order Date</label>
            <input type="Date" name="ordate" class="form-control" id="dt" required>
        </div>

        <div class="form-group">
            BuyPrice: <input value="${sessionScope.total}" name="orbuyprice" readonly>
                             <input value="${sessionScope.cartSize}"type="hidden" name="orproqty" readonly><br>
            <label>Payment Method:</label><br>
            <input type="radio" onclick="javascript:yesnoCheck();" name="orpay" id="noCheck" value="Cash" checked>Cash Payment
            <input type="radio" onclick="javascript:yesnoCheck();" name="orpay" id="yesCheck" value="Card">  Payment by Card 

            <div id="ifYes" style="visibility:hidden">
                Card Type: <input type='text' id='acc' name='acc'>
                Card Number: <input type='text' id='acc' name='acc'>       
            </div>
        </div>
                             <a class="" href="<c:url value="userorderlistView"/>" style="text-decoration: none;color: white;">
                             <button type="submit" class="btn btn-success btn-block text-dark w-100">Pay</button>
            </a>
    </form>
</div>
            <div class="col-2"></div>
            </div>

<script type="text/javascript">

    function yesnoCheck() {
        if (document.getElementById('yesCheck').checked) {
            document.getElementById('ifYes').style.visibility = 'visible';
        } else
            document.getElementById('ifYes').style.visibility = 'hidden';

    }

</script>


