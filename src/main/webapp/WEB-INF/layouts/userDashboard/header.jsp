<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="navbar navbar-success sticky-top bg-dark flex-md-nowrap p-1 pb-4 shadow " style="height: 15%">
    <a  id="demo" class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="<c:url value="products"/>" ><span  style="font: black;font-family: 'Brush Script MT', cursive;font-size: 300%"><sub>Re Add To Cart</sub></span></a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation" >
        <span class="navbar-toggler-icon"></span>
    </button>
    <h3 class="text-center text-muted">User Products Order List</h3>
    <ul class="navbar-nav px-3 pt-4">
        <li class="nav-item text-nowrap">
            <a class="btn btn-danger text-dark nav-link bg-danger " href="<c:url value="/loginView"/>" >logout</a>
        </li>
    </ul>
</header>

<script>

    document.getElementById("demo").addEventListener("mouseover", mouseOver);
    document.getElementById("demo").addEventListener("mouseout", mouseOut);

    function mouseOver() {
        document.getElementById("demo").style.color = "green";
    }

    function mouseOut() {
        document.getElementById("demo").style.color = "white";
    }


</script>
