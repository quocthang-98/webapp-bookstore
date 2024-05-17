<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of books</title>
</head>
<body>
	<h1 style="text-align: center; font-weight: bold; margin: 50px;">
		FIND YOUR FAVORITE, ALL IN ONE PLACE</h1>
		<form action="<c:url value='user-booklist'/>" id="formSubmit" method="GET">
		<section class="py-5">
			
			<div class="container">

				<div class="row">
					<div class="col-lg-3">
						<div class="sidebar">
							<div class="widget">
								<div class="widget-title widget-collapse">
									<h6>TYPE</h6>
									<!-- <a class="ml-auto" data-toggle="collapse" href=""
										role="button" aria-expanded="false" aria-controls="dateposted">
										<i class="fas fa-chevron-down"></i>
									</a> -->
								</div>
								<div class="collapse show" id="dateposted">
									<div class="widget-content">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="dateposted1"> <label
												class="custom-control-label" for="dateposted1">Books</label>
										</div>
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="dateposted2"> <label
												class="custom-control-label" for="dateposted2">Magazines</label>
										</div>
									</div>
								</div>
							</div>
							<div class="widget">
								<div class="widget-title widget-collapse">
									<h6>GENRE</h6>
									<!-- <a class="ml-auto" data-toggle="collapse" href=""
										role="button" aria-expanded="false" aria-controls="specialism">
										<i class="fas fa-chevron-down"></i>
									</a> -->
								</div>
								<div class="collapse show" id="specialism">
									<div class="widget-content">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="specialism1"> <label
												class="custom-control-label" for="specialism1">Novel</label>
										</div>
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="specialism2"> <label
												class="custom-control-label" for="specialism2">Thriller</label>
										</div>
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="specialism3"> <label
												class="custom-control-label" for="specialism3">Comedy</label>
										</div>
									</div>
								</div>
							</div>
							<div class="widget border-0">
								<div class="widget-add">
									<img class="img-fluid" src="images/add-banner.png" alt="">
								</div>
							</div>
						</div>

						<a href="user-home" class="btn btn-success"
							style="margin-top: 20px; margin-bottom: 8px;">Apply</a>
					</div>
					<div class="col-lg-9">
						<div class="row mb-4">
							<div class="col-12">
								<h6 class="mb-0">
									Showing 1-9 of <span class="text-primary">100 books</span>
								</h6>
							</div>
						</div>
						<div class="job-filter mb-4 d-sm-flex align-items-center">
							<div class="job-shortby ml-sm-auto d-flex align-items-center">
								<div class="form-group mb-0">
									<label class="justify-content-start mr-2">Sort by:</label>
									<div class="short-by">
										<button class="btn btn-light dropdown-toggle" type="button"
											id="dropdownMenuButton" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">---</button>
										<div class="dropdown-menu"
											aria-labelledby="dropdownMenuButton">
											<a class="dropdown-item" href="#">Lastest</a> <a
												class="dropdown-item" href="#">Rating</a> <a
												class="dropdown-item" href="#">Price</a>

										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">

							<c:forEach var="item" items="${book.resultList}">
								<div class="col-sm-6 col-lg-4 mb-4">
									<div class="card h-100">
										<!-- Sale badge-->
										<div class="badge bg-dark text-white position-absolute"
											style="top: 0.5rem; right: 0.5rem">Sale</div>
										<!-- Product image-->
										<img class="card-img-top"
											src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
											alt="..." />
										<!-- Product details-->
										<div class="card-body p-4">
											<div class="text-center">
												<!-- Product name-->
												<h5 class="fw-bolder">${item.title}</h5>
												<!-- Product price-->
												$25.00
											</div>
										</div>
										<!-- Product actions-->
										<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
											<div class="text-center">
												<a class="btn btn-outline-dark mt-auto" href="#">Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>

							<div class="container">
								<nav aria-label="Page navigation">
									<ul class="pagination" id="pagination"></ul>
								</nav>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<input type="hidden" value="" id="page" name="page"> 
		<input type="hidden" value="" id="limit" name="limit">
		</form>

	<script type="text/javascript">
		var currentPage = ${book.page};
		var totalPage = ${book.totalPages};
		var limit = 6;
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				startPage : currentPage,
				totalPages : totalPage,
				visiblePages : 3,
				onPageClick : function(event, page) {
					if (currentPage != page){
					$('#page').val(page);
					$('#limit').val(limit);
					$('#formSubmit').submit();
					}
				}
			}).on('page', function(event, page) {
				console.info(page + ' (from event listening)');
			});
		});
	</script>


</body>
</html>