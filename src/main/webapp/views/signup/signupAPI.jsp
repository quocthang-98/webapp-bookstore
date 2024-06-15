<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-user" />
<c:url var="Signupurl" value="/signup" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body style="overflow: hidden;">
	<form action="<c:url value='/signup'/>" id="formSubmit"
			method="get">
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card" style="width: 550px; height: 750px;">
				<div class="card-header">
					<h3 style="margin-top: 24px; text-align:center; font-weight: bolder;">SIGN UP</h3>
				</div>
				<div class="card-body">
				
				<div class="container">
							<div class="row ">
							<div class="col">
							<label class="col-form-label" style="color: yellow">An email has sent to your email, please input the OTP code!</label>
							</div> </div>
							<div class="row ">
				
							<div class="row ">
							<div class="col">
								<div class="input-group form-group">
									<input type="text" class="form-control" placeholder="OTP code"
								name="code" value="${User.code}">
								</div>
							</div>
							</div>
						
						</div>
				</div>
				<input type="hidden" value="checkEmail" id="type" name="type" />
					<div class="form-group m-auto" style="margin-bottom: 25px !important;">

							<button type="button"
								class="btn float-right login_btn" onclick="submit()" disabled>Check</button>
						</div>
						<input type="hidden" class="form-control" placeholder="First Name"
								name="firstName" value="${User.firstName}">
						<input type="hidden" class="form-control" placeholder="Last Name"
								name="lastName" value="${User.lastName}">
						<input type="hidden" class="form-control" placeholder="Email"
								name="email" value="${User.email}">
						<input type="hidden" class="form-control" placeholder="Address"
								name="address" value="${User.address}">
						<input type="hidden" class="form-control" placeholder="Phone Number"
								name="tel" value="${User.tel}">
						<input type="hidden" class="form-control"
								placeholder="Username" name="username" value="${User.username}">
						<input type="hidden" class="form-control" id="main-password"
								placeholder="Password" name="password" value="${User.password}">		
				</div>
			</div>
		</div>
		
	</form>
	<script>
	$(document).ready(function() {
		var data = {};
		var formdata = $("#formSubmit").serializeArray();
		$.each(formdata, function(i, v) {
			data["" + v.name + ""] = v.value;
		});
			create(data);
	});
	
	function create(data) {
		$.ajax({
			url : '${APIurl}',
			type : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(data),
			dataType : 'json',
			success : function(result) {
				window.location.href = "${Signupurl}?type=success";
			},
			error : function(error) {
				console.log(error);
			}
		});
	}
	</script>
</body>



</html>