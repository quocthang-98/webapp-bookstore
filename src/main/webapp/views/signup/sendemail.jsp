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
		<div class="d-flex justify-content-center h-100">
			<div class="card" style="width: 550px; height: 450px;">
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
							
							<div class="col">
								<div class="input-group form-group">
									<input type="text" class="form-control" placeholder="OTP code"
								name="code" value="${User.code}">
								</div>
							</div>
							</div>
							
						<div class="row ">
						<div class="col">
							<div class="alert alert-danger" style="text-align: center; display: <c:if test="${User.messageWrongCode != 1}">none</c:if><c:if test="${User.messageWrongCode == 1}">block</c:if>;" id="alert">
								<strong>Wrong code!</strong> 
							</div>	
						</div>
						</div>
						
						</div>
				</div>
				<input type="hidden" value="checkEmail" id="type" name="type" />
					
						
					<div class="form-group m-auto" style="margin-bottom: 25px !important;">
	
							<button type="button"
								class="btn float-right login_btn" onclick="submit()">Check</button>
						</div>
				</div>
			</div>
		</div>
		
	</form>
	<script>
	function submit() {
		$('#formSubmit').submit();
	}
	</script>
</body>



</html>