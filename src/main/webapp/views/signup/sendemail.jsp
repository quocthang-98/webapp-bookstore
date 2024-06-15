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
		<div class="d-flex justify-content-center h-100" style="display: flex; margin: 70px 0 0 0;">
			<div class="card" style="width: 550px; height: 450px;">
			<div style="margin: 15px 0 0 15px;">
					<a href="#" onclick="backToPrev()" class="text-white">
					<i  class="fa-solid fa-arrow-left" style="margin-right: 8px;"></i>
					Back to Sign Up</a>
				</div>
				<div class="card-header">
					<h3 style="margin-top: 24px; text-align:center; font-weight: bolder;">SIGN UP - OTP</h3>
				</div>
				<div class="card-body">
				
				<div class="container">
							<div class="row ">
							<div class="col">
							<label class="col-form-label" style="color: yellow">An email has been sent to <strong>${User.email}</strong>. <br>Please enter the OTP below to verify your account.</label>
							</div> </div>
							<div class="row">
							
							<div class="col">
								<div class="input-group form-group">
									<input type="text" class="form-control" placeholder="OTP code"
								name="code" value="${User.code}">
								</div>
							</div>
							</div>
							
							<div class="row">
							
							<div class="col d-flex">
								<a href="#" onclick="refresh()" class="text-white" id="resend-otp-button">
								Resend OTP</a>
								<div id="countdown" style="margin-left: 4px;"></div>
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
								class="btn float-right login_btn" onclick="submit()">OK</button>
						</div>
				</div>
			</div>
		</div>
		
	</form>
	<script>
	function submit() {
		$('#formSubmit').submit();
	}
	
	function backToPrev() {
		  history.go(-1);
		}
	
	function refresh() {
		  history.go(0);
		}
	
	const link = document.getElementById('resend-otp-button');
	const countdownDisplay = document.getElementById('countdown');
	countdownDisplay.style.color = '#ffffff';
	
	const resetInterval = 15;
	let secondsLeft = resetInterval;
	countdownDisplay.textContent = '(' + secondsLeft + ')';

	
	let intervalId; // Declare intervalId outside the function for better control

	const startCountdown = () => {
	  secondsLeft = resetInterval; // Reset secondsLeft on each start
	  clearInterval(intervalId); // Clear any existing interval before starting a new one

	  intervalId = setInterval(() => {
	    secondsLeft--;
	    countdownDisplay.textContent = '(' + secondsLeft + ')';

	    if (secondsLeft === 0) {
	      clearInterval(intervalId);
	      link.style.pointerEvents = 'auto'; // Enable clicks
	      link.style.opacity = 1; // Reset opacity (optional)
	      countdownDisplay.textContent = '';
	    } else {
    		link.style.opacity = 0.5;
	      	link.style.pointerEvents = 'none'; // Disable clicks
	    }
	  }, 1000); // Update every second (1000 milliseconds)
	};

	// Start the countdown initially
	startCountdown();
	</script>
</body>



</html>