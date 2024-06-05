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
					<div class="col-lg-3 all-book-filter-col" >
						<div class="booklist-filter-container">
							<h6>TYPE</h6>
							
							<input type="checkbox" id="type-option-all" class="types-filter-group filter-checkbox" onchange="checkAllTypes(this)">
							<label for="type-option-all">All</label>
							<br>
							
							<input type="checkbox" id="type-option-books" class="types-filter-group filter-checkbox">
							<label for="type-option-books">Books</label>
							<br>
							
							<input type="checkbox" id="type-option-magazines" class="types-filter-group filter-checkbox">
							<label for="type-option-magazines">Magazines</label>
							<br>
							
							<input type="checkbox" id="type-option-newspapers" class="types-filter-group filter-checkbox">
							<label for="type-option-newspapers">Newspapers</label>
							<br>
						</div>
						<br>
						
						<div class="booklist-filter-container">
							<h6>GENRES</h6>
							
							<input type="checkbox" id="genres-option-all" class="genres-filter-group filter-checkbox" onchange="checkAllGenres(this)">
							<label for="type-option-all">All</label>
							<br>
							
							<input type="checkbox" id="genres-option-comedy" class="genres-filter-group filter-checkbox">
							<label for="type-option-books">Comedy</label>
							<br>
							
							<input type="checkbox" id="genres-option-horror" class="genres-filter-group filter-checkbox">
							<label for="type-option-magazines">Horror</label>
							<br>
							
							<input type="checkbox" id="genres-option-thriller" class="genres-filter-group filter-checkbox">
							<label for="type-option-newspapers">Thriller</label>
							<br>
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
										<!-- Product image-->
										<img class="card-img-top"
											src="<c:url value='${item.thumbnail}' />"
											 />
										<!-- Product details-->
										<div class="card-body p-4">
											<div class="text-center">
												<!-- Product name-->
												<h5 class="fw-bolder">${item.title}</h5>
												<!-- Product price-->
												${item.price} VND
											</div>
										</div>
										<!-- Product actions-->
										<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
											<div class="text-center">
											<a class="btn btn-outline-dark mt-auto" href='<c:url value="/user-bookdetail?id=${item.id}"/>'>View detail</a> 
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
	
	<script type="text/javascript">
		var checkboxesTypes = document.querySelectorAll("input[type='checkbox'].types-filter-group");
		var checkboxesGenres = document.querySelectorAll("input[type='checkbox'].genres-filter-group");
		
		function checkAllTypes(myCheckbox) {
			if (myCheckbox.checked == true) {
				checkboxesTypes.forEach(function(checkbox){
					checkbox.checked = true;
				});
			}
			else {
				checkboxesTypes.forEach(function(checkbox){
					checkbox.checked = false;
				});
			}
		}
		
		function checkAllGenres(myCheckbox) {
			if (myCheckbox.checked == true) {
				checkboxesGenres.forEach(function(checkbox){
					checkbox.checked = true;
				});
			}
			else {
				checkboxesGenres.forEach(function(checkbox){
					checkbox.checked = false;
				});
			}
		}
	</script>


</body>
</html>