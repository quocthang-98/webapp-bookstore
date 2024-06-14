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
			<div class="card">
				<div class="card-header">
					<h3 style="margin-top: 24px; text-align:center; font-weight: bolder;">SIGN IN</h3>
					<div class="d-flex justify-content-end social_icon">
						<h6>Login with</h6>
						<span><i class="fab fa-facebook-f"></i></span> <span>
							<i class="fab fa-google"></i></span>
					</div>
				</div>
				<div class="card-body">
					<%-- <form action="<c:url value='login'/>" method="POST"> --%>
					<form action="./login" id="formSubmit" method="POST">
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="Username"
								name="username">

						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
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
						Don't have an account?<a href="./signup" style="margin-left: 4px;">Sign Up</a>
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
				<!-- <div class="alert alert-danger">
					<strong>Danger!</strong> Indicates a dangerous or potentially
					negative action.
				</div> -->
			</div>
		</div>
	</div>
</body>
</body>
</html>