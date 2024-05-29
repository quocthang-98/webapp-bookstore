<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url var="APIurl" value="/api-admin-book" />
<c:url var="Bookurl" value="/admin-book" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details Editor</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-8 mx-auto rounded border p-4 m-4">
				<h2 class="text-center mb-5">Edit Book Data</h2>
				<form id="form">
					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Title*</label>
						<div class="col-sm-8">
							<input class="form-control" value="${book.title}" id="title"
								name="title" required>
						</div>
					</div>
					
					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Author: </label>
						<div class="col-sm-8">
							<select class="form-select" aria-label="Default select example"
								name="authorId" id="authorId" >
								<option value="${book.authorId}" selected> </option>
								<%-- <c:if test="${empty book.authorId}">
									<option selected disabled>Select Author</option>
									<c:forEach var="item" items="${author.getResultList()}">
										<option value="${item.id}">${item.name}</option>
									</c:forEach>
								</c:if>
								<c:if test="${not empty book.authorId}">
									<option disabled>Select Author</option>
									<c:forEach var="item" items="${author.getResultList()}">
										<option value="${item.id}"
											<c:if test="${item.id == book.authorId }"> selected </c:if>>${item.name}</option>
									</c:forEach>

								</c:if> --%>
							</select>
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Type: </label>
						<div class="col-sm-8">
							<select class="form-select" aria-label="Default select example"
								name="typeId" id="typeId">
								<option value="${book.typeId}" selected> </option>
								<%-- <c:if test="${empty book.typeId}">
									<option selected disabled>Select type</option>
									<c:forEach var="item" items="${type.getResultList()}">
										<option value="${item.id}">${item.name}</option>
									</c:forEach>
								</c:if>
								<c:if test="${not empty book.typeId}">
									<option disabled>Select type</option>
									<c:forEach var="item" items="${type.getResultList()}">
										<option value="${item.id}"
											<c:if test="${item.id == book.typeId }"> selected </c:if>>${item.name}</option>
									</c:forEach>

								</c:if> --%>
							</select>
						</div>
					</div>
					
					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Genre: </label>
						<div class="col-sm-8">
							<select class="form-select" aria-label="Default select example"
								name="genreId" id="genreId">
								<option value="${book.genreId}" selected> </option>
								<%-- <c:if test="${empty book.genreId}">
									<option selected disabled>Select genre</option>
									<c:forEach var="item" items="${genre.getResultList()}">
										<option value="${item.id}">${item.name}</option>
									</c:forEach>
								</c:if>
								<c:if test="${not empty book.genreId}">
									<option disabled>Select genre</option>
									<c:forEach var="item" items="${genre.getResultList()}">
										<option value="${item.id}"
											<c:if test="${item.id == book.genreId }"> selected </c:if>>${item.name}</option>
									</c:forEach>

								</c:if> --%>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Stocks</label>
						<div class="col-sm-8">
							<input type="number" class="form-control" value="${book.stocks}"
								name="stocks" id="stocks">
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Price</label>
						<div class="col-sm-8">
							<input class="form-control" value="${book.price}" id="price"
								name="price">
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Picture</label>
						<div class="col-sm-8">
							<input type="url" class="form-control" value="${book.thumbnail}"
								id="thumbnail" name="thumbnail"
								placeholder="Insert the image link here">
						</div>
					</div>
					
					<div class="row mb-3">
						<label class="col-sm-4 col-form-label"> Publisher: </label>
						<div class="col-sm-8">
							<select class="form-select" aria-label="Default select example"
								name="publisherId" id="publisherId">
								<option value="${book.publisherId}" selected> </option>
								<%-- <c:if test="${empty book.publisherId}">
									<option selected disabled>Select publisher</option>
									<c:forEach var="item" items="${publisher.getResultList()}">
										<option value="${item.id}">${item.name}</option>
									</c:forEach>
								</c:if>
								<c:if test="${not empty book.publisherId}">
									<option disabled>Select publisher</option>
									<c:forEach var="item" items="${publisher.getResultList()}">
										<option value="${item.id}"
											<c:if test="${item.id == book.publisherId }"> selected </c:if>>${item.name}</option>
									</c:forEach>

								</c:if> --%>
							</select>
						</div>
					</div>
					
					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Publication date:</label>
						<div class="col-sm-8">
							<div class="datepicker date input-group">
								<input type="text" placeholder="Choose Date"
									class="form-control" id="publicationDateString" name="publicationDateString" value="${book.publicationDateString}">
								<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar"></i></span>
								</div>
							</div>
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Description</label>
						<div class="col-sm-8">
							<textarea class="form-control" id="description"
								name="description" rows="3">${book.description}</textarea>
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Created by</label>
						<div class="col-sm-8">
							<input class="form-control" value="${book.createdBy}"
								id="createdBy" name="createdBy" disabled>
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Created date</label>
						<div class="col-sm-8">
							<input class="form-control" value="${book.createdDate}"
								id="createdDate" name="createdDate" disabled>
						</div>
					</div>

					<%-- <div class="row">
						<div class="offset-sm-4 col-sm-4 d-grid">

							<c:if test="${not empty book.id}">
								<input type="button" class="btn btn-primary"
									id="btnUpdateOrCreate" value="Update" />
							</c:if>
							<c:if test="${empty book.id}">
								<input type="button" class="btn btn-primary"
									id="btnUpdateOrCreate" value="Create" />
							</c:if>
						</div>

						<div class="col-sm-4 d-grid">
							<c:url var="listURL" value="/admin-book">
								<c:param name="type" value="list" />
							</c:url>
							<a type="submit" class="btn btn-outline-primary"
								href="${listURL}" role="button">Cancel</a>
						</div>
					</div> --%>
					<input type="hidden" value="${book.id}" id="id" name="id" />
				</form>
			</div>
		</div>
	</div>

	<script>
		var editor = '';

		$(document).ready(function() {
			editor = CKEDITOR.replace('description');
			
			var data = {};
			var formdata = $("#form").serializeArray();
			$.each(formdata, function(i, v) {
				data["" + v.name + ""] = v.value;
			});

			data["description"] = CKEDITOR.instances.description
					.getData();
			var id = $('#id').val();
			if (id == "" || id=="0") {
				create(data);
			} else {
				update(data);
			}
		});

/* 		$(function() {
			$("#publicationDate").datepicker({
				language : "es",
				autoclose : true,
				format : "dd/mm/yyyy"
			});
		}); */

/* 		$("#btnUpdateOrCreate").click(
				function(e) {
					e.preventDefault();
					var data = {};
					var formdata = $("#form").serializeArray();
					$.each(formdata, function(i, v) {
						data["" + v.name + ""] = v.value;
					});

					data["description"] = CKEDITOR.instances.description
							.getData();
					data["publicationDate"] = $('#publicationDate').datepicker(
							'getDate');
					var id = $('#id').val();
					if (id == "") {
						create(data);
					} else {
						update(data);
					}
				}); */

		function create(data) {
			$.ajax({
				url : '${APIurl}',
				type : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : 'json',
				success : function(result) {
					window.location.href = "${Bookurl}?type=list";
				},
				error : function(error) {
					console.log(error);
				}
			});
		}

		function update(data) {
			$.ajax({
				url : '${APIurl}',
				type : 'PUT',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : 'json',
				success : function(result) {
					window.location.href = "${Bookurl}?type=list";
				},
				error : function(error) {
					console.log(error);
				}
			});
		}
	</script>
</body>
</html>