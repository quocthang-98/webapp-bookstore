<%@include file="/common/taglib.jsp"%>
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
					
					<div class="col-md-6 mb-4">
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
					</div>
					<div></div>
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>Title</th>
								<th>Author ID</th>
								<th>Type ID</th>
								<th>Price</th>
								<th>Publisher ID</th>
								<th>Publication Date</th>
								<th>Description</th>
								<th>Stock</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Title</th>
								<th>Author ID</th>
								<th>Type ID</th>
								<th>Price</th>
								<th>Publisher ID</th>
								<th>Publication Date</th>
								<th>Description</th>
								<th>Stock</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${book.resultList}">
								<tr>
									<td>${item.title}</td>
									<td>${item.authorId}</td>
									<td>${item.typeId}</td>
									<td>${item.price}</td>
									<td>${item.publisherId}</td>
									<td>${item.publicationDate}</td>
									<td>${item.description}</td>
									<td>${item.stocks}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<input type="hidden" value="" id="typeId" name="typeId" />
				</div>
			</div>
		</form>
		<script>
			function myfunction(index) {
			    document.getElementById("typeId").value = index;
				document.getElementById("formSubmit").submit();
				
			}
		</script>
	</div>
</body>
</html>