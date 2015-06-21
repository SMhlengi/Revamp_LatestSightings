var LODGEJson = [];
var tingImageFolderUrl = "";
var myVar = "";

function setLodgeTingers(json, FolderUrl) {
    LODGEJson = json;
    tingImageFolderUrl = FolderUrl;
}

$(document).ready(function () {
    console.log(LODGEJson);
    var counter = 0;
    displayLodge(LODGEJson[counter]);
    var arrayLength = LODGEJson.length;
    myVar = setInterval(function () { displayNewLodge() }, 7000);

    function displayNewLodge() {
        console.log(counter);
        if (counter != (arrayLength - 1)) {
            counter += 1;
            displayLodge(LODGEJson[counter]);
        } else {
            myStopFunction();
        }
    }

    function myStopFunction() {
        console.log("---------------STOPPING---------------");
        clearInterval(myVar);
    }

    function displayLodge(lodgeDetails) {
        $("#lodgeImage").attr("src", tingImageFolderUrl + lodgeDetails.id + ".jpg");
        console.log(tingImageFolderUrl + lodgeDetails.id + ".jpg");
        // http://tingsservice.socialengine.co.za/uploads/1577F3D3-B3AB-4FA7-A46A-22D20E65EE03.jpg
        $("#lodgeTitle").html(lodgeDetails.title);
        $("#desc").html(lodgeDetails.description);
        $("#location").html(lodgeDetails.location);
        $("#tingedBy").html("Tinged by: " + lodgeDetails.username);
        $("#time").html(lodgeDetails.time);
        $("#visibility_traffic").html("Visibility: " + lodgeDetails.visibility + " | Traffic: " + lodgeDetails.traffic);
    }































});