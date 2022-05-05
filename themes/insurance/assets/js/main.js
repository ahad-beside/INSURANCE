(function ($) {
    "use strict";
	
	jQuery(document).ready(function($) {
        /* jQuery MOBILEMenu */
	    jQuery('nav#dropdown').meanmenu();
		
		$("#owl-pro-tab1").owlCarousel({
		  autoPlay: false, //Set AutoPlay to 3 seconds
		  items : 4,
		  itemsDesktop : [1199,4],
		  itemsDesktopSmall : [979,3],
		  itemsTablet : [768,2],
		  itemsTabletSmall : [480,2],
		  itemsMobile : [479,1],
		  pagination : false,
		  navigation : true,
		  navigationText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"]
		});
		
		$("#owl-pro-tab2").owlCarousel({
		  autoPlay: false, //Set AutoPlay to 3 seconds
		  items : 4,
		  itemsDesktop : [1199,4],
		  itemsDesktopSmall : [979,3],
		  itemsTablet : [768,3],
		  itemsTabletSmall : [480,2],
		  itemsMobile : [479,1],
		  pagination : false,
		  navigation : true,
		  navigationText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"]
		});
		 
		$("#owl-brand").owlCarousel({
		  autoPlay: false, //Set AutoPlay to 3 seconds
		  items : 4,
		  itemsDesktop : [1199,4],
		  itemsDesktopSmall : [979,3],
		  itemsTablet : [768,4],
		  itemsTabletSmall : [480,2],
		  itemsMobile : [479,1],
		  pagination : false,
		  navigation : false
		});
		 
		$("#owl-pro-tab1-home3").owlCarousel({
		  autoPlay: false, //Set AutoPlay to 3 seconds
		  items : 3,
		  itemsDesktop : [1199,3],
		  itemsDesktopSmall : [979,3],
		  itemsTablet : [768,2],
		  itemsTabletSmall : [480,2],
		  itemsMobile : [479,1],
		  pagination : false,
		  navigation : true,
		  navigationText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"]
		 
		});
		
		$("#owl-pro-tab2-home3").owlCarousel({
		  autoPlay: false, //Set AutoPlay to 3 seconds
		  items : 3,
		  itemsDesktop : [1199,3],
		  itemsDesktopSmall : [979,3],
		  itemsTablet : [768,2],
		  itemsTabletSmall : [480,2],
		  itemsMobile : [479,1],
		  pagination : false,
		  navigation : true,
		  navigationText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"]
		 
		});
		
		/*---------------------------------
		 price slider
		-----------------------------------*/
   
		$("#slider-range" ).slider({
			range: true,
			min: 0,
			max: 500,
			values: [ 18, 407 ],
			slide: function( event, ui ) {
				$( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
			}
		});
		$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
			" - $" + $( "#slider-range" ).slider( "values", 1 ) );
	
		
		/*---------------------
		Single  product Zoom
		--------------------- */
	   $('.zoom_01').elevateZoom({
		easing : true,
		cursor: "crosshair",
		zoomWindowFadeIn: 300,
		zoomWindowFadeOut: 350
	   }); 	
				
		//Cat Nav
		$('.holder00').on('click', function(){
			$('.cat_csub00').toggleClass('displa_none');
			$(this).toggleClass('minus_btn');
		});
		$('.holder01').on('click', function(){
			$('.cat_csub01').toggleClass('displa_none');
			$(this).toggleClass('minus_btn');
		});
		$('.holder02').on('click', function(){
			$('.cat_csub_sub02').toggleClass('displa_none');
			$(this).toggleClass('minus_btn');
		});
		$('.holder03').on('click', function(){
			$('.cat_csub_sub03').toggleClass('displa_none');
			$(this).toggleClass('minus_btn');
		});
		$('.holder04').on('click', function(){
			$('.cat_csub_sub04').toggleClass('displa_none');
			$(this).toggleClass('minus_btn');
		});
		$('.holder05').on('click', function(){
			$('.cat_csub05').toggleClass('displa_none');
			$(this).toggleClass('minus_btn');
		});
		$('.holder06').on('click', function(){
			$('.cat_csub_sub06').toggleClass('displa_none');
			$(this).toggleClass('minus_btn');
		});
		$('.holder07').on('click', function(){
			$('.cat_csub_sub07').toggleClass('displa_none');
			$(this).toggleClass('minus_btn');
		});
		
		/*---------------------
		   scrollUp
		--------------------- */	
		$.scrollUp({
			scrollText: '<i class="fa fa-angle-up"></i>',
			easingType: 'linear',
			scrollSpeed: 900,
			animation: 'fade'
		});
		
  
	});
	
})(jQuery);