var LATESTBLOGS = [];

function constructLatestBlogs(json) {
    LATESTBLOGS = json
}

function buildBlogsHtml() {

    var blogList = '<div class="media recent-posts">' +
			'<a href="/blog.aspx?id=#articleId#&cat=#categoryid#" class="pull-left"><img alt="" class="media-object sixtyBySixty" src="#articleImagePath#/#pictureurl#"></a>' +
			'<div class="media-body">' +
				'<h4 class="media-heading"><a href="/blog.aspx?id=#articleId#&cat=#categoryid#">#blogheader#</a></h4>' +
			'</div>' +
		'</div>';

    if (LATESTBLOGS.length > 0) {
        var blogshtml = "";
        for (var i = 0; i < LATESTBLOGS.length; i++) {
            blogshtml += blogList.replace("#articleId#", LATESTBLOGS[i].id).replace("#categoryid#", LATESTBLOGS[i].categoryid).replace("#articleImagePath#", "http://cdn.socialengine.co.za/latestsightings/article").replace("#pictureurl#", LATESTBLOGS[i].picture).replace("#blogheader#", LATESTBLOGS[i].header);
        }

        $("#homepageLatestBlogs").prepend(blogshtml);

    }

}


$(document).ready(function () {
    console.log("---latestblogs---");
    console.log(LATESTBLOGS);
    setTimeout(function ()
    {
        buildBlogsHtml();
    },
    5000);

    
});