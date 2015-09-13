using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LatestSightingsLibrary;

namespace Revamp_LatestSightings
{
    public partial class searchResults : System.Web.UI.Page
    {
        protected string searchString;
        protected List<Dictionary<string, string>> articles;
        protected List<Dictionary<string, string>> c_articles;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetParameters();
            if (IsThereSearchString())
            {
                articles = new List<Dictionary<string, string>>();
                articles = library.SearchAllArticle(searchString);
                if (articles != null && articles.Count > 0)
                {
                    c_articles = new List<Dictionary<string, string>>();
                    foreach (var article in articles)
                    {
                        var temp_article = new Dictionary<string, string>();
                        temp_article = utils.CleanUpArticleForBloglist(article);
                        c_articles.Add(temp_article);
                    }
                }
            }
        }

        private bool IsThereSearchString()
        {
            if (String.IsNullOrEmpty(searchString))
                return false;
            return true;
        }

        private void GetParameters()
        {
            searchString = Request.QueryString["q"];
        }
    }
}