$(function () {

    var min_value = 5;
    var max_value = 400;

    $("#slider").slider({

       min: min_value,
       max: max_value,
        slide: function (event, ui) {
            $("#slider_value").html('&pound;' + ui.value);

        },

        stop: function( event,ui)
        {
          alert(ui.value);

        }


    });
});
