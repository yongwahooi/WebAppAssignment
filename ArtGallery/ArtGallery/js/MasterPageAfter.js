$(document).ready(function () {
	$(window).on("scroll",function(){
  	var wn = $(window).scrollTop();
    if(wn > 150){
    	$("header").css("background","#ffffff");
    	$("header").css("height","30px");
    	$("header").css("box-shadow","1px 4px 3px #585858");
    	$(".nav a").css("color","black");
        $("#logo").attr('src', 'Images/logo_2.png');
        $("#line").css("opacity", "0");
        $(".drop_down").css("color", "white");
        $(".nav a").hover(function () {
            $(this).css("color", "white");
            $(this).css("background", "black");
        }, function () {
            $(this).css("color", "black");
            $(this).css("background", "white");
         });
        $(".drop_down").hover(function () {
            $(this).css("color", "black");
            $(this).css("background", "white");
        }, function () {
            $(this).css("color", "white");
            $(this).css("background", "black");
        });
    }
    else{
    	$("header").css("background","rgba(0,0,0,0)");
    	$("header").css("box-shadow","none");
        $(".nav a").css("color", "white");
        $(".nav a").css("background", "rgba(0,0,0,0)");
        $("#logo").attr('src', 'Images/logo.png');
        $("#line").css("opacity", "1");
        $(".nav a").hover(function () {
            $(this).css("color", "black");
            $(this).css("background", "white");
        }, function () {
            $(this).css("color", "white");
            $(this).css("background", "rgba(0,0,0,0");
        });
    }
    });

    
    
	$('#fb').hover(function() {
	  $(this).attr('src', 'Images/facebook_1.png');
	}, function() {
	  $(this).attr('src', 'Images/facebook.png');
	});
	
	$('#tw').hover(function() {
	  $(this).attr('src', 'Images/twitter_1.png');
	}, function() {
	  $(this).attr('src', 'Images/twitter.png');
	});

	$('#in').hover(function() {
	  $(this).attr('src', 'Images/instagram_1.png');
	}, function() {
	  $(this).attr('src', 'Images/instagram.png');
	});

});

function unable() {
    alert("You already sign in. Unable to access to sign up.");
    return false;
}