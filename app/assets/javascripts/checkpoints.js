// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
jQuery(document).ready(function($){
	//on the begginign, show the requested frame
	var currentLocation  = top.location.hash;
	var currentCategory = null;
	
	$('.page').removeClass('show'); 
	function changeLocation(location){
		$('.page').hide('hide');
		switch(location){
			case "":
				
    			$('#page0').show('show');
    			break; 
    		case "#pageMenu": 
    						
    			$('#pageMenu').show('show');
    			break;    		 
    		case "#pageCreateReport":
    			if(currentCategory == null){
    				currentLocation = "";
    			}else{
    				
    				$("#pageCreateReport").show('show');
    			}
    			
    	}
    }

	

	if(currentLocation != '' && currentLocation!= "#pageCreateReport"){
		changeLocation(currentLocation);

	}

	$("a.choose_category").click(function(){
		var category = $(this).attr("data-category");

		$(".new_notice #notice_category").attr("value", category);
		currentCategory = category;
		switch(category){
			case "safety":
    			$(".new_notice input[type= 'submit']").attr("value", "Report Road Problem")
    			break; 
    		case "request_ride":    			
    			$(".new_notice input[type= 'submit']").attr("value", "Requeste Ride")
    			break;    		 
    		case "offer_ride":
    			$(".new_notice input[type= 'submit']").attr("value", "Offer Ride")
    	}

		return false;
	})

	$('#add-event-button').click(function(){               
       	$(location).attr('href','#pageMenu');

       	
    });

	$("#pageMenu .button-full").click(function(){
    	$(location).attr('href','#pageCreateReport');
    })

    $(window).on("hashchange", function () {
    	var location = top.location.hash;
    	if(location != currentLocation){
    		currentLocation = location;
    		changeLocation (location);
    	}  	
    	
    })

	var timelineBlocks = $('.cd-timeline-block'),
		offset = 0.8;

	//hide timeline blocks which are outside the viewport
	hideBlocks(timelineBlocks, offset);

	//on scolling, show/animate timeline blocks when enter the viewport
	$(window).on('scroll', function(){
		(!window.requestAnimationFrame) 
			? setTimeout(function(){ showBlocks(timelineBlocks, offset); }, 100)
			: window.requestAnimationFrame(function(){ showBlocks(timelineBlocks, offset); });
	});

	function hideBlocks(blocks, offset) {
		blocks.each(function(){
			( $(this).offset().top > $(window).scrollTop()+$(window).height()*offset ) && $(this).find('.cd-timeline-img, .cd-timeline-content').addClass('is-hidden');
		});
	}

	function showBlocks(blocks, offset) {
		blocks.each(function(){
			( $(this).offset().top <= $(window).scrollTop()+$(window).height()*offset && $(this).find('.cd-timeline-img').hasClass('is-hidden') ) && $(this).find('.cd-timeline-img, .cd-timeline-content').removeClass('is-hidden').addClass('bounce-in');
		});
	}
});