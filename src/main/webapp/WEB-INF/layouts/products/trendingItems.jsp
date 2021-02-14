<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<div class="product-area section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Regular Item</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="product-info">
                    <div class="nav-main">
                        <!-- Tab Nav -->
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <c:forEach items="${categories}" var="category">
                                <li class="nav-item"><a class="nav-link ${caType == category.categoryName ? 'active' : ''}"  data-toggle="tab"   
                                                        href="#${category.categoryName}" role="tab" >${category.categoryName}</a></li>

                            </c:forEach>
                        </ul>
                        <!--/ End Tab Nav -->
                    </div>
                    <div class="tab-content" id="myTabContent">
                        <!-- Start Single Tab -->
                        <c:forEach items="${categories}" var="c">
                            <div class="tab-pane fade show active" id="${c.categoryName}" role="tabpanel">
                                <div class="tab-single">
                                    <div class="row" style="background-color:white">
                                        <c:forEach items="${c.products}" var="p">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12" >
                                                <div class="single-product">
                                                    <div class="h-75 product-img img-hover-zoom">
                                                        <a href="#">
                                                            <c:forEach items="${p.images}" var="img">
                                                                <img class="default-img" src="<c:out value="${img.image}" />" alt="HudaiShop" onclick="zoomin()">
                                                            </c:forEach>
                                                            <img class="hover-img" src="https://via.placeholder.com/" alt="">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick Shop Contact" href="#"><i class=" ti-eye"></i><span>Shop Now</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="/addToCart?id=${p.id}">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">${p.productName}</a></h3>
                                                        <div class="product-price">
                                                            <span>TK: ${p.price}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <!--/ End Single Tab -->
                        <!-- Start Single Tab -->

                        <!--/ End Single Tab -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    /* [1] The container */
.img-hover-zoom {
/*     height: 300px;  [1.1] Set it as per your need */
  overflow: hidden; /* [1.2] Hide the overflowing of child elements */
}

/* [2] Transition property for smooth transformation of images */
.img-hover-zoom img {
  transition: transform 4s ease;
}

/* [3] Finally, transforming the image when container gets hovered */
.img-hover-zoom:hover img {
  transform: scale(4);
}

</style>
