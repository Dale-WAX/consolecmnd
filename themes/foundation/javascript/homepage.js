$(document).ready(function() {

	    $('#carousel-bg').slick({
			autoplay: true,
			autoplaySpeed: 7000,
			adaptiveHeight: true,
			infinite: true,
			arrows: false,
			dots: false,
	        asNavFor: '#carousel-info-box'
	    });

	    $('#carousel-info-box').slick({
	        arrows: false,
	        asNavFor: '#carousel-bg',
	        dots: true,
	        autoplaySpeed: 7000
	    });

		$( '.slick-dots li button' ).empty();
		
});