<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
	<jsp:include page="includes/commonHeader.jsp"></jsp:include>
	<script>
		$("document").ready(function() {
			var username = window.location.href.split("=");
			var userId = username[1].split("+");
			
			$("h2.patientName").text(userId[0]);
			
			$.getJSON('/dost/api/user/'+userId[1]+'/patienthistory/all', function(messages) {
				$(".loading").hide();
				for (var i in messages) {
					var entry = messages[i];
					for(var s in entry) {
						// If messages only
						if(s.indexOf("C") < 0) {
							for (var j in entry) {
								var inner = entry[j];
								$(".conversations").append('<div class="categoryList"><h3 class="subject secondary_heading" id='+inner[0].messageId+'>'+inner[0].subject+'</h3>');
								$("#"+inner[0].messageId).after("<ul></ul></div>");						
								for(var k in inner) {
									$("#"+ inner[0].messageId).siblings("ul").append('<li class=" media each_conversation">'+
											'<div class="pull-left col-md-2">'+
												'<div class="patient_name"><strong>'+inner[k].sender.username+'</strong></div>'+
												'<div class="post_details">'+inner[k].sentDate +'</div>'+
											'</div>' +
											'<div class="media-body col-md-8">'+
													'<span>'+inner[k].content+'</span>'+
											'</div>'+
										'</li>');							
								}
							}
						}
						else {
							for (var j in entry) {
								var inner = entry[j];
								$(".conversations").append('<div class="categoryList"><h3 class="subject secondary_heading" id='+inner[0].messageId+'>'+'Chat' + j +'</h3>');
								$("#"+ inner[0].messageId).after("<ul></ul></div>");						
								for(var k in inner.userChats) {
									$("#"+ inner[0].messageId).siblings("ul").append('<li class=" media each_conversation">'+
											'<div class="pull-left col-md-2">'+
												'<div class="patient_name"><strong>'+ inner.userChats[k].toJIDResource +'</strong></div>'+
												'<div class="post_details">'+inner.userChats[k].sentDate +'</div>'+
											'</div>' +
											'<div class="media-body col-md-8">'+
													'<span>'+inner.userChats[k].body+'</span>'+
											'</div>'+
										'</li>');							
								}
							}					
						}						
					}
				
				}
			});	
			
			$.getJSON('/dost/api/user/'+userId[0], function(user_details) {
				$(".summary_patient").append(
						'<div class="user_actual_details">'+
						'<span>'+user_details.fname +'&nbsp'+ user_details.lname+ +'</span>'+
						'<span>'+user_details.hostel +'</span>'+
						'<span>'+user_details.year +'</span>'+
						'<span>'+user_details.branch +'</span>'+
					
					'</div>'
				);
			});
			/*displaying notes*/
			$.getJSON('/dost/api/user/'+userId[1]+'/notes/all', function(notes){
				for(i=0; i<notes.length; i++){
					$(".counselor_notes").append(
						'<li class="each_note">'+
							'<span>'+ notes[i].note +'</span>'+
								'<div class="media-sub-heading secondary_information"><span>'+notes[i].username +'</span> | <span>'+notes[i].noteDate+'</span></div>'+
								'<span title="'+notes[i].messageId+'" class="related_conversation">View related conversation</span>'+
						'</li>'
					);
				}
			});
			/*end of Displaying Notes*/
			
			$(".counselor_notes").on("click",".related_conversation", function(){
				var idToScroll=$(this).attr("title");
				$('html, body').animate({
				    scrollTop: $("#"+idToScroll).offset().top
				}, 1000);
			});

		});
	</script>
	<body class="theme-default theme-default-counselor" >
		<jsp:include page="includes/header.jsp"></jsp:include>
		<!--patient summary-->
		<div class="container">
			<div class="pageTop">
					<h2 class="pull-left pageHeading">
						<a  href="patientList">&larr; Back to all Patients</a>
					</h2>
					<div class="clearfix"></div>
			</div>
						
			<div class="col-md-8 well">
				
				<div class="summary_patient">
					<h2 class="pageHeading patientName"></h2>
					<label>Relationship</label> | <label>Repeat</label>
					<div class="clearfix"></div>
				</div>
				<br/>
				 
				<ul class="conversations">
					<li class="loading" id="loading">
							<img src="${pageContext.request.contextPath}/resources/img/ajax-loader.gif" alt="Loader" />
					</li>
				</ul>
			</div>
			<jsp:include page="includes/notesRightUnit.jsp"></jsp:include>
			<!--end of patient summary-->
	</div>
	<jsp:include page="includes/commonFooter.jsp"></jsp:include>
</body>
</html>