using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Revamp_LatestSightings
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public bool ViewAddVideo = false;
        public bool ViewAddImage = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            uc_SiteHeader siteHeader = (uc_SiteHeader)LoadControl("~/uc_SiteHeader.ascx");
            if (Session["username"] != null)
                siteHeader.username = Session["username"].ToString();
            else
                siteHeader.username = "";

            headerPlaceHonder.Controls.Add(siteHeader);
        }
    }
}