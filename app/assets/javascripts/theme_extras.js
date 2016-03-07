$(function(){

    var homeNavbar;
    var introductionBtn, scrollDownBtn;
    var introductionSection;

    var init = function(){

        var setHTMLObjects = function(){
            homeNavbar = $("#homeNavbar");
            introductionBtn = $("#introductionBtn");
            scrollDownBtn = $(".scrollDownBtn");
            introductionSection = $("#introductionSection");
        }();

        var setEvents = function(){


            $(window).scroll(function() {

                if ($(window).scrollTop() >= 50 ) {
                    homeNavbar.css("background-color", "rgba(255, 255, 255, 0.9)");
                }else {
                    homeNavbar.css("background-color", "rgba(255, 255, 255, 1)");
                }
            });

            introductionBtn.on("click", function(){
                $('html, body').animate({
                    scrollTop: introductionSection.offset().top
                }, 2000);
            });

            scrollDownBtn.on("click", function(){
                $('html, body').animate({
                    scrollTop: introductionSection.offset().top
                }, 2000);
            });
        }();

    }();

});