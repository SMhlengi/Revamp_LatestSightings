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
    public partial class blog : System.Web.UI.Page
    {
        protected int categoryId;
        protected int articleId;
        protected Dictionary<string, string> article = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetParameters();
            GetArticle();
            LoadLatestBlogs();
            LoadLatestMonthlyContributors();
            loadOtherRelatedArticles();
            LoadFeaturedCategories();

        }

        private void loadOtherRelatedArticles()
        {
            uc_categoryOtherRelatedStories relatedArticles = (uc_categoryOtherRelatedStories)LoadControl("~/uc_categoryOtherRelatedStories.ascx");
            relatedArticles.categoryId = categoryId;
            otherRelatedArticles.Controls.Add(relatedArticles);
        }

        private void LoadLatestBlogs()
        {
            uc_LatestBlogs latestBlogs = (uc_LatestBlogs)LoadControl("~/uc_LatestBlogs.ascx");
            lastBlogs.Controls.Add(latestBlogs);
        }

        private void GetArticle()
        {
            article = library.GetArticle(articleId);
        }

        private void GetParameters()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                articleId = Convert.ToInt32(Request.QueryString["id"]);
            }

            if (!string.IsNullOrEmpty(Request.QueryString["cat"]))
            {
                categoryId = Convert.ToInt32(Request.QueryString["cat"]);
            }
        }

        private void LoadLatestMonthlyContributors()
        {
            uc_TopMonthlyContributors contributors = (uc_TopMonthlyContributors)LoadControl("~/uc_TopMonthlyContributors.ascx");
            monthlyTopContributors.Controls.Add(contributors);
        }

        private void LoadFeaturedCategories()
        {
            uc_FeaturedCategories f_categories = (uc_FeaturedCategories)LoadControl("~/uc_FeaturedCategories.ascx");
            f_categories.categoryId = categoryId;
            cagegories.Controls.Add(f_categories);
        }


    }
}