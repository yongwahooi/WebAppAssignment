var autoplay;
var slideNow = 1;
var slide_title = ["WELCOME TO la \267 Galerie!", "Art \267 Creative", "Explore", "Art Collection" , "Every child is an artist by ablo Picasso"];
var slide_desc = ["Be a part of us!", "Enjoy Art Gallery with us!", "The power of la \267 Galerie!", "Various type of art that suit you!", "Don't lost your chance!"];

//var x = JSON.parse(localStorage.getItem("testObj"));
//alert(x[0].passw);

$(document).ready(function () {

    $("#slider_nav a").click(function () {
        slideNav(this.id);
    });

    startAutoplay();

    var slideCount = $('#slider ul li').length;
    var slideWidth = 1349;
    var slideHeight = 550;
    var sliderUlWidth = slideCount * slideWidth;

    $('#slider').css({
        width: slideWidth,
        height: slideHeight
    });

    $('#slider ul').css({
        width: sliderUlWidth,
        marginLeft: -slideWidth
    });

    $('#slider ul li:last-child').prependTo('#slider ul');

    setInterval(function () {
        $("#slider_title").text(slide_title[slideNow - 1]);
        $("#slider_detail").text(slide_desc[slideNow - 1]);
        $("#slider_button").text(slide_hyplink[slideNow - 1]);
        $("#slider_button").attr("href", slide_href[slideNow - 1]);
    }, 0);

    function moveLeft(dura, count) {
        //var move = (count === 1) ? "swing" : "linear";
        slideNow -= count;
        slideNow = (slideNow < 1) ? slideCount : slideNow;
        // $("#slider_title, #slider_detail, #slider_button").fadeOut(500);
        //alert("COUNT move left = " + slideNow);
        for (var i = 0; i < count; i++) {
            $('#slider ul').animate({
                left: +slideWidth
            }, dura, function () {
                $('#slider ul li:last-child').prependTo('#slider ul');
                $('#slider ul').css('left', '');
            });
        }
        //$("#slider_title, #slider_detail, #slider_button").fadeIn(500);
    };

    function moveRight(dura, count) {
        //var move = (count === 1) ? "swing" : "linear";
        slideNow += count;
        slideNow = (slideNow > slideCount) ? 1 : slideNow;
        //("#slider_title, #slider_detail, #slider_button").fadeOut(500);
        //alert("COUNT move right = " + slideNow);
        for (var i = 0; i < count; i++) {
            $('#slider ul').animate({
                left: -slideWidth
            }, dura, function () {
                $('#slider ul li:first-child').appendTo('#slider ul');
                $('#slider ul').css('left', '');
            });
        }
        //$("#slider_title, #slider_detail, #slider_button").fadeIn(500);
    };

    function startAutoplay() {
        setInterval(function () {
            $("#slide" + slideNow).css({
                "background": "#1aff66",
                "color": "black"
            });
            $("#slider_nav a").not("#slide" + slideNow).css({
                "background": "",
                "color": ""
            });
        }, 0);
        autoplay = setInterval(function () {
            moveRight(1000, 1);
        }, 8000);
    }

    function slideNav(slide) {
        var slideNo = slide[5];
        var count = 0;
        if (slideNo > slideNow) {
            count = slideNo - slideNow;
            moveRight(100, count);
        } else {
            count = slideNow - slideNo;
            moveLeft(100, count);
        }
        clearInterval(autoplay);
        startAutoplay();
    }

    $('a.control_prev').click(function () {
        moveLeft(1000, 1);
        clearInterval(autoplay);
        startAutoplay();
    });

    $('a.control_next').click(function () {
        moveRight(1000, 1);
        clearInterval(autoplay);
        startAutoplay();
    });
});
