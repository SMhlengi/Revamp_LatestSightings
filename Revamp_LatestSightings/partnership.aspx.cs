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
        protected List<GalleryItem> topFeaturedArticles = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            topFeaturedArticles = Galleries.GetFeatured(Galleries.GalleryType.Article);
            uc_TopMonthlyContributors Contributors = (uc_TopMonthlyContributors)LoadControl("~/uc_TopMonthlyContributors.ascx");
            topTenContributors.Controls.Add(Contributors);
            LoadLasteBLogs();
            SetUpMetaTags();
            loadAds();
        }

        private void SetUpMetaTags()
        {
            this.Master.overRideMeta = true;
            this.Master.desc = "Latest Sightings Partnership";
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
        }
    }
}