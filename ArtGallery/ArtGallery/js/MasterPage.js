$(document).ready(function () {
	$(window).on("scroll",function(){
  	var wn = $(window).scrollTop();
    if(wn > 150){
    	$("header").css("background","#ffffff");
    	$("header").css("height","45px");
    	$("header").css("box-shadow","1px 4px 3px #585858");
    	$(".nav a").css("color","gray");
    	$("#logo").attr('src', 'Images/logo_2.png');

    }
    else{
    	$("header").css("background","rgba(0,0,0,0)");
    	$("header").css("box-shadow","none");
    	$(".nav a").css("color","#ffffff");
    	$("#logo").attr('src', 'Images/logo.png');
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
