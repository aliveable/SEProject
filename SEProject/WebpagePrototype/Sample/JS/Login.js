$(document).ready(function() {
  // Smooth scrolling
   $("#scroll").click(function() {
    $('html, body').animate({
        scrollTop: $("#header").offset().top-50
    }, 1000 );
});
});