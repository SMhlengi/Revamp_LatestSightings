var HOMEPAGE_tings = [];

function setHomePageTings(json){
    HOMEPAGE_tings = json;
}

function buildTingsSlider() {
    var imageDiv = '';
    for (var i = 0; i < HOMEPAGE_tings.length; i++) {
        var imageUrl = "http://tingsservice.socialengine.co.za/tings/image/" + HOMEPAGE_tings[i];
        imageDiv += '<div class="swiper-slide" style="width: 340px; margin-right: 30px;"><img src="' + imageUrl + '"  id="lodgeImage"></div>'
    }

    $(".swiper-wrapper").html(imageDiv);
}

$(document).ready(function () {
    console.log("-----HOMEPAGE TINGS-----")
    console.log(HOMEPAGE_tings);
    buildTingsSlider();

});