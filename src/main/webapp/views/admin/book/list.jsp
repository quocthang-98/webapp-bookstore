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
			<h1 class="mt-4">Dashboard</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item active">Dashboard</li>
			</ol>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> DataTable Example
				</div>
				<div class="card-body">
					<div class="row">
                    <div class="col-md-3 mb-4">
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							data-bs-toggle="dropdown" aria-expanded="false">
							Types of book</button>
						<ul class="dropdown-menu dropdown-menu-dark">
							<c:forEach var="item" items="${type.resultList}">
							<li><a type = "button" onclick = "myfunction(${item.id})" class="dropdown-item">${item.name}</a></li>
							</c:forEach>
							
						</ul>
					</div>	
					</div>
					
					<div class="col-md-3 mb-4">
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							data-bs-toggle="dropdown" aria-expanded="false">
							Dropdown button</button>
						<ul class="dropdown-menu dropdown-menu-dark">
							<li><a class="dropdown-item active" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Separated link</a></li>
						</ul>
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
									<td>${item.price}</td>
									<td>${item.publisherName}</td>
									<td>${item.publicationDate}</td>
									<td>${item.description}</td>
									<td>${item.stocks}</td>
									<td>
									
									<c:url var="editURL" value="/admin-book">
										<c:param name = "type" value = "edit"/>
										<c:param name = "id" value="${item.id}"/>
									</c:url>
								
									<a class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" title="Delete item" onclick = "myfunction2(${item.id})">
									
									<i class="fa-solid fa-trash"></i>
									</a>
									
									
									
									<input type="hidden" value="${item.id}" id = "id" name="id"/>
									
									<a class="btn btn-outline-warning" data-toggle="tooltip" title="Edit item"  href='${editURL}'>
									<i class="fa-solid fa-pen-to-square"></i>
									</a>
									<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
									  <div class="modal-dialog modal-dialog-centered">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="exampleModalLabel">Confirm Deletion</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
									        Are you sure you want to remove all the things related to Book ID = <a id="bookID"></a>? This action cannot be undone.
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
					<input type="hidden" value="" id="typeId" name="typeId" />
					<input type="hidden" value="" id="type" name="type" />
				</div>
			</div>
		</form>
		<script>
		
		var data = {};
		
		function myfunction2(index) {
			data["id"] = index;
	 	    document.getElementById("bookID").innerHTML = index; 
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
		
		
			function myfunction(index) {
			    document.getElementById("typeId").value = index;
			    document.getElementById("type").value = 'list';
				document.getElementById("formSubmit").submit();
				
			}
		</script>
	</div>
</body>
</html>