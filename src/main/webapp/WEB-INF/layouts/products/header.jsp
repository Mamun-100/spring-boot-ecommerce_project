<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="header shop">
    <!-- Topbar -->
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-12">
                    <!-- Top Left -->
                    <div class="top-left" >
                        <ul class="list-main">
                            <li><i class="ti-headphone-alt"></i> +88001961280207</li>

                            <!--- Email start --->
                            <script>
                                $('#exampleModal').on('show.bs.modal', function (event) {
                                    var button = $(event.relatedTarget) // Button that triggered the modal
                                    var recipient = button.data('whatever') // Extract info from data-* attributes
                                    // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                                    // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                                    var modal = $(this)
                                    modal.find('.modal-title').text('New message to ' + recipient)
                                    modal.find('.modal-body input').val(recipient)
                                })



                                function myFunction() {
                                    alert("Mail Sending ...");
                                }
                            </script>
                            <li data-toggle="modal" data-target="#exampleModal" data-whatever="mrhudailsoftware@gmail.com"><a href="#">hudaishop@gmail.com</a></li>
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                                            <button type="button" class="close " data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form>
                                                <div class="form-group pl-3 pr-3">
                                                    <label for="recipient-name" class="col-form-label"><h4>Recipient:</h4></label>
                                                    <input type="text" class="form-control" id="recipient-name" placeholder="Type Your valid Mail Name" required>
                                                </div>
                                                <div class="form-group pl-3 pr-3">
                                                    <label for="message-text" class="col-form-label"><h4>Message:</h4></label>
                                                    <textarea class="form-control" id="message-text" placeholder="Type Your Text" rows="10"></textarea>
                                                </div>
                                                <div class="modal-footer">
                                                    <!--                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>-->
                                                    <button type="button" class="btn btn-primary">Send message</button>
                                                </div>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!--Email end  --->



                        </ul>
                    </div>
                    <!--/ End Top Left -->
                </div>
                <div class="col-lg-8 col-md-12 col-12">
                    <!-- Top Right -->
                    <div class="right-content">
                        <ul class="list-main">        
                            <li><i class="ti-user"></i> <a href="<c:url value="signup"/>">SignUp</a></li>
                            <li><i class="ti-power-off"></i><a href="<c:url value="loginView"/>">Login</a></li>
                        </ul>
                    </div>
                    <!-- End Top Right -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Topbar -->
    <div class="middle-inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-12">
                    <!-- Logo -->

                    <div class="logo">
                        <a href="<c:url value="products"/>"><span  style="font: #000;font-family: 'Brush Script MT', cursive;font-size: 350%"><sub>ElectroShopBd</sub></span></a>
                    </div>

                    <!--/ End Logo -->

                    <!-- Search Form -->
                    <div class="search-top">
                        <div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
                        <!-- Search Form -->
                        <div class="search-top">
                            <form class="search-form">
                                <input type="text" placeholder="Search here..." name="search">
                                <button value="search" type="submit"><i class="ti-search"></i></button>
                            </form>
                        </div>
                        <!--/ End Search Form -->
                    </div>
                    <!--/ End Search Form -->
                    <div class="mobile-nav"></div>
                </div>
                <div class="col-lg-8 col-md-7 col-12">
                    <div class="search-bar-top">
                        <div class="search-bar">
                            <select>
                                <option selected="selected">All Category</option>
                                <option>Laptop</option>
                                <option>Refrigerator</option>
                                <option>Mobile</option>
                                <option>MotorCycle</option>
                            </select>
                            <form>
                                <input name="search" placeholder="Search Products Here....." type="search">
                                <button class="btnn"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-12">
                    <div class="right-bar">
                        <!-- Search Form -->
                        <div class="sinlge-bar">
                            <a href="#" class="single-icon"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                        </div>
                        <div class="sinlge-bar">
                            <a href="#" class="single-icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
                        </div>
                        <div class="sinlge-bar shopping">
                            <a href="#" class="single-icon"><i class="ti-bag"></i> <span class="total-count">${sessionScope.cartSize}</span></a>
                            <!-- Shopping Item -->
                            <div class="shopping-item">
                                <div class="dropdown-cart-header">
                                    <span>${sessionScope.cartSize} Items</span>
                                    <a href="#">View Cart</a>
                                </div>
                                <ul class="shopping-list">
                                    <c:forEach items="${sessionScope.cart.cartItems}" var="item">
                                        <li>
                                            <a href="#" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
                                            <a class="cart-img" href="#"><!---<img src="https://via.placeholder.com/70x70" alt="#">--></a>
                                            <h4><a href="#">${item.product.productName}</a></h4>
                                            <p class="quantity">1x - <span class="amount">BDT ${item.product.price}</span></p>
                                        </li> 
                                    </c:forEach>


                                </ul>
                                <div class="bottom">
                                    <div class="total">
                                        <span>Total</span>
                                        <span class="total-amount">BDT: ${sessionScope.total}</span>
                                    </div>
                                    <!--                                            <a href="/checkoutPage" class="btn animate">Checkout</a>-->
                                    <a href="<c:url value="paymentView"/>" class="btn animate">Checkout</a>
                                </div>
                            </div>
                            <!--/ End Shopping Item -->
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Header Inner -->


    <!--/ End Header Inner -->


</header>
<!--/ End Header -->
