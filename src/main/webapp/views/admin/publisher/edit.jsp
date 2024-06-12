<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url var="APIurl" value="/api-admin-publisher" />
<c:url var="Publisherurl" value="/admin-publisher" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Publisher Details Editor</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-8 mx-auto rounded border p-4 m-4">
				<h2 class="text-center mb-5">Edit Publisher Data</h2>
				<form id="form" action="<c:url value='/admin-publisher'/>" method="get">
					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Name*</label>
						<div class="col-sm-8">
							<input class="form-control <c:if test="${publisher.isNameNotOK == 1}"> is-invalid </c:if>" value="${publisher.name}" id="name"
								name="name">
								
							<c:if test="${publisher.isNameNull == 1}"> 
							<div class="invalid-feedback">
          						Name can not be null or blanked.
        					</div>
        					</c:if>
        					<c:if test="${publisher.isNameDublicate == 1}"> 
							<div class="invalid-feedback">
          						Name has already existed.
        					</div>
        					</c:if>
						</div>
					</div>
					

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Head Quarter Location</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" value="${publisher.headquarterLocation}"
								id="headquarterLocation" name="headquarterLocation">
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Created by</label>
						<div class="col-sm-8">
							<input class="form-control" value="${publisher.createdBy}"
								id="createdBy" name="createdBy" disabled>
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-4 col-form-label">Created date</label>
						<div class="col-sm-8">
							<input class="form-control" value="${publisher.createdDate}"
								id="createdDate" name="createdDate" disabled>
						</div>
					</div>

					<div class="row">
						<div class="offset-sm-4 col-sm-4 d-grid">
							<input type="hidden" value="validate" id="type" name="type" />
							
							<c:if test="${not empty publisher.id}">
							<input type="submit" class="btn btn-outline-primary"
								value = "Update" role="button"/>
							</c:if>
							
							<c:if test="${empty publisher.id}">
							<input type="submit" class="btn btn-outline-primary"
								value = "Create" role="button"/>
							</c:if>
						</div>

						<div class="col-sm-4 d-grid">
							<c:url var="bookURL2" value="/admin-publisher">
								<c:param name="type" value="list" />
							</c:url>
							<a type="submit" class="btn btn-outline-primary"
								href="${bookURL2}" role="button">Cancel</a>
						</div>
						
					</div>
					<input type="hidden" value="${publisher.id}" id="id" name="id" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>