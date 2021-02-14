
     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="position-sticky pt-3">
        <ul class="nav flex-column">
            
          <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="<c:url value="/admin/categories"/>">
              <span data-feather="home"></span>
              Categories
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="<c:url value="/admin/products"/>">
              <span data-feather="file"></span>
              Products
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="<c:url value="/admin/orders"/>">
              <span data-feather="shopping-cart"></span>
             Orders
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="<c:url value="/admin/delivery"/>">
              <span data-feather="users"></span>
              Delivery
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="<c:url value="statistics"/>">
              <span data-feather="bar-chart-2"></span>
              Statistics
            </a>
          </li>
         
        </ul>

      </div>
 