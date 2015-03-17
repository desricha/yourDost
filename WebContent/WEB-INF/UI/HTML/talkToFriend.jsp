<!DOCTYPE html>
<html lang="en">
	<jsp:include page="includes/commonHeader.jsp"></jsp:include>
	<body class="theme-default" >
		<jsp:include page="includes/header.jsp"></jsp:include>
		<script>
			$(document).ready(function(){
				
			});
		</script>
		
		<!-- 
		<div class="container row-fluid">
			<div class="col-md-7 message quotesBg">
				<div class="pageTop messageForQuotes">
					<h2 class="subHeading ">Hey, we are working to get this page up and running. </h2>
					<p class="subHeading">In the mean-time, why don't you check out <a href="${pageContext.request.contextPath}/faqs">Frequently Asked Questions</a>. It is a comprehensive list put together by experts.</p>
    			</div>
    			<ul class="stickyNote">
				    <li>
				      <a href="#">
				        <h2>Work in Progress</h2>
				      </a>
				    </li>
				  </ul>
    			
			</div>
		</div>
		-->
		
		 <div class="container  row-fluid ">
				
				<div class="col-md-11">
				<div class="pageTop">
					<h2 class="pageHeading">Talk To A Friend</h2>
					<div class="well">
						<div class="col-md-7 message_counselor">
							<p>Hi ${pageContext.request.userPrincipal.name},</p>
							<p>I am here for you. Just tell me what&rsquo;s on your mind and I will help you.
							   Believe me, even I have been in some situations myself and I know how hard it can get at times.
							   I can assure you, I am your friend - not a computer program and I am here to help you in any way I can.
							</p>
						</div>
						<script language="JavaScript" type="text/javascript" src="http://localhost:8800/webchat/jivelive.jsp"></script>
						<script>showButtonWithoutUI('demo@workgroup.richasingh-pc', 'username=${pageContext.request.userPrincipal.name}');</script>
						<iframe class="talkToFriendChatBox" width="100%" height="500" src="http://localhost:8800/webchat/start.jsp?workgroup=demo@workgroup.richasingh-pc&location=http://localhost:8800/dost/talkToFriend&noUI=true&username=${pageContext.request.userPrincipal.name}"> </iframe>	
					
						<div class="clearfix"></div>
					</div>
				</div>
				
				<div>
					<!-- <nav class="chat_nav navbar navbar-default col-md-6" role="navigation"" role="navigation">
					<div class="chat_container ">
						<ul class="nav navbar-nav chat_options">
						  <li class="active text_chat"><a href="#">Chat</a></li>
						  <li><a href="#">Virtual Room</a></li>
						  <li><a href="#">Call</a></li>
						  <li><a class="leaveMessage">Send Email</a></li>
						</ul>
						<div class="clearfix"></div>
						<div class="chat_display_area">
							<p>Can I really share with you?</p>
							
						</div>
						<div class="clearfix"></div>
						 <div class="">
							<div class="input-group">
							  <input type="text" class="form-control" placeholder="Tell me what are you thinking">
							  <span class="input-group-btn">
								<button class="btn btn-default" type="button">SEND</button>
							  </span>
							</div>
						 </div>
						 <div class="clearfix"></div>
					</div>
					</nav>
					-->
					
				</div>

				
			</div>
		<div class="clearfix"></div>	 
		<jsp:include page="includes/commonFooter.jsp"></jsp:include>
	</body>
</html>