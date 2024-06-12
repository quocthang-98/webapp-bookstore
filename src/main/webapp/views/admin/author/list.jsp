<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<c:url var="Authorurl" value = "/admin-author"/>
	<c:url var="APIurl" value = "/api-admin-author"/>
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
			<h1 class="mt-4">AUTHOR MANAGER</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item active">Find, add, edit, and delete authors.</li>
			</ol>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> Database: <strong>online-bookstore</strong>
				</div>
				
				<div class="card-body">
				<div class="row">
					
								
					<div class="col-md-3 mb-4">
						<a class="btn btn-outline-info" data-toggle="tooltip" title="Add new author" href='<c:url value="/admin-author?type=edit"/>'>
									<i class="fa-solid fa-square-plus"></i>
			
									</a>
					</div>
					</div>
					
					
					<div></div>
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Nationality</th>
								<th>Action <a>&nbsp</a><a>&nbsp</a><a>&nbsp</a></th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Nationality</th>
								<th>Action</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${author.resultList}">
								<c:set var="bookTitle" value="${item.name}" />
								<tr>
									<td>${item.id}</td>
									<td>${item.name}</td>
									<td>${item.nationality}</td>
									<td>
									
									<c:url var="editURL" value="/admin-author">
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
									
									
									<!-- Delete Warning Popup Box -->
									<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
									  <div class="modal-dialog modal-dialog-centered">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="exampleModalLabel">Confirm Deletion</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
									        Are you sure you want to remove all the things related to Author ID = <a id="authorID"></a>? This action cannot be undone.
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
				</div>
			</div>
		</form>
		<script>
		
		var data = {};
		
		function myfunction2(index) {
			data["id"] = index;
	 	    document.getElementById("authorID").innerHTML = index; 
		}
		
		function myfunction3(){
			$.ajax({
				url: '${APIurl}',
				type: 'DELETE',
				contentType: 'application/json',
				data: JSON.stringify(data),
				dataType: 'json',
				success: function (result){
					window.location.href = "${Authorurl}?type=list";
				},
				error: function (error){
					console.log(error);
				}
			});
		}
		

		</script>
	</div>
</body>
</html>