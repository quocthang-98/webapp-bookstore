<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<c:url var="Carturl" value = "/admin-cart"/>
	<c:url var="APIurl" value = "/api-admin-cart"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body>
	<div class="container-fluid px-4">
		<form action="<c:url value='/admin-cart'/>" id="formSubmit"
			method="get">
			<h1 class="mt-4"><strong>CARTS MANAGER</strong></h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item active">Find carts.</li>
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
								<th>User ID - User Name</th>
								<th>Book ID - Book Name</th>
								<th>Quantity</th>
								<th>Order ID</th>
								<th>Is ordered</th>
								<th>Created date</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>User ID - User Name</th>
								<th>Book ID - Book Name</th>
								<th>Quantity</th>
								<th>Order ID</th>
								<th>Is ordered</th>
								<th>Created date</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${cart.resultList}">
								<%-- <c:set var="bookTitle" value="${item.name}" /> --%>
								<tr>
									<td>${item.id}</td>
									<td>${item.userId} - ${item.createdBy}</td>
									<td>${item.bookId} - ${item.bookModel.title}</td>
									<td>${item.quantity}</td>
									<td>${item.orderId}</td>
									<td><c:if test="${item.ordered == 1}">YES</c:if><c:if test="${item.ordered == 0}">NO</c:if></td>
									<td>${item.createdDate}</td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<input type="hidden" value="" id="type" name="type" />
				</div>
			</div>
		</form>
		<script>
		
	
		</script>
	</div>
</body>
</html>