$( document ).ready(function() {
		$( ".discussion_topic" ).click(function() {
			window.location = 'discussionsDetails.html';
		});

		/*FAQ listing*/
		$.getJSON("/dost/api/faqcategory/all", function(FAQ) {	
			for (var i = 0 ; i < FAQ.length; i++) {
					$(".FAQList").append('<h3 class="categoryName" id='+FAQ[i].faqCategoryName+">"+FAQ[i].faqCategoryName+"</h3>");
					$("#"+FAQ[i].faqCategoryName).after("<ul></ul>");

					for (var j = 0 ; j < FAQ[i].faqs.length; j++) {
						$("#"+FAQ[i].faqCategoryName).siblings("ul").append('<li class="questionAnswer" id='+FAQ[i].faqCategoryName+j+'><div class="question">'+FAQ[i].faqs[j].question+'</div><div class="answer">'+ FAQ[i].faqs[j].answer +"</div></li>");
					}

			}
		/*End of FAQ listing*/

		/*clicking FAQs*/
		$(".question").click(function(){
				$(this).addClass("clickedQuestion");
				$(".categoryName").hide();
				$(".nextPreviousNav").css("visibility" , "visible");
				$(".allQuestions").css("visibility" , "visible");
				$(".question").not(this).hide();
				$(this).siblings(".answer").show();
		});
		/*end of click on FAQs*/

		/*Moving through FAQs*/
		$(".allQuestions").click(function(){
				$(".categoryName").show().removeClass("clickedQuestion");;
				$(".nextPreviousNav").css("visibility","hidden");
				$(".allQuestions").css("visibility","hidden");
				$(".question").show();
				$(".answer").hide();

		});
		/*End of Moving through FAQs*/

	});

	/*Add FAQ */
	$(".addFAQs").click(function(){
		$(this).hide();
		$(".FAQList").prepend("" +
				'<form METHOD="POST">'+
				'<div contenteditable="true" class="individualQuestion fillQuestion"></div>' +
				'<div class="fillAnswer" contenteditable="true" class="individualQuestion" ></div>'+
				'<div class="btn-group">'+
					'<label>Select Category</label>'+
					'<select><option>Career</option><option>Family</option></select>'+
					'<input type="submit" class="saveFAQ btn btn-primary pull-right" value="SAVE"/>'+
				'</div>'+
				'<div class="clearfix"></div>'+
				'</form>'+
				"");
	});


	/*Edit FAQ */
	$(".editFAQs").click(function(){
		$(this).hide();
		$(".question").show().attr("contenteditable","true");
		$(".answer").show().attr("contenteditable","true");
		$(".FAQList").after('<button type="button" class="saveFAQ btn btn-primary pull-right">SAVE</button>');
	});
	/* Edit FAQ */

	$(".saveFAQ").on("click", function(){

		$(this).hide();
		$(".addFAQs").show();
		alert("haha");
		$(".FAQList question").attr("contenteditable","false");
		$(".FAQList answer").hide();
	});
	/*End of Add FAQ*/	

});