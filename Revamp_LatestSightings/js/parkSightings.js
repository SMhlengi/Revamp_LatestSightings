var PARKTINGS = [];
var imageCounter = 0;
var parkTingsLength = 0;

function InitializeParkTings(json) {
    PARKTINGS = json;
}

function displayPARKTINGS(index) {
    $(".sightingTingTitle").html(PARKTINGS[index].title);
    $(".tingDescription").html("");
    $(".tingDescription").append("Description: " + PARKTINGS[index].description + "<br>");
    $(".tingDescription").append("Date: " + PARKTINGS[index].time + "<br>");
    $(".tingDescription").append("Visibility: " + ReturnVisibilityStar(parseInt(PARKTINGS[index].visibility)) + " " + parseInt(PARKTINGS[index].visibility) + "/5 <br />");
    $(".tingDescription").append("Tinged by: " + PARKTINGS[index].username);
    $(".image-gallery-item img").attr("src", "http://tingsservice.socialengine.co.za/tings/image/" + PARKTINGS[index].id)
    LODGE_lat = PARKTINGS[index].latitude;
    LODGE_long = PARKTINGS[index].longitude;
}

function ReturnVisibilityStar(starsCount) {
    htmlStars = "";
    for (var i = 0; i < starsCount; i++) {
        htmlStars += '<i style="color:#ff9900;" class="fa fa-star"></i>';
    }

    return htmlStars;
}

function ReturnCounter(operation) {
    if (operation == "add"){
        if ((imageCounter + 1) != parkTingsLength) {
            imageCounter += 1;
            return imageCounter;
        } else {
            imageCounter = 0;
            return imageCounter;
        }
    } else {
        if ((imageCounter - 1) != -1) {
            imageCounter -= 1;
            return imageCounter;
        } else {
            imageCounter = parkTingsLength - 1;
            return imageCounter;
        }
    }
}

function imageNext() {
    var index = ReturnCounter("add");
    displayPARKTINGS(index);
}

function imagePrev() {
    var index = ReturnCounter("minus");
    displayPARKTINGS(index);
}

function initialize() {
    var mapOptions = {
        zoom: 13,
        center: new google.maps.LatLng(parseFloat(LODGE_lat), parseFloat(LODGE_long)),
        mapTypeId: google.maps.MapTypeId.TERRAIN
    };

    map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);

    marker = new google.maps.Marker({
        position: map.getCenter(),
        animation: google.maps.Animation.DROP,
        map: map
    });
}

$(document).ready(function () {
    console.log("----PARKtINGS----");
    console.log(PARKTINGS);
    parkTingsLength = PARKTINGS.length;
    displayPARKTINGS(0);
    initialize();

    $(".owl-next").click(function () {
        console.log("clicking on next");
        imageNext();
        initialize();
    });

    $(".owl-prev").click(function () {
        console.log("clicking on prev");
        imagePrev();
        initialize();
    })


});