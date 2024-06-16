<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Homepage</title>
</head>

<body>
	<div class="container-fluid px-4">
		<h1 class="mt-4"><strong>ADMIN HOMEPAGE</strong></h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item active">Welcome to the administrator page. Here, you can view every data on your system.<br>Manage, edit, add, or delete one or many books, authors, publishers information and so on.</li>
		</ol>
		<h5 class="mt-4"><strong>QUICK MENU</strong></h5>
		<hr>
		<div class="row">
			<div class="col">
				<div class="card bg-primary text-white mb-4 admin-home-card">
					<div class="card-body fw-bold">BOOKS</div>
					<div class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href='./admin-book?type=list'>Title / Genre / Price / Author / Publisher / ...</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card bg-info text-white mb-4 admin-home-card">
					<div class="card-body fw-bold">AUTHORS</div>
					<div class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href='./admin-author?type=list'>Name / Nationality / ...</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card bg-success text-white mb-4 admin-home-card">
					<div class="card-body fw-bold">PUBLISHERS</div>
					<div class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href='./admin-publisher?type=list'>Name / Head Quarter Location / ... </a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<div class="card bg-danger text-white mb-4 admin-home-card">
					<div class="card-body fw-bold">COMMENTS</div>
					<div class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href='./admin-comment?type=list'>Comment ID / Content / User / Book / Likes / ...</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card bg-secondary text-white mb-4 admin-home-card">
					<div class="card-body fw-bold">CARTS</div>
					<div class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href='./admin-cart'>User / Book / Quantity / Order State / ...</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card bg-dark text-white mb-4 admin-home-card">
					<div class="card-body fw-bold">ORDERS</div>
					<div class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href='./admin-order'>User ID / Total Price / ...</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		
<!-- 		<div class="row"> -->
<!-- 			<div class="col-xl-6"> -->
<!-- 				<div class="card mb-4"> -->
<!-- 					<div class="card-header"> -->
<!-- 						<i class="fas fa-chart-area me-1"></i> Area Chart Example -->
<!-- 					</div> -->
<!-- 					<div class="card-body"> -->
<!-- 						<canvas id="myAreaChart" width="100%" height="40"></canvas> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</div>
</body>

</html>