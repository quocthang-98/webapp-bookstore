<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<c:url var="Bookurl" value = "/admin-book"/>
	<c:url var="APIurl" value = "/api-admin-book"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body>
	<div class="container-fluid px-4">
		<form action="<c:url value='/admin-book'/>" id="formSubmit"
			method="get">
			<h1 class="mt-4"><strong>BOOK MANAGER</strong></h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item active">Find, add, edit, and delete your books here.</li>
			</ol>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> Database: <strong>online-bookstore</strong>
				</div>
				
				<div class="card-body">
				<div class="row">
					
				<div class="dropdown my-3">
				  <button class="btn btn-success dropdown-toggle dropdown-toggle-split" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				   Filter
				  </button>
				 	
				 	
				 	<div class="d-flex justify-content-center">
				 	 <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				    	<div class="row">
					      <div class="col-4">
					      	<h6 class="dropdown-header">Types</h6>
					        <c:forEach 	var="item" items="${type.getResultList()}">
					        <div class="form-check">
							  <input class="form-check-input filter-menu-check" type="checkbox" value="${item.id}" name="typecheckbox">
							  <label class="form-check-label" for="defaultCheck1">
							    ${item.name}
							  </label>
							</div>
							</c:forEach>
					      </div>	
					      
					      
					      
					      <div class="col-4">
					      	<h6 class="dropdown-header">Genres</h6>
					      	<c:forEach var="item" items="${genre.getResultList()}">
					        <div class="form-check">
							  <input class="form-check-input filter-menu-check" type="checkbox" value="${item.id}" name="genrecheckbox">
							  <label class="form-check-label" for="defaultCheck1">
							    ${item.name}
							  </label>
							</div>
							</c:forEach>
						</div>
						
						
						<div class="col-4">
					      	<h6 class="dropdown-header">Stocks</h6>
					        <div class="form-check">
							  <input class="form-check-input filter-menu-check" type="checkbox" value="" id="defaultCheck1">
							  <label class="form-check-label" for="defaultCheck1">
							    0
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input filter-menu-check" type="checkbox" value="" id="defaultCheck1">
							  <label class="form-check-label" for="defaultCheck1">
							    < 50
							  </label>
							</div>
					        <div class="form-check">
							  <input class="form-check-input filter-menu-check" type="checkbox" value="" id="defaultCheck1">
							  <label class="form-check-label" for="defaultCheck1">
							    > 100
							  </label>
							</div>

						</div>
					    
						
					      
					      </div>
					      <div class="d-flex justify-content-center mt-2 mb-2">
					      <a class="btn btn-outline-dark bg-light" type = "button" class="dropdown-item" id="filter">Filter</a>
					      </div>
					      <!-- <div class="col-4">
					      	<input type="submit" class="btn btn-light" value="Filter">
					    </div> -->
				  </div>
				 	
				 	</div>
				</div>
								
					<div class="col-md-3 mb-4">
						<a class="btn btn-outline-info" data-toggle="tooltip" title="Add new book" href='<c:url value="/admin-book?type=edit"/>'>
									<i class="fa-solid fa-square-plus"></i>
			
									</a>
					</div>
					</div>
					
					
					<div></div>
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>ID</th>
								<th>Title</th>
								<th>Author</th>
								<th>Type</th>
								<th>Genre</th>
								<th>Price</th>
								<th>Publisher</th>
								<th>Publication Date</th>
								<th>Description</th>
								<th>Stock</th>
								<th>Action <a>&nbsp</a><a>&nbsp</a><a>&nbsp</a></th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>Title</th>
								<th>Author</th>
								<th>Type</th>
								<th>Genre</th>
								<th>Price</th>
								<th>Publisher</th>
								<th>Publication Date</th>
								<th>Description</th>
								<th>Stock</th>
								<th>Action</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${book.resultList}">
								<c:set var="bookTitle" value="${item.title}" />
								<tr>
									<td>${item.id}</td>
									<td>${item.title}</td>
									<td>${item.authorName}</td>
									<td>${item.typeName}</td>
									<td>${item.genreName}</td>
									<td><p class="book-item-price">${item.price}</p></td>
									<td>${item.publisherName}</td>
									<td>${item.publicationDate}</td>
									<td><p class="book-item-desc" title="Description of ${item.title}">${item.description}</p></td>
									<td>${item.stocks}</td>
									<td>
									
									<c:url var="editURL" value="/admin-book">
										<c:param name = "type" value = "edit"/>
										<c:param name = "id" value="${item.id}"/>
									</c:url>
								<div style="text-align: center">
									<input type="hidden" value="${item.id}" id = "id" name="id"/>
									
									<a class="btn btn-outline-warning" data-toggle="tooltip" title="Edit item"  href='${editURL}' style="width: 42px;">
									<i class="fa-solid fa-pen-to-square"></i>
									</a>
									
									<a class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" title="Delete item" onclick = "myfunction2(${item.id}, '${item.title}')" style="width: 42px;">
									
									<i class="fa-solid fa-trash"></i>
									</a>
								</div>
									
									<!-- Delete Warning Popup Box -->
									<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
									  <div class="modal-dialog modal-dialog-centered">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="exampleModalLabel">Confirm Deletion</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
									        Are you sure you want to remove all data related to <strong><a id="bookTitle"></a></strong> (Book ID = <a id="bookID"></a>)? This action cannot be undone.
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
									        <button type="button" class="btn btn-danger" id="delete" onclick = "myfunction3()">Delete</button>
									      </div>
									    </div>
									  </div>
									</div>
									
									
									
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<input type="hidden" value="" id="type" name="type" />
					<input type="hidden" value="" id="typeList" name="typeList" />
					<input type="hidden" value="" id="genreList" name="genreList" />
				</div>
			</div>
		</form>
		<script>
		
		var data = {};
		
		function myfunction2(index, index2) {
			data["id"] = index;
	 	    document.getElementById("bookID").innerHTML = index; 
	 	   document.getElementById("bookTitle").innerHTML = index2;
		}
		
		function myfunction3(){
			$.ajax({
				url: '${APIurl}',
				type: 'DELETE',
				contentType: 'application/json',
				data: JSON.stringify(data),
				dataType: 'json',
				success: function (result){
					window.location.href = "${Bookurl}?type=list";
				},
				error: function (error){
					console.log(error);
				}
			});
		}
		$("#filter").click(
				function () {	
					var types = [];
					var genres = []; 
					$("input:checkbox[name=typecheckbox]:checked").each(function(){
					  	types.push($(this).val());
					});
					$("input:checkbox[name=genrecheckbox]:checked").each(function(){
					  	genres.push($(this).val());
					});
				    $('#typeList').val(types);
					$('#genreList').val(genres);
					$('#type').val('list');
					$('#formSubmit').submit();
					
					/* document.getElementById("formSubmit").submit(); */
					
				}
		
		);
		
		let x = document.querySelectorAll(".book-item-price");
	    for (let i = 0, len = x.length; i < len; i++) {
	        let num = Number(x[i].innerHTML)
	            .toLocaleString('en');
	        x[i].innerHTML = num;
	        x[i].classList.add("vnd-symbol");
	    }
		

		</script>
	</div>
</body>
</html>