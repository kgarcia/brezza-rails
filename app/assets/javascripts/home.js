        // Returns true if the specified element has been scrolled into the viewport.
function isElementInViewport(elem) {
    var $elem = $(elem);

    // Get the scroll position of the page.
    var scrollElem = ((navigator.userAgent.toLowerCase().indexOf('webkit') != -1) ? 'body' : 'html');
    var viewportTop = $(scrollElem).scrollTop();
    var viewportBottom = viewportTop + $(window).height();

    // Get the position of the element on the page.
    var elemTop = Math.round( $elem.offset().top );
    var elemBottom = elemTop + $elem.height();

    return ((elemTop < viewportBottom) && (elemBottom > viewportTop));
}

// Check if it's time to start the animation.
function checkAnimation() {
    var $elem = $('.cool-link ');

    if (isElementInViewport($elem)) {
        // Start the animation
        $elem.addClass('start');
    } else {
        $elem.removeClass('start');
    }
}

// Capture scroll events
$(window).scroll(function(){
    checkAnimation();
});






///////////////////////////

$(function () {
        
    var filterList = {
    
        init: function () {
        
            // MixItUp plugin
            // http://mixitup.io
            $('#portfoliolist').mixItUp({
                selectors: {
              target: '.portfolio',
              filter: '.filter' 
          },
          load: {
              filter: '.startup, .finanzas, .turismo, .ecologia, .web' // show app tab on first load
            }     
            });                             
        
        }

    };
    
    // Run the show!
    filterList.init();
    
}); 

$(function(){ // on first doc ready we instantiate mixitup
    $('#portfoliolist').mixItUp(); // an instance now exists in the session memory
});
$(window).on('page:before-change', function(){ 
    $('#portfoliolist').mixItUp('destroy'); // destroy the instance
});
$(window).on('page:load', function(){
    $('#portfoliolist').mixItUp(); // We can now reinstantiate without being blocked
});



///////PRELOADER
$(document).ready(function() {
   window.setTimeout("fadeMyDiv();", 1500); //call fade in 1 seconds
 }
)

function fadeMyDiv() {
   $("#preloader").fadeOut('slow');
}

// acordeon


$('.panel-heading a').click(function() {
    $('.panel-heading').removeClass('actives');
    $(this).parents('.panel-heading').addClass('actives');
    
    $('.panel-title').removeClass('actives'); //just to make a visual sense
    //$(this).parent().addClass('actives'); //just to make a visual sense

 });