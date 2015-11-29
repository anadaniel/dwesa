// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
jQuery(document).ready(function($){
	//on the begginign, show the requested frame
	function changeLocation(location){
		$('.page').hide('hide'); 
		switch(location){
    		case "#pageMenu":    			
    			$('#pageMenu').show();
    			break;
    		case "":
    			$('#page0').show();
    			break;  
    	}
    }

	var currentLocation  = top.location.hash;
	if(currentLocation != ''){
		changeLocation(currentLocation);
	}


	$('#add-event-button').click(function(){               
       	$(location).attr('href','#pageMenu');

       	
    });


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