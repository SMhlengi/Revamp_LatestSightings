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
    public partial class content : System.Web.UI.Page
    {
        public Dictionary<string, string> contentArticle;
        protected void Page_Load(object sender, EventArgs e)
        {
            string param = Request.QueryString["p"];
            if (!String.IsNullOrEmpty(param))
            {
                contentArticle = GetArticle(param);
                LoadFeaturedCategories();
                LoadLatestMonthlyContributors();
                LoadLatestBlogs();
                loadOtherRelatedArticles();
            }
        }


        private Dictionary<string, string> GetArticle(string param)
        {
            param = "'content/" + param + "'";
            return library.GetArticle(param);
        }


        private void LoadFeaturedCategories()
        {
            uc_FeaturedCategories f_categories = (uc_FeaturedCategories)LoadControl("~/uc_FeaturedCategories.ascx");
            cagegories.Controls.Add(f_categories);
        }

        private void LoadLatestMonthlyContributors()
        {
            uc_TopMonthlyContributors contributors = (uc_TopMonthlyContributors)LoadControl("~/uc_TopMonthlyContributors.ascx");
            monthlyTopContributors.Controls.Add(contributors);
        }

        private void LoadLatestBlogs()
        {
            uc_LatestBlogs latestBlogs = (uc_LatestBlogs)LoadControl("~/uc_LatestBlogs.ascx");
            lastBlogs.Controls.Add(latestBlogs);
        }

        private void loadOtherRelatedArticles()
        {
            uc_categoryOtherRelatedStories relatedArticles = (uc_categoryOtherRelatedStories)LoadControl("~/uc_categoryOtherRelatedStories.ascx");
            relatedArticles.categoryId = Convert.ToInt32(ConfigurationManager.AppSettings["contentCategoryId"]);
            otherRelatedArticles.Controls.Add(relatedArticles);
        }
    }
}