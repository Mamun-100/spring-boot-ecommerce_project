<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="navbar navbar-success sticky-top bg-dark flex-md-nowrap p-1 pb-4 shadow " style="height: 15%">
      <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#" onclick="myFunction()"><span  style="font: black;font-family: 'Brush Script MT', cursive;font-size: 300%"><sub>ElectroShopBd</sub></span></a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation" >
        <span class="navbar-toggler-icon"></span>
    </button>
    <!--<input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">-->
    <ul class="navbar-nav px-3 pt-4">
        <li class="nav-item text-nowrap">
            <a class="btn btn-danger text-dark nav-link bg-danger " href="<c:url value="/loginView"/>" >logout</a>
        </li>
    </ul>
</header>

<script>
    function myFunction() {
        alert("Please, Click of logout button");
    }
   
</script>