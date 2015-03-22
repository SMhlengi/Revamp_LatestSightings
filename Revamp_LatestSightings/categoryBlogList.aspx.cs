﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LatestSightingsLibrary;

namespace Revamp_LatestSightings
{
    public partial class categoryBlogList : System.Web.UI.Page
    {
        protected List<GalleryItem> featuredCategory = null;
        protected List<Dictionary<string, string>> cateogryArticles = null;
        protected int categoryId = 0;

        //private string categoryId;
        //protected string CategoryId
        //{
        //    get
        //    {
        //        if (String.IsNullOrEmpty(categoryId) && Page.RouteData.Values["id"].ToString() != null)
        //            categoryId = Page.RouteData.Values["id"].ToString();

        //        return categoryId;
        //    }
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            featuredCategory = new List<GalleryItem>();
            featuredCategory = Galleries.GetFeatured(Galleries.GalleryType.Category);
            LoadFeaturedCategoryArticles();
            LoadFeaturedCategories();
            loadLatestGalleries();
            LoadLatestMonthlyContributors();
        }

        private void LoadFeaturedCategories()
        {
            uc_FeaturedCategories f_categories = (uc_FeaturedCategories)LoadControl("~/uc_FeaturedCategories.ascx");
            f_categories.featuredCategory = featuredCategory;
            f_categories.categoryId = categoryId;
            cagegories.Controls.Add(f_categories);
        }

        private void LoadFeaturedCategoryArticles()
        {
            cateogryArticles = new List<Dictionary<string, string>>();
            List<Dictionary<string, string>> c_articles = new List<Dictionary<string, string>>();
            
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                categoryId = Convert.ToInt32(Request.QueryString["id"]);
            }

            c_articles = library.GetArticlesBasedOnCategoryId(Convert.ToInt32(categoryId));
            foreach (var article in c_articles)
            {
                Dictionary<string, string> articleDict = new Dictionary<string, string>();
                articleDict = utils.CleanUpArticleForBloglist(article);
                cateogryArticles.Add(articleDict);
            }
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