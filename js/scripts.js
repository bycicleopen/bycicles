$(document).ready(function(){

	// Show Navbar on Scroll

	$(window).scroll(function(){
		if ($(window).scrollTop() >= 250) {
			$('#navbar').fadeIn(250);
		}
		else{
			$('#navbar').fadeOut();
		}
	});

});	// end ready