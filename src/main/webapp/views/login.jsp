<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card" style="min-height: 550px; height: auto;">
				<div class="card-header">
				<div style="margin: 15px 0 0 15px;">
					<a href="./user-home" class="text-white"><i class="fa-solid fa-house" style="margin-right: 8px;"></i>Back to Home</a>
				</div>
					<h3 style="margin-top: 24px; text-align:center; font-weight: bolder;">SIGN IN</h3>
					<div class="d-flex justify-content-end social_icon">
						<h6>Login with</h6>
						<span><i class="fab fa-facebook-f"></i></span> <span>
							<i class="fab fa-google"></i></span>
					</div>
				</div>
				<div class="card-body">
					<%-- <form action="<c:url value='login'/>" method="POST"> --%>
					<form action="./login" id="formSubmit" method="POST"  style="min-width: 275px;">
						<div class="input-group signup-input-group form-group">
							<div class="input-group-prepend signup-form-input-prepend">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="Username"
								name="username">

						</div>
						<div class="input-group signup-input-group form-group">
							<div class="input-group-prepend signup-form-input-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control"
								placeholder="Password" name="password">
						</div>
						<div class="row align-items-center remember">
							<input type="checkbox">Remember Me
						</div>
						<div class="form-group">
							<input type="submit" value="Login"
								class="btn float-right login_btn">
						</div>
						<input type="hidden" value="login" name="action">
					</form>
				</div>
				<div class="card-footer">
					<div class="d-flex justify-content-center links">
						Don't have an account?<a href="./signup?type=display" style="margin-left: 4px;">Sign Up</a>
					</div>
					<div class="d-flex justify-content-center">
						<a href="#">Forgot your password?</a>
					</div>
				</div>
				<c:if test="${not empty message}">
				<div class="alert alert-${alert}" style="text-align: center;">
					<strong>${message}</strong> 
				</div>	
				</c:if>
			</div>
		</div>
	</div>
</body>
</body>
</html>