﻿$(document).ready(function () {
    $('.mail').focus(
        function () {
            $(this).parent('div').css('background', 'url("../Images/login_icon_1.png") no-repeat');
            $(this).parent('div').css('background-size', '35px');
            $(this).parent('div').css('background-position', 'left center');
            $(this).parent('div').css('border-bottom', '2px white solid');
            $(this).css('opacity', '1.0');
        }).blur(
        function () {
            $(this).parent('div').css('background', 'url("../Images/login_icon.png") no-repeat');
            $(this).parent('div').css('background-size', '35px');
            $(this).parent('div').css('background-position', 'left center');
            $(this).parent('div').css('border-bottom', '1px #ebebeb solid');
            $(this).css('opacity', '0.8');
        });

});
