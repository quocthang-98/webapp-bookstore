<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body style="overflow: hidden;">
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card" style="width: 750px; height: 550px;">
				<div class="card-header">
					<h3 style="margin-top: 24px; text-align:center; font-weight: bolder;">SIGN UP</h3>
					<div class="d-flex justify-content-end social_icon">
						<h6>Login with</h6>
						<span><i class="fab fa-facebook-f"></i></span> <span>
							<i class="fab fa-google"></i></span>
					</div>
				</div>
				<div class="card-body">
					<form action="=" id="formSubmit" method="POST">
					<div class="container " style="align-content: start; height: 100px;">
						<div class="row justify-content-center">
							<div class="col-sm-auto">
								<div class="input-group form-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa-solid fa-f"></i></span>
									</div>
									<input type="text" class="form-control" placeholder="First Name"
								name="firstname">
								</div>
								
								<div class="input-group form-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa-solid fa-l"></i></span>
									</div>
									<input type="text" class="form-control" placeholder="Last Name"
								name="lastname">
								</div>
							</div>
							
							
						<div class="col-sm-auto">
							<div class="input-group form-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa-regular fa-envelope"></i></span>
									</div>
									<input type="text" class="form-control" placeholder="Email"
								name="email">
								</div>

								<div class="input-group form-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa-solid fa-map-pin"></i></span>
									</div>
									<input type="text" class="form-control" placeholder="Address"
								name="address">
								</div>
								
								<div class="input-group form-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa-solid fa-phone"></i></span>
									</div>
									<input type="text" class="form-control" placeholder="Phone Number"
								name="tel">
								</div>
							</div>
						</div>
					</div>
					
				<div class="container align-items-center">		
					<div class="row justify-content-center" style="width: 560px;">
								<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa-solid fa-user"></i></span>
							</div>
							<input type="text" class="form-control"
								placeholder="Username" name="username">
						</div>
						
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control" id="main-password"
								placeholder="Password" name="password">
						</div>
						
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control" id="cf-password"
								placeholder="Re-enter Password" name="password">
						</div>
						
						</div>
							</div>
					</div>
					
					
						
					<div class="form-group m-auto" style="margin-bottom: 25px !important;">
						<p id="password-msg" style="color: white; position: absolute; top: 500px; right: 20px;"></p>
							<input type="submit" value="Create"
								class="btn float-right login_btn" onclick="matchPassword()">
						</div>
						
							<input type="button" value="CheckPass"
								class="btn float-right login_btn" onclick="matchPassword()">
							</div>
						<input type="hidden" value="login" name="action">
					</form>
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
	
	<script>
	function matchPassword() {
		let p1 = document.getElementById("main-password").value;
		let p2 = document.getElementById("cf-password").value;
		console.log(p1, p2);
		let msg = document.getElementById("password-msg")
		
		if(p1.length != 0) {
			if (p1 == p2) {
				msg.textContent = "Password matches."
			}
			else {
				msg.textContent = "Password doesn't match."
			}
		}
	}
	</script>
</body>



</html>