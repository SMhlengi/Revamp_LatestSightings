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
    public partial class galleries : System.Web.UI.Page
    {
        protected List<GalleryItem> videoGallery = null;
        protected List<GalleryItem> imageGallery = null;
        protected List<GalleryItem> topFeaturedArticles = null;
        protected List<Dictionary<string, string>> latestBlogs = null;
        protected string stringMonth = "";
        protected int imageCounter = 0; 
        protected void Page_Load(object sender, EventArgs e)
        {
            videoGallery = Galleries.GetGallery(Galleries.GalleryType.Video, 8);
            imageGallery = Galleries.GetGallery(Galleries.GalleryType.Image, 8);
            topFeaturedArticles = Galleries.GetFeatured(Galleries.GalleryType.Article);
            latestBlogs = library.GetLatestCompletedArticles(4);
            stringMonth = utils.FullyQualifiedMonthName(DateTime.Now.Month);
            uc_TopMonthlyContributors Contributors = (uc_TopMonthlyContributors)LoadControl("~/uc_TopMonthlyContributors.ascx");
            topTenContributors.Controls.Add(Contributors);
            loadAds();
        }

        private void loadAds()
        {
            ad_300by50 ad300 = (ad_300by50)LoadControl("~/ad_300by50.ascx");
            ad300by50.Controls.Add(ad300);
        }
    }
}