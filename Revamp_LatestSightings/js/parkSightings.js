var PARKTINGS = [];

function InitializeParkTings(json) {
    PARKTINGS = json;
}

function displayTingInfo() {
    $(".sightingTingTitle").html(TINGINFO.title)
    $(".tingDescription").append("Description: " + TINGINFO.description + "<br>");
    $(".tingDescription").append("Date: " + TINGINFO.time + "<br>");
    $(".tingDescription").append("Visibility: " + ReturnVisibilityStar(parseInt(TINGINFO.visibility)) + " " + parseInt(TINGINFO.visibility) + "/5 <br />");
    $(".tingDescription").append("Tinged by " + TINGINFO.tingUser);
    $("#lodgeImage").attr("src", "http://tingsservice.socialengine.co.za/tings/image/" + TINGINFO.tingid)
    LODGE_lat = TINGINFO.latitude;
    LODGE_long = TINGINFO.longitude;
}

$(document).ready(function () {
    console.log("----PARKtINGS----");
    console.log(PARKTINGS);
    displayTingInfo();
});