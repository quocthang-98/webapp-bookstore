<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="layoutSidenav_nav">
	<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
		<div class="sb-sidenav-menu">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link" href="index.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-tachometer-alt"></i>
						</div> Dashboard
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
						</div> Layouts
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
				</a>
					<div class="collapse" id="collapseLayouts"
						aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href='<c:url value="/admin-book?type=list"/>'>List of books</a> 
							<a class="nav-link" href="layout-sidenav-light.html">Light
								Sidenav</a>
						</nav>
					</div></li>

				<li class="nav-item collapsed">...</li>
				<li class="nav-item">...</li>

			</ul>
		</div>
		<div class="sb-sidenav-footer">
			<div class="small">Logged in as:</div>
			Start Bootstrap
		</div>
	</nav>
</div>
