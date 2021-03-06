<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>

	<jsp:include page="includes/commonHeader.jsp"></jsp:include>

	<script>
	$(document).ready( function() {
	$('#forgot').click(function() {
		    var x = document.forms["loginForm"]["username"].value;
		    if (x == null || x == "") {
		        alert("Username must be filled out");
		        return false;
		    }
	    $('form').attr("action", "forgotPassword");  //change the form action
	    $('form').attr("method", "GET");  //change the form action
	    $('form').submit();  // submit the form
	});
	});
	</script>
	
		
	<body class="container-fluid  theme-default" onload='document.loginForm.username.focus();'>
			<jsp:include page="includes/header.jsp"></jsp:include>
		<div class="container row-fluid welcomePage">
			<div class="col-md-7">


				
			<form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
				<h3 class="col-md-offset-2 form-signin-heading">
					<p>Hi,</p>
					<p>Don't worry, whatever it is.. we can fix it together. <em>Get Started!</em></p>
				</h3>
				
				<div class="well well-large row  col-md-offset-2 signinFormOuterContainer">
					<div class="col-md-offset-1">
						<label>Username</label>
						<input type="text" required id="username" name="username" class="input-block-level form-control" placeholder="Username">
						<br/><br/>
						
						<label>Password</label>
						<input type="password" required id="password" name="password" class="input-block-level form-control" placeholder="Password">
						<a id="forgot" class="pull-right forgotPasswordText" alt="Forgot Password" href="#">Forgot Password?</a>
						<label class="checkbox">
							<input type="checkbox" value="remember-me"> Remember me
						</label>
						<br/><br/>
						<button class="pull-right btn btn-large btn-primary" type="submit">Sign in</button>
						<a class="pull-right signupNowText" href="signupNow" alt="Signup for a new account">Don't have an account? SIGNUP NOW</a>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</div>
				</div>
				<div class="clearfix"></div>
			</form>


			</div>
		</div>
		<jsp:include page="includes/commonFooter.jsp"></jsp:include>

</body>
</html>