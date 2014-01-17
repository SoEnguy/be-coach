$(document).ready(function() {

	if($('h2:first').text() =="FAQ"){
	 	$("#faq").addClass('active');
	 	$('#home').removeClass('active');
	}

	tailleE = $(window).width();

	if(tailleE <=640) {
		$('div p:nth-child(1)').click(function(event) {
			/* Act on the event */
			$('div p:nth-child(2)').toggle();
		});

	}




});