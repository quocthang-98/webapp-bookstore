<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light shadow p-3 mb-5 header-navbar" id="my-header-navbar">
  <div class="container header-container">
  	<!-- brand name -->
    <a class="navbar-brand fs-4" href="./user-home">PT BOOKSTORE</a>
    
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
        <ul class="navbar-nav justify-content-start flex-grow-1 pe-3" style="padding-right: 0 !important;">
          <li class="nav-item mx-2">
            <a class="nav-link active nav-link-header text-center" aria-current="page" href="./user-home">Home</a>
          </li>
          
          <li class="nav-item mx-2 dropdown">
            <a class="nav-link dropdown-toggle nav-link-dropdown nav-link-header text-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Browse</a>
            <ul class="dropdown-menu header-dropdown-menu" style="padding-bottom: 0px;">
              <li><a class="dropdown-item" href="<c:url value="/user-booklist?page=1&limit=6"/>"><strong>All Books</strong></a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="./user-home#section-whatsnew">New Arrivals</a></li>
              <li><a class="dropdown-item" href="./user-home#section-bookoftheday">Today's Pick</a></li>
                            <li><a class="dropdown-item dropdown-item-end" href="#">Top Rated</a></li>
            </ul>
          </li>
          
          <li class="nav-item mx-2">
            <a class="nav-link nav-link-header text-center" aria-current="page" href="#">Support</a>
          </li>
          
          <li class="nav-item mx-2">
            <a class="nav-link nav-link-header text-center" aria-current="page" href="#">About</a>
          </li>
          
          <li class="nav-item mx-2">
			<div class="justify-content-end align-items-end mw-100">
	       		<form action="<c:url value='user-booklist'/>" id="formSubmit" method="GET" class="form-control-sm" style="width: 300px; padding-top: 2px;">
					<div class="input-group ">
					  <input type="text" class="form-control search-bar" id="searchKeyword" style="background-color: rgba(0, 0, 0, 0.02); height: 100%;" placeholder="I'm searching for..." aria-describedby="search-addon" name="keyWord" id="keyWord" value="${book.keyWord}"/>
					  <a type="submit" class="btn btn-dark search-btn" style="height: 50%;" onClick="searchFunction()" data-mdb-ripple-init id="searchbar"><img src="./template/images/iconSearch.svg" style="display: inline-block; filter: invert(1);"></a>
					</div>
					 <input type="hidden" value="" id="page" name="page"> 
					<input type="hidden" value="" id="limit" name="limit">
					<input type="hidden" value="${book.typeListString}" id="typeList" name="typeList" /> 
					<input type="hidden" value="${book.genreListString}" id="genreList" name="genreList" />
					<input type="hidden" value="${book.sortBy}" id="sortBy" name="sortBy"/>
					<input type="hidden" value="${book.keyWord}" id="keyWord" name="keyWord" />
				</form>
      		</div>
			</li>
        </ul>
    	</div>
  		</div>
        </ul>
  		
  		<div class="justify-content-center align-items-center mr-2 ">
    		<c:if test="${not empty USERMODEL}">
    		
    		<!-- cart button -->
    		<ul class="navbar-nav justify-content-center align-items-center flex-nowrap header-user-button-wrapper">
			<li class="nav-item mx-2">
			<div class="justify-content-end align-items-end">
	       		<form action="user-cart" class=" justify-content-end align-items-end">
					<button class="btn btn-outline-dark form-control me-2 cart-button" type="submit">
					<div class="cart-button-content align-items-center">
						<img src="./template/images/shopping-cart-outline.svg" class="cart-button-image" style="display: inline-block;">
						<p class="cart-button-text" style="display: inline-block;">Cart</p>
					</div>
					<span class="badge bg-dark text-white ms-1 rounded-pill cart-button-badge">${CARTNUMBER}</span>
					</button>
				</form>
      		</div></li>
				
				<li class="nav-item mx-2 dropdown">
                    <a class="nav-link user-profile-icon" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><img src="./template/images/user-circle.svg" class="user-profile-image" style="display: inline-block;"></a>
                    <ul class="dropdown-menu dropdown-menu-lg-end nav-link-dropdown" aria-labelledby="navbarDropdown" style="right: 0; left: -110px;">
                        <li><a class="dropdown-item" href="#!">Welcome, <strong>${USERMODEL.lastName}</strong></a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li class="d-sm-flex justify-content-center"><a class="btn btn-secondary text-white text-decoration-none px-3 py-1 rounded-3" style="background-color: #232323;" href="<c:url value="/logout?action=logout"/>">Logout</a></li>
                        
                    </ul>
                </li>
        </ul>
			</c:if>
			
			<c:if test="${empty USERMODEL}">
				

		<ul class="navbar-nav justify-content-center align-items-center header-logging-button-wrapper d-flex" style="width: 100%; margin: 0;">
			<li class="nav-item mx-2">
			<a class=" text-black btn btn-outline-light text-decoration-none px-3 py-1 rounded-3 header-logging-button" style="width: 90px; border-color: black;"aria-current="page" href='<c:url value="/login?action=login"/>'>Sign Up</a>
			</li>
			
			<li class="nav-item mx-2">
			<a class=" text-white btn btn-secondary text-decoration-none px-3 py-1 rounded-3 header-logging-button" style="background-color: #232323; display: block; width: 90px;" aria-current="page" href='<c:url value="/login?action=login"/>'>Login</a>
			</li>
        </ul>
			</c:if>	
    	</div>
    	  		
          
  </div>
</nav>

<div class="header-navbar-spacer justify-content-center align-items-center d-flex"></div>

<script>
import { Ripple, initMDB } from "mdb-ui-kit";

initMDB({ Ripple });
</script>

<script type="text/javascript">	
	var lastScrollTop = 0;
	myNavbar = document.getElementById("my-header-navbar");
	window.addEventListener("scroll", function() {
		var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
		if (scrollTop > lastScrollTop) {
			myNavbar.style.top = "-100px";
		} else {
			myNavbar.style.top = "0";
		}
		lastScrollTop = scrollTop;
	})
	
	const searchBar = document.getElementById('searchKeyword');
	const searchBtn = document.querySelector('.search-btn');
	
	$('#searchKeyword').keypress(function(event) {
		  if (event.keyCode === 13) {
		    searchFunction();
		  }
	});
	
	function searchFunction() {
		$('#page').val(1);
		$('#limit').val(6);
		$('#typeList').val("");
		$('#genreList').val("");
		$('#sortBy').val("");
		$('#formSubmit').submit();
	}
	
</script>
