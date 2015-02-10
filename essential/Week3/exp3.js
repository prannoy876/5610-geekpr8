$("document").ready(function () {

    $('#hidePic').bind('click', hideImage);
    $('#showPic').bind('click', showImage);
    $('#fadePic').bind('click', fadeImage);
    $('#pulsatePic').bind('click', pulsateImage);
});

function hideImage() {

    $('#picture').hide('explode',{},2500);

}

function showImage() {

    $('#picture').show('fold', {},2500);

}

function fadeImage() {

    $('#picture').fadeOut(2500);

}

function pulsateImage() {

    $('#picture').effect('pulsate', { times: 5}, 200);
}