<!DOCTYPE html>
<html lang="en">
	<head>
		<script src="resources/JS/jquery.js"></script> 
		<script src="resources/JS/bootstrap.min.js"></script>
		<link href="resources/CSS/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="resources/CSS/style.css" rel="stylesheet" media="screen">
	</head>
	<body class="container-fluid">
		<header class="navbar navbar-inverse navbar-fixed-top">
		  <div class="navbar-inner">
			<div class="container-fluid">
			  <a class="brand" href="#">Dost</a>
			  </div><!--/.nav-collapse -->
		  </div>
		</header>
		
		<div class="container">
			<form class="form-signin" METHOD="POST" action="conversations.jsp">
				<div class="well well-large row col-md-7 offset2 signinFormOuterContainer">
					<div class="col-md-5 offset1">
						<label>Username</label>
						<input type="text" class="input-block-level" placeholder="Username">
						<br/><br/>
						
						<label>Password</label>
						<input type="password" class="input-block-level" placeholder="Password">
						<a class="pull-right" alt="Forgot Password" href="forgotPassword.jsp">Forgot Password?</a>
						<label class="checkbox">
							<input type="checkbox" value="remember-me"> Remember me
						</label>
						<br/><br/>
						<button class="pull-right btn btn-large btn-primary" type="submit">Sign in</button>
						<a class="pull-left signupNowText" href="signupNow.jsp" alt="Signup for a new account">Don't have an account? SIGNUP NOW</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</form>
    </div> <!-- /container -->

	<footer></footer>
	</body>
</html>