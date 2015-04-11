using LatestSightingsLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Revamp_LatestSightings
{
    public partial class holidays : System.Web.UI.Page
    {
        protected List<GalleryItem> videoGallery = null;
        protected List<GalleryItem> imageGallery = null;
        protected List<GalleryItem> topFeaturedArticles = null;
        protected List<Dictionary<string, string>> latestBlogs = null;
        protected string stringMonth = "";
        protected int imageCounter = 0; 

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadEnquireForm();
            topFeaturedArticles = Galleries.GetFeatured(Galleries.GalleryType.Article);
            uc_TopMonthlyContributors Contributors = (uc_TopMonthlyContributors)LoadControl("~/uc_TopMonthlyContributors.ascx");
            topTenContributors.Controls.Add(Contributors);
            LoadLasteBLogs();
            loadAds();
        }

        private void LoadEnquireForm()
        {
            uc_enquireForm en_q = (uc_enquireForm)LoadControl("~/uc_enquireForm.ascx");
            enquire.Controls.Add(en_q);
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