$(function () {

    $('.btn').on('click', function () {

        var panelId = $(this).attr('data-panelid');
        $('#' + panelId).toggle();


    });


});