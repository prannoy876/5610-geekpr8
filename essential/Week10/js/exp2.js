$(document).ready(function () {
    $("#overlay-for-contacts").hide();



    $(".closebutton").click(function (e) {
        e.preventDefault();
        $("#overlay-for-contacts").fadeOut("slow");
    });

    $(".demo").click(function (e) {
        e.preventDefault();
        $("#overlay-for-contacts").fadeIn("slow");
        $(window).scrollTop($("#overlay-for-contacts").offset().top);
    });


});

