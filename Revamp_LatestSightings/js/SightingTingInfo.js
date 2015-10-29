var TINGINFO = [];

function setTingInformation(json) {
    TINGINFO = json;
}

function displayTingInfo() {
    $(".sightingTingTitle").html(TINGINFO.title)
    $(".tingDescription").append("Date: " + TINGINFO.time + "<br>");
    $(".tingDescription").append("Visibility: " + ReturnVisibilityStar(parseInt(TINGINFO.visibility)) + " " + parseInt(TINGINFO.visibility) + "/5 <br />");
    $(".tingDescription").append("Tinged by " + TINGINFO.tingUser);
    $("#lodgeImage").attr("src", "http://tingsservice.socialengine.co.za/tings/image/" + TINGINFO.tingid)
}


function ReturnVisibilityStar(starsCount) {
    htmlStars = "";
    for (var i = 0; i < starsCount; i++) {
        htmlStars += '<i style="color:#ff9900;" class="fa fa-star"></i>';
    }

    return htmlStars;
}




$(document).ready(function () {
    console.log("----TING INFO");
    console.log(TINGINFO);
    displayTingInfo();
});