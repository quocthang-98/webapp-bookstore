<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<c:url var="Commenturl" value = "/admin-comment"/>
	<c:url var="APIurl" value = "/api-admin-comment"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body>
	<div class="container-fluid px-4">
		<form action="<c:url value='/admin-comment'/>" id="formSubmit"
			method="get">
			<h1 class="mt-4"><strong>COMMENTS MANAGER</strong></h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item active">Find, delete comments.</li>
			</ol>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> Database: <strong>online-bookstore</strong>
				</div>
				
				<div class="card-body">
				<div class="row">
					</div>
					
					<div></div>
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>ID</th>
								<th>Content</th>
								<th>User ID - User Name</th>
								<th>Book ID - Book Name</th>
								<th>Likes</th>
								<th>Created date</th>
								<th>Action <a>&nbsp</a><a>&nbsp</a><a>&nbsp</a></th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>Content</th>
								<th>User ID - User Name</th>
								<th>Book ID - Book Name</th>
								<th>Likes</th>
								<th>Created date</th>
								<th>Action</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${comment.resultList}">
								<%-- <c:set var="bookTitle" value="${item.name}" /> --%>
								<tr>
									<td>${item.id}</td>
									<td>${item.content}</td>
									<td>${item.userId} - ${item.userName}</td>
									<td>${item.bookId} - ${item.bookName}</td>
									<td>${item.likeNumber}</td>
									<td>${item.createdDate}</td>
									<td>
									
									<c:url var="editURL" value="/admin-author">
										<c:param name = "type" value = "edit"/>
										<c:param name = "id" value="${item.id}"/>
									</c:url>
								
									<a class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" title="Delete item" onclick = "myfunction2(${item.id})">
									
									<i class="fa-solid fa-trash"></i>
									</a>
								
									<input type="hidden" value="${item.id}" id = "id" name="id"/>
									
									
									<!-- Delete Warning Popup Box -->
									<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
									  <div class="modal-dialog modal-dialog-centered">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="exampleModalLabel">Confirm Deletion</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
									        Are you sure you want to remove all the things related to Comment ID = <a id="commentID"></a>? This action cannot be undone.
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
	 	    document.getElementById("commentID").innerHTML = index; 
		}
		
		function myfunction3(){
			$.ajax({
				url: '${APIurl}',
				type: 'DELETE',
				contentType: 'application/json',
				data: JSON.stringify(data),
				dataType: 'json',
				success: function (result){
					window.location.href = "${Commenturl}";
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