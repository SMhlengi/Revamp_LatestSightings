using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LatestSightingsLibrary;
using System.Configuration;

namespace Revamp_LatestSightings
{

    public partial class partnership : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            uc_TopMonthlyContributors Contributors = (uc_TopMonthlyContributors)LoadControl("~/uc_TopMonthlyContributors.ascx");
            topTenContributors.Controls.Add(Contributors);
            LoadTopEarningVideos();
            LoadLasteBLogs();
            SetUpMetaTags();
            loadAds();
            loadTopStories();
        }

        private void loadTopStories()
        {
            uc_top_stories topstories = (uc_top_stories)LoadControl("~/uc_top_stories.ascx");
            TopStories.Controls.Add(topstories);
        }

        private void SetUpMetaTags()
        {
            this.Master.overRideMeta = true;
            this.Master.desc = "Android & iPhone/iPad smartphone app for real-time alerts of wildlife sightings in Safari Nature Reserves around the world. Share your outdoor experience now";
            this.Master.artUrl = ConfigurationManager.AppSettings["siteUrl"] + "partnership";
            this.Master.imgUrl = ConfigurationManager.AppSettings["siteUrl"] + "images/logo-horizontal-new.png";
        }

        private void LoadLasteBLogs()
        {
            uc_LatestBlogs latestBlogs = (uc_LatestBlogs)LoadControl("~/uc_LatestBlogs.ascx");
            plc_latestBlogs.Controls.Add(latestBlogs);
        }

        private void loadAds()
        {
            ad_300by50 ad300 = (ad_300by50)LoadControl("~/ad_300by50.ascx");
            ad300by50.Controls.Add(ad300);

            uc_downloadLatestApp downloadApp = (uc_downloadLatestApp)LoadControl("~/uc_downloadLatestApp.ascx");
            downloadapp.Controls.Add(downloadApp);
        }

        private void LoadTopEarningVideos()
        {
            uc_top_earning_videos topvids = (uc_top_earning_videos)LoadControl("~/uc_top_earning_videos.ascx");
            topearningvideos.Controls.Add(topvids);

        }
    }
}