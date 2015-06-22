var LODGEJson = [];
var tingImageFolderUrl = "";
var myVar = "";
var lodgeName = "";
var counter = 0;

function setLodgeTingers(json, FolderUrl, name) {
    LODGEJson = json;
    tingImageFolderUrl = FolderUrl;
    lodgeName = name;
}

$(document).ready(function () {
    console.log(LODGEJson);
    console.log(tingImageFolderUrl);
    console.log(lodgeName);
    displayTings();

    function displayTings() {
        displayLodge(LODGEJson[counter]);
        myVar = setInterval(function () { displayNewLodge() }, 7000);
    }

    function displayNewLodge() {
        console.log(counter);
        if (counter != (LODGEJson.length - 1)) {
            counter += 1;
            displayLodge(LODGEJson[counter]);
        } else {
            myStopFunction();
        }
    }

    function myStopFunction() {
        console.log("---------------STOPPING---------------");
        counter = 0;
        clearInterval(myVar);
        RefreshTings();
    }


    function RefreshTings() {
        console.log("---------------RefreshTings---------------");
        var postUrl = "/AjaxOperation.aspx/GetLodgeDetails";
        $.ajax({
            type: "POST",
            url: postUrl,
            data: "{'lodgeName' : '" + lodgeName + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(
            function (data, textStatus, jqXHR) {
                console.log("---------------AJAX LODGE TINGS---------------");
                console.log(data.d);
                if (data.d.length > 0) {
                    LODGEJson = data.d;
                    displayTings();
                } else {
                    console.log("in else part");
                }
            }
        ).fail(
            function (data, textStatus, jqXHR) {
            }
        );
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