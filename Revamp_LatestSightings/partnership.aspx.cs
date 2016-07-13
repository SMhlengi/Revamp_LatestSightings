using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LatestSightingsLibrary;
using System.Configuration;
using System.Text;

namespace Revamp_LatestSightings
{

    public partial class partnership : System.Web.UI.Page
    {
        protected List<GalleryItem> featuredVideos = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            uc_TopMonthlyContributors Contributors = (uc_TopMonthlyContributors)LoadControl("~/uc_TopMonthlyContributors.ascx");
            topTenContributors.Controls.Add(Contributors);
            featuredVideos = Galleries.GetFeatured(Galleries.GalleryType.Video);
            buildYouTubeVideosArray(featuredVideos);
            //LoadTopEarningVideos();
            //LoadLasteBLogs();
            //loadAds();
            //loadTopStories();
        }


        private void buildYouTubeVideosArray(List<GalleryItem> featuredVideos)
        {
            if (featuredVideos != null && featuredVideos.Count > 0)
            {
                List<string> youtubeArray = new List<string>();
                StringBuilder sb = new StringBuilder();
                sb.Append("<script>");
                sb.Append("var youtubeArray = new Array;");
                int counter = 0;
                foreach (GalleryItem item in featuredVideos)
                {
                    counter += 1;
                    if (counter <= 5)
                        sb.Append("youtubeArray.push('" + item.YouTubeId + "');");
                }
                sb.Append("</script>");

                ClientScript.RegisterStartupScript(this.GetType(), "buildingYouTubeArray", sb.ToString());
            }
        }

        private void loadTopStories()
        {
            //uc_top_stories topstories = (uc_top_stories)LoadControl("~/uc_top_stories.ascx");
            //TopStories.Controls.Add(topstories);
        }

        private void LoadLasteBLogs()
        {
            //uc_LatestBlogs latestBlogs = (uc_LatestBlogs)LoadControl("~/uc_LatestBlogs.ascx");
            //plc_latestBlogs.Controls.Add(latestBlogs);
        }

        private void loadAds()
        {
            //ad_300by50 ad300 = (ad_300by50)LoadControl("~/ad_300by50.ascx");
            //ad300by50.Controls.Add(ad300);

            //uc_downloadLatestApp downloadApp = (uc_downloadLatestApp)LoadControl("~/uc_downloadLatestApp.ascx");
            //downloadapp.Controls.Add(downloadApp);
        }

        private void LoadTopEarningVideos()
        {
            //uc_top_earning_videos topvids = (uc_top_earning_videos)LoadControl("~/uc_top_earning_videos.ascx");
            //topearningvideos.Controls.Add(topvids);

        }
    }
}