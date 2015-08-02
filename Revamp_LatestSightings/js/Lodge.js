var LODGEJson = [];
var tingImageFolderUrl = "";
var myVar = "";
var mapsTimeoutVariable = "";
var lodgeName = "";
var lodgeId = "";
var counter = 0;
var LODGE_lat = "";
var LODGE_long = "";

function setLodgeTingers(json, FolderUrl, name, id) {
    LODGEJson = json;
    tingImageFolderUrl = FolderUrl;
    lodgeName = name;
    lodgeId = id;
    var marker;
}

function initialize() {
    var mapOptions = {
        zoom: 13,
        center: new google.maps.LatLng(parseFloat(LODGE_lat), parseFloat(LODGE_long)),
        mapTypeId: google.maps.MapTypeId.TERRAIN
    };

    var map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);

    marker = new google.maps.Marker({
        position: map.getCenter(),
        draggable: false,
        animation: google.maps.Animation.DROP,
        map: map,
        title: 'Click to zoom'
    });

    mapsTimeoutVariable = setInterval(function () { displayNewMap() }, 12000);

    function displayNewMap() {
        marker.setMap(null);
        map.setCenter({ lat: parseFloat(LODGE_lat), lng: parseFloat(LODGE_long) });
        marker = new google.maps.Marker({
            position: map.getCenter(),
            map: map,
            title: 'Click to zoom',
            animation: google.maps.Animation.DROP,
        });
    }
}

$(document).ready(function () {
    displayTings();
    initialize();
    console.log(LODGEJson);

    function displayTings() {
        displayLodge(LODGEJson[counter]);
        myVar = setInterval(function () { displayNewLodge() }, 12000);
    }

    function displayNewLodge() {
        if (counter != (LODGEJson.length - 1)) {
            counter += 1;
            displayLodge(LODGEJson[counter]);
        } else {
            myStopFunction();
        }
    }

    function myStopFunction() {
        counter = 0;
        clearInterval(myVar);
        clearInterval(mapsTimeoutVariable);
        RefreshTop5Tingers();
        RefreshTings();
    }

    function RefreshTop5Tingers() {
        var postUrl = "/AjaxOperation.aspx/GetLodgeTopFiveTingers";
        $.ajax({
            type: "POST",
            url: postUrl,
            data: "{'lodgeId' : '" + lodgeId + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(
            function (data, textStatus, jqXHR) {
                if (data.d.length > 0) {
                    UpdateTop5TingersLodge(data.d);
                }
            }
        ).fail(
            function (data, textStatus, jqXHR) {
            }
        );
    }


    function UpdateTop5TingersLodge(tingers) {
        $("#top5tingers tr").remove();
        var headers = "<tr><td>Username</td><td>Today's Tingers</td></tr>";
        $("#top5tingers").prepend(headers);
        for (var i = 0; i < tingers.length; i++) {
            var newrow = "<tr><td>#name</td><td>#total</td></tr>";
            newrow = newrow.replace("#name", tingers[i].username).replace("#total", tingers[i].tingsTotal);
            $("#top5tingers tr:last").after(newrow);
        }
    }

    function RefreshTings() {
        var postUrl = "/AjaxOperation.aspx/GetLodgeDetails";
        $.ajax({
            type: "POST",
            url: postUrl,
            data: "{'lodgeName' : '" + lodgeName + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(
            function (data, textStatus, jqXHR) {
                if (data.d.length > 0) {
                    LODGEJson = data.d;
                    displayTings();
                    initialize();
                }
            }
        ).fail(
            function (data, textStatus, jqXHR) {
            }
        );
    }

    function displayLodge(lodgeDetails) {
        LODGE_lat = lodgeDetails.latitude;
        LODGE_long = lodgeDetails.longitude;

        $("#lodgeImage").attr("src", tingImageFolderUrl + lodgeDetails.id);
        // http://tingsservice.socialengine.co.za/uploads/1577F3D3-B3AB-4FA7-A46A-22D20E65EE03.jpg
        $("#lodgeTitle").html(lodgeDetails.title);
        $("#desc").html(lodgeDetails.description);
        $("#location").html(lodgeDetails.location);
        $("#tingedBy").html("Tinged by: " + lodgeDetails.username);
        $("#time").html(lodgeDetails.time);
        //$("#visibility_traffic").html("Visibility: " + lodgeDetails.visibility + " | Traffic: " + lodgeDetails.traffic);
        $("#visibility_traffic").html("Visibility: " + ReturnVisibilityStar(parseInt(lodgeDetails.visibility)) + " | Traffic: " + ReturnVisibilityStar(parseInt(lodgeDetails.traffic)));
    }

    function ReturnVisibilityStar(starsCount) {
        htmlStars = "";
        for (var i = 0; i < starsCount; i++) {
            htmlStars += '<img src="/images/ic_star.svg" id="lodgeImage" width="100%" style="height: 16px; display: inline; width: 19px;">';
        }

        for (var i = starsCount; i < 5; i++) {
            htmlStars += '<img src="/images/ic-starline.svg" id="lodgeImage" width="100%" style="height: 16px; display: inline; width: 19px;">';
        }

        return htmlStars;
    }































});