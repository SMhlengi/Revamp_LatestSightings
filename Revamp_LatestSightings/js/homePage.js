$(document).ready(function () {

    $(function () {
        $(".youtube").YouTubeModal({ autoplay: 0, width: 640, height: 480 });
    });

    $("#justpics").click(function () {
        $(".latestGalleriesPicsAndVideos").hide();
        $(".latestGalleriesJustVideos").hide();
        $(".latestGalleriesJustPics").show();
    })

    $("#justvideos").click(function () {
        $(".latestGalleriesJustPics").hide();
        $(".latestGalleriesPicsAndVideos").hide();
        $(".latestGalleriesJustVideos").show();
    });

    $("#showall").click(function () {
        $(".latestGalleriesJustPics").hide();
        $(".latestGalleriesJustVideos").hide();
        $(".latestGalleriesPicsAndVideos").show();
    });

    $(".filterImage").click(function () {
        var imgSrc = $(this).find("img").attr("src");
        $(".popup_ex").find(".portfolio-featured-image").find("img").attr("src", imgSrc);
        $("#over_lay").show();
        $(".popup_ex").show();
    });

});