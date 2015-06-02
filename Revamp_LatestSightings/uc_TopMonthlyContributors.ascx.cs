using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LatestSightingsLibrary;

namespace Revamp_LatestSightings
{
    public partial class uc_TopMonthlyContributors : System.Web.UI.UserControl
    {
        protected List<Stat> contributorsViews = null;
        protected string stringMonth = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //contributorsViews = Stat.GetContributorViews(DateTime.Now.Year, DateTime.Now.Month, 10);
            contributorsViews = Stat.GetContributorViews(DateTime.Now.Year, 5, 10);
            stringMonth = utils.FullyQualifiedMonthName(5);
        }
    }
}