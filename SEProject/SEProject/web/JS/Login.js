$("#scroll").click(function() {
    $('html, body, header').animate({
        scrollTop: $("#header").offset().top
    }, 1500 );
});

