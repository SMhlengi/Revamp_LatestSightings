using LatestSightingsLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;

namespace Revamp_LatestSightings
{
    public partial class _default : System.Web.UI.Page
    {
        protected List<GalleryItem> topFeaturedArticles = null;
        protected List<GalleryItem> featuredVideos = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            topFeaturedArticles = Galleries.GetFeatured(Galleries.GalleryType.Article);
            featuredVideos = Galleries.GetFeatured(Galleries.GalleryType.Video);
            CleanUpArticleForBillboard();
            LoadLatestMonthlyContributors();
            LoadLasteBLogs();
            loadLatestGalleries();
            buildYouTubeVideosArray(featuredVideos);
            loadAds();
        }

        private void loadAds()
        {
            ad_300by50 ad300 = (ad_300by50)LoadControl("~/ad_300by50.ascx");
            ad300by50.Controls.Add(ad300);
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

        private void loadLatestGalleries()
        {
            uc_latestGalleris l_galleries = (uc_latestGalleris)LoadControl("~/uc_latestGalleris.ascx");
            latestGalleries.Controls.Add(l_galleries);
        }

        private void CleanUpArticleForBillboard()
        {
            foreach (var article in topFeaturedArticles)
            {
                article.ArticleBody = article.ArticleBody.Remove(0, 2);
                int startIndex = article.ArticleBody.IndexOf('>');
                int endIndex = article.ArticleBody.IndexOf('<');
                int substract = endIndex - startIndex;
                article.ArticleBody = article.ArticleBody.Substring(startIndex + 1, substract - 1);
                article.ArticleBody += " [...]";
            }
        }

        private void LoadLatestMonthlyContributors()
        {
            uc_TopMonthlyContributors contributors = (uc_TopMonthlyContributors)LoadControl("~/uc_TopMonthlyContributors.ascx");
            monthlyTopContributors.Controls.Add(contributors);
        }

        private void LoadLasteBLogs()
        {
            uc_LatestBlogs latestBlogs = (uc_LatestBlogs)LoadControl("~/uc_LatestBlogs.ascx");
            plc_latestBlogs.Controls.Add(latestBlogs);
        }
    }
}