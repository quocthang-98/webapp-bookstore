<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
  	<!-- brand name -->
    <a class="navbar-brand fs-4" href="#">PT BOOKSTORE</a>
    
    <!-- navbar toggler -->
    <button class="navbar-toggler shadow-none border-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <!-- sidebar -->
    <div class="sidebar offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
    
      <!-- sidebar header-->
      <div class="offcanvas-header text-black border-bottom">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
        <button type="button" class="btn-close shadow-none" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      
      <!-- sidebar body-->
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-start flex-grow-1 pe-3">
          <li class="nav-item mx-2">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          
          <li class="nav-item mx-2 dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Browse</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#"><strong>All Books</strong></a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">New Books</a></li>
              <li><a class="dropdown-item" href="#">Top Rated</a></li>
            </ul>
          </li>
          
          <li class="nav-item mx-2">
            <a class="nav-link" aria-current="page" href="#">Support</a>
          </li>
          
          <li class="nav-item mx-2">
            <a class="nav-link" aria-current="page" href="#">About</a>
          </li>
          
          <li class="nav-item mx-2">
			<div class="justify-content-end align-items-end mw-100">
	       		<form action="user-booklist" class="form-control-sm" style="width: 300px;">
					<div class="input-group ">
					  <input type="search" class="form-control rounded" style="background-color: rgba(0, 0, 0, 0.02); height: 50%;" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
					  <button type="button" class="btn btn-dark search-btn" style="height: 50%;" data-mdb-ripple-init><img src="./template/images/iconSearch.svg" style="display: inline-block; filter: invert(1);"></button>
					</div>
				</form>
      		</div>
			</li>
       
        </ul>

    	</div>
  		</div>
  		
<!--   		<ul class="navbar-nav justify-content-end align-items-end flex-grow-1 pe-3"> -->
<!-- 			<li class="nav-item mx-2"> -->
<!-- 			<div class="justify-content-end align-items-end"> -->
<!-- 	       		<form action="user-cart" class=" justify-content-end align-items-end"> -->
<!-- 					<button class="btn btn-outline-dark form-control me-2 cart-button" type="submit"> -->
<!-- 					<div class="cart-button-content align-items-center"> -->
<!-- 						<img src="./template/images/shopping-cart-outline.svg" class="cart-button-image" style="display: inline-block;"> -->
<!-- 						<p class="cart-button-text" style="display: inline-block;">Cart</p> -->
<!-- 					</div> -->
<!-- 					<span class="badge bg-dark text-white ms-1 rounded-pill cart-button-badge">0</span> -->
<!-- 					</button> -->
<!-- 				</form> -->
<!--       		</div></li> -->
       
        </ul>
  		
  		<div class="justify-content-center align-items-center mr-2">
    		<c:if test="${not empty USERMODEL}">
    		
    		<!-- cart button -->
    		<ul class="navbar-nav justify-content-end align-items-end flex-grow-1 pe-3">
			<li class="nav-item mx-2">
			<div class="justify-content-end align-items-end">
	       		<form action="user-cart" class=" justify-content-end align-items-end">
					<button class="btn btn-outline-dark form-control me-2 cart-button" type="submit">
					<div class="cart-button-content align-items-center">
						<img src="./template/images/shopping-cart-outline.svg" class="cart-button-image" style="display: inline-block;">
						<p class="cart-button-text" style="display: inline-block;">Cart</p>
					</div>
					<span class="badge bg-dark text-white ms-1 rounded-pill cart-button-badge">0</span>
					</button>
				</form>
      		</div></li>
      		
<%-- 				<li class="nav-item mx-2"><a class="text-black mr-1" aria-current="page" href='<c:url value="/login?action=login"/>'>Welcome, <strong>${USERMODEL.lastName}</strong></a></li> --%>
<%-- 				<li class="nav-item mx-2"><a class="btn btn-secondary text-white text-decoration-none px-3 py-1 rounded-3" style="background-color: #232323;" href="<c:url value="/logout?action=logout"/>">Logout</a></li> --%>
				
				<li class="nav-item mx-2 dropdown">
                    <a class="nav-link user-profile-icon" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><img src="./template/images/user-circle.svg" class="user-profile-image" style="display: inline-block;"></a>
                    <ul class="dropdown-menu dropdown-menu-lg-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Welcome, <strong>${USERMODEL.lastName}</strong></a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li class="d-sm-flex justify-content-center"><a class="btn btn-secondary text-white text-decoration-none px-3 py-1 rounded-3" style="background-color: #232323;" href="<c:url value="/logout?action=logout"/>">Logout</a></li>
                        
                    </ul>
                </li>
				  		
       
        </ul>
			</c:if>
			
			<c:if test="${empty USERMODEL}">
				<a class=" text-black btn btn-light text-decoration-none px-3 py-1 rounded-3" aria-current="page" href='<c:url value="/login?action=login"/>'>Sign Up</a>
				<a class=" text-white btn btn-secondary text-decoration-none px-3 py-1 rounded-3" style="background-color: #232323;" aria-current="page" href='<c:url value="/login?action=login"/>'>Login</a>
			</c:if>	
    	</div>
    	
    	<div></div>
  		
          
  </div>
</nav>

<script>
import { Ripple, initMDB } from "mdb-ui-kit";

initMDB({ Ripple });
</script>