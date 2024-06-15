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
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card" style="width: 550px; height: 300px;">
				<div class="card-header">
					<h3 style="margin-top: 24px; text-align:center; font-weight: bolder;">SIGN UP</h3>
				</div>
				<div class="card-body">
				
				<div class="container">
							
						<div class="row ">
						<div class="col">
							<div class="alert alert-success" style="text-align: center;" id="alert">
								<strong>Sign up successfully!</strong> 
							</div>	
						</div>
						</div>
						
						</div>
				</div>
				<input type="hidden" value="checkEmail" id="type" name="type" />
					
						
					<div class="form-group m-auto" style="margin-bottom: 25px !important;">

							<a type="button"
								class="btn float-right login_btn" href='<c:url value="/user-home"/>'>Home</a>
						</div>

						<input type="hidden" value="login" name="action">
						
				</div>
			</div>
		</div>

	<script>

	</script>
</body>



</html>