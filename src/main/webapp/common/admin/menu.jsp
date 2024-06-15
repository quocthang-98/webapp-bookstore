<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="layoutSidenav_nav">
	<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
		<div class="sb-sidenav-menu" style="overflow-x: hidden;">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link" href="./admin-home">
						<div class="sb-nav-link-icon">
							<i class="fas fa-tachometer-alt"></i>
						</div> HOME
				</a></li>

				<li class="nav-item">
					<div class="sb-sidenav-menu-heading">Interface</div>
				</li>
				<li class="nav-item collapsed"><a class="nav-link collapsed"
					href="#" data-bs-toggle="collapse"
					data-bs-target="#collapseLayouts" aria-expanded="false"
					aria-controls="collapseLayouts">
						<div class="sb-nav-link-icon">
							<i class="fas fa-columns"></i>
						</div> MY SYSTEM
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
				</a>
					<div class="collapse" id="collapseLayouts"
						aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link admin-manager-option" href='<c:url value="/admin-book?type=list"/>'>&#9830; BOOKS</a> 
							<a class="nav-link admin-manager-option" href='<c:url value="/admin-author?type=list"/>'>&#9830; AUTHORS</a> 
							<a class="nav-link admin-manager-option" href='<c:url value="/admin-publisher?type=list"/>'>&#9830; PUBLISHERS</a> 
							<a class="nav-link admin-manager-option" href='<c:url value="/admin-comment?type=list"/>'>&#9830; COMMENTS</a> 
							<a class="nav-link admin-manager-option" href='<c:url value="/admin-cart"/>'>&#9830; CARTS</a> 
							<a class="nav-link admin-manager-option" href='<c:url value="/admin-order"/>'>&#9830; ORDERS</a> 
						</nav>
					</div></li>
				
				<li class="nav-item">
					<div class="sb-sidenav-menu-heading">My Website</div>
				</li>
				
				<li class="nav-item"><a class="nav-link" href="./user-home">
						<div class="sb-nav-link-icon">
							<i class="fa-solid fa-user"></i></i>
						</div> USER HOMEPAGE
				</a></li>
				
				

			</ul>
		</div>
		<div class="sb-sidenav-footer">
			<div class="small">Logged in as:</div>
			admin
		</div>
	</nav>
</div>

<script src="https://kit.fontawesome.com/b31709c2ba.js" crossorigin="anonymous"></script>
