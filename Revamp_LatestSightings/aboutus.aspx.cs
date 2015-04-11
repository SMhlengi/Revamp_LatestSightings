using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using LatestSightingsLibrary;

namespace Revamp_LatestSightings
{
    public partial class aboutus : System.Web.UI.Page
    {
        protected List<GalleryItem> topFeaturedArticles = null;
        protected List<Dictionary<string, string>> latestBlogs = null;
        protected string stringMonth = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            topFeaturedArticles = Galleries.GetFeatured(Galleries.GalleryType.Article);
            latestBlogs = library.GetLatestCompletedArticles(4);
            SetPageMetaData();
            GetMonthlyContributors();
            LoadLasteBLogs();
            loadLatestGalleries();
            loadAds();
        }

        private void loadAds()
        {
            ad_300by50 ad300 = (ad_300by50)LoadControl("~/ad_300by50.ascx");
            ad300by50.Controls.Add(ad300);
        }

        private void GetMonthlyContributors()
        {
            stringMonth = utils.FullyQualifiedMonthName(DateTime.Now.Month);
            uc_TopMonthlyContributors Contributors = (uc_TopMonthlyContributors)LoadControl("~/uc_TopMonthlyContributors.ascx");
            topTenContributors.Controls.Add(Contributors);
        }

        private void LoadLasteBLogs()
        {
            uc_LatestBlogs latestBlogs = (uc_LatestBlogs)LoadControl("~/uc_LatestBlogs.ascx");
            plc_latestBlogs.Controls.Add(latestBlogs);
        }

        private void loadLatestGalleries()
        {
            uc_latestGalleris l_galleries = (uc_latestGalleris)LoadControl("~/uc_latestGalleris.ascx");
            latestGalleries.Controls.Add(l_galleries);
        }

        private void SetPageMetaData()
        {
            this.Master.overRideMeta = true;
            this.Master.desc = "About Latest Sightings";
            this.Master.artUrl = ConfigurationManager.AppSettings["siteUrl"] + "about-us";
            this.Master.imgUrl = ConfigurationManager.AppSettings["siteUrl"] + "images/logo-horizontal-new.png";

        }
    }
}