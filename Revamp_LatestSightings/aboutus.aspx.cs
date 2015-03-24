using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Revamp_LatestSightings
{
    public partial class aboutus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetPageMetaData();
        }

        private void SetPageMetaData()
        {
            this.Master.overRideMeta = true;
            this.Master.desc = "About Latest Sightings";
            this.Master.artUrl = ConfigurationManager.AppSettings["siteUrl"] + "about-us";
            this.Master.imgUrl = ConfigurationManager.AppSettings["articleImagePath"] + "images/logo-horizontal-new.png ";

        }
    }
}