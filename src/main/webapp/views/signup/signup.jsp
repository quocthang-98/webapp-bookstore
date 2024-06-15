<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
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
		<div class="d-flex justify-content-center align-items-center h-100" style="overflow: hidden;">
			<div class="card" style="width: 550px; min-height: 680px; height: auto; display: flex; margin: 25px 0 0 0 ;">
				<div style="margin: 15px 0 0 15px;">
					<a href="./user-home" class="text-white"><i class="fa-solid fa-house" style="margin-right: 8px;"></i>Back to Home</a>
				</div>
				<div class="card-header" style="padding-top: 0; padding-bottom: 0;">
					<h3 style="margin-top: 24px; text-align:center; font-weight: bolder;">SIGN UP</h3>
				</div>
				<div class="card-body">
				
				<div class="container">
							<div class="row ">
							<div class="col">
								<div class="input-group signup-input-group form-group">
									<div class="input-group-prepend signup-form-input-prepend">
										<span class="input-group-text"><i class="fa-solid fa-f"></i></span>
									</div>
									<input type="text" class="form-control" placeholder="First Name*" name="firstName" value="${User.firstName}">
					
								</div>
							</div>
							</div>
							
							<div class="row ">
							<div class="col">
								<div class="input-group signup-input-group form-group">
									<div class="input-group-prepend signup-form-input-prepend">
										<span class="input-group-text"><i class="fa-solid fa-l"></i></span>
									</div>
									<input type="text" value="${User.lastName}" class="form-control <c:if test="${User.isLastNameNotOK == 1}"> is-invalid </c:if>" placeholder="Last Name*" name="lastName"	>
								<c:if test="${User.isLastNameNull == 1}"> 
								<div class="invalid-feedback">
          						LastName can not be blanked!
        						</div>
        						</c:if>
								</div>
								</div>
							</div>
							
						
							<div class="row ">
							<div class="col">
							<div class="input-group signup-input-group form-group">
									<div class="input-group-prepend signup-form-input-prepend">
										<span class="input-group-text"><i class="fa-regular fa-envelope"></i></span>
									</div>
									<input type="text" class="form-control <c:if test="${User.isEmailNotOK == 1}"> is-invalid </c:if>" placeholder="Email*" name="email" value="${User.email}">
								<c:if test="${User.isEmailNull == 1}"> 
								<div class="invalid-feedback">
          						Email can not be blanked!
        						</div>
        						</c:if>
        						<c:if test="${User.isEmailDublicate == 1}"> 
								<div class="invalid-feedback">
          						This email has been used!
        						</div>
        						</c:if>
        						<c:if test="${User.isEmailInvalid == 1}"> 
								<div class="invalid-feedback">
          						This email is invalid! Can not send message to this email!
        						</div>
        						</c:if>
								</div>	
								</div> </div>
								
							<div class="row ">
							<div class="col">
								<div class="input-group signup-input-group form-group">
									<div class="input-group-prepend signup-form-input-prepend">
										<span class="input-group-text"><i class="fa-solid fa-map-pin"></i></span>
									</div>
									<input type="text" class="form-control" placeholder="Address" name="address" value="${User.address}">
								</div>
								</div></div>
								
					<div class="row ">
							<div class="col">
								<div class="input-group signup-input-group form-group">
									<div class="input-group-prepend signup-form-input-prepend">
										<span class="input-group-text"><i class="fa-solid fa-phone"></i></span>
									</div>
									<input type="text" class="form-control" placeholder="Phone Number*" name="tel" value="${User.tel}">
								</div>
								</div></div>
								
					<div class="row ">
						<div class="col">
					<div style="margin: 12px 0 12px 0;">
					</div>
					</div></div>
					
							<div class="row ">
							<div class="col">
								<div class="input-group signup-input-group form-group">
									<div class="input-group-prepend signup-form-input-prepend">
								<span class="input-group-text"><i class="fa-solid fa-user"></i></span>
							</div>
							<input type="text" class="form-control <c:if test="${User.isUserameNotOK == 1}"> is-invalid </c:if>" placeholder="Username*" name="username" value="${User.username}">
								<c:if test="${User.isUsernameNull == 1}"> 
								<div class="invalid-feedback">
          						Username can not be blanked!
        						</div>
        						</c:if>
        						<c:if test="${User.isUsernameDublicate == 1}"> 
								<div class="invalid-feedback">
          						This username has been used!
        						</div>
        						</c:if>
						</div></div></div>
						
						
						<div class="row ">
							<div class="col">
						<div class="input-group signup-input-group form-group">
									<div class="input-group-prepend signup-form-input-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control <c:if test="${User.isPasswordNotOK == 1}"> is-invalid </c:if>" id="main-password" placeholder="Password*" name="password" value="${User.password}">
							<c:if test="${User.isPasswordNull == 1}"> 
								<div class="invalid-feedback">
          						Please enter the password!
        						</div>
        					</c:if>
        					<c:if test="${User.isPasswordUnvalidated == 1}"> 
								<div class="invalid-feedback">
          						The password must have at least 6 characters including alphabets, numbers and special characters!
        						</div>
        					</c:if>
						</div> </div> </div>
						
						<div class="row ">
							<div class="col">

						<div class="input-group signup-input-group form-group">
									<div class="input-group-prepend signup-form-input-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control" id="cf-password" placeholder="Re-enter Password*" value="${User.password}">
						</div>
						</div>
						</div>
						
						<div class="row ">
						<div class="col">
							<div class="alert alert-danger" style="text-align: center; display: none;" id="alert">
								<strong>Password does not match!</strong> 
							</div>	
						</div>
						</div>
						
						</div>
				</div>
				<input type="hidden" value="validate" id="type" name="type" />
					<div class="form-group m-auto" style="margin-bottom: 25px !important;">

							<button type="button" class="btn float-right login_btn" onclick="matchPassword()">Create</button>
						</div>

						<input type="hidden" value="login" name="action">
						
						<div class="card-footer">
					<div class="d-flex justify-content-center links">
						Already have an account?<a href="./login?action=login" style="margin-left: 4px;">Log In</a>
					</div>
				</div>
				</div>
				
			</div>
		</div>
	</form>
	<script>
	function matchPassword() {
		let p1 = document.getElementById("main-password").value;
		let p2 = document.getElementById("cf-password").value;
		
		let msg = document.getElementById("alert");
		
		if(p1.length != 0) {
			if (p1 == p2) {
				$('#formSubmit').submit();
			}
			else {
				msg.style.display = 'block';
			}
		}
	}
	</script>
</body>

</html>