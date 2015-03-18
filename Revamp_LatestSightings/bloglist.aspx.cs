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
    public partial class bloglist : System.Web.UI.Page
    {
        protected List<GalleryItem> featuredCategory = null;
        protected List<Dictionary<string, string>> featuredCateogryArticles = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            featuredCategory = Galleries.GetFeatured(Galleries.GalleryType.Category);
            LoadFeaturedCategoryArticles();
            LoadFeaturedCategories();
            loadLatestGalleries();
            LoadLatestMonthlyContributors();

        }

        private void LoadFeaturedCategoryArticles()
        {
            featuredCateogryArticles = new List<Dictionary<string, string>>();
            List<Dictionary<string, string>> c_articles = new List<Dictionary<string, string>>();

            foreach (var item in featuredCategory)
            {
                c_articles = library.GetArticlesBasedOnCategoryId(Convert.ToInt32(item.Id));
                foreach (var article in c_articles)
                {
                    Dictionary<string, string> articleDict = new Dictionary<string, string>();
                    articleDict = utils.CleanUpArticleForBloglist(article);
                    featuredCateogryArticles.Add(articleDict);
                }
            }
        }

        private void LoadFeaturedCategories()
        {
            uc_FeaturedCategories f_categories = (uc_FeaturedCategories)LoadControl("~/uc_FeaturedCategories.ascx");
            f_categories.featuredCategory = featuredCategory;
            cagegories.Controls.Add(f_categories);
        }

        private void loadLatestGalleries()
        {
            uc_latestGalleris l_galleries = (uc_latestGalleris)LoadControl("~/uc_latestGalleris.ascx");
            latestGalleries.Controls.Add(l_galleries);
        }

        private void LoadLatestMonthlyContributors()
        {
            uc_TopMonthlyContributors contributors = (uc_TopMonthlyContributors)LoadControl("~/uc_TopMonthlyContributors.ascx");
            monthlyTopContributors.Controls.Add(contributors);
        }
    }
}