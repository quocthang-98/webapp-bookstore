<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url var="APIurl" value="/api-admin-author" />
<c:url var="Authorurl" value="/admin-author" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Author Details Editor</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-8 mx-auto rounded border p-4 m-4">
				<h2 class="text-center mb-5">Edit Author Data</h2>
				<form id="form">
					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Name*</label>
						<div class="col-sm-8">
							<input class="form-control" value="${author.name}" id="name"
								name="name" required>
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Nationality</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" value="${author.nationality}"
								id="nationality" name="nationality">
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Created by</label>
						<div class="col-sm-8">
							<input class="form-control" value="${author.createdBy}"
								id="createdBy" name="createdBy" disabled>
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Created date</label>
						<div class="col-sm-8">
							<input class="form-control" value="${author.createdDate}"
								id="createdDate" name="createdDate" disabled>
						</div>
					</div>

					<input type="hidden" value="${author.id}" id="id" name="id" />
				</form>
			</div>
		</div>
	</div>

	<script>


	$(document).ready(function() {
		var data = {};
		var formdata = $("#form").serializeArray();
		$.each(formdata, function(i, v) {
			data["" + v.name + ""] = v.value;
		});

		var id = $('#id').val();
		if (id == "" || id=="0") {
			create(data);
		} else {
			update(data);
		}
	});

		function create(data) {
			$.ajax({
				url : '${APIurl}',
				type : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : 'json',
				success : function(result) {
					window.location.href = "${Authorurl}?type=list";
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
					window.location.href = "${Authorurl}?type=list";
				},
				error : function(error) {
					console.log(error);
				}
			});
		}
	</script>
</body>
</html>