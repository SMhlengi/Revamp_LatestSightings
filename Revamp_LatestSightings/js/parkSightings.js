var PARKTINGS = [];

function InitializeParkTings(json) {
    PARKTINGS = json;
}

function displayPARKTINGS() {
    var i = 0;
    $(".sightingTingTitle").html(PARKTINGS[i].title)
    $(".tingDescription").append("Description: " + PARKTINGS[i].description + "<br>");
    $(".tingDescription").append("Date: " + PARKTINGS[i].time + "<br>");
    $(".tingDescription").append("Visibility: " + ReturnVisibilityStar(parseInt(PARKTINGS[i].visibility)) + " " + parseInt(PARKTINGS[i].visibility) + "/5 <br />");
    $(".tingDescription").append("Tinged by " + PARKTINGS[i].tingUser);
    //$("#lodgeImage").attr("src", "http://tingsservice.socialengine.co.za/tings/image/" + PARKTINGS[i].tingid)
    LODGE_lat = PARKTINGS[i].latitude;
    LODGE_long = PARKTINGS[i].longitude;
}

function ReturnVisibilityStar(starsCount) {
    htmlStars = "";
    for (var i = 0; i < starsCount; i++) {
        htmlStars += '<i style="color:#ff9900;" class="fa fa-star"></i>';
    }

    return htmlStars;
}

function buildImageSliderImages() {
    var imgTemplate = '<div class="image-gallery-item item">' +
	                    '<img alt="" src="http://tingsservice.socialengine.co.za/tings/image/#tingid#">' +
                      '</div>';
    var temp = "";
    for (var i = 0; i < PARKTINGS.length; i++) {
        temp += imgTemplate.replace("#tingid#", PARKTINGS[i].id)
    }
    //$(".image-slider").append(temp);
}

$(document).ready(function () {
    console.log("----PARKtINGS----");
    console.log(PARKTINGS);
    displayPARKTINGS();
    buildImageSliderImages();
});