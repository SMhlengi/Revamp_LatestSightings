using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LatestSightingsLibrary;
using Newtonsoft.Json;

namespace Revamp_LatestSightings
{
    public partial class htings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> tings = new List<string>();
            tings = library.GetTopTings(40);
            var tingsJson = JsonConvert.SerializeObject(tings);
            var javascript = String.Format("setHomePageTings({0});", tingsJson);
            ScriptManager.RegisterClientScriptBlock(this,this.GetType(),"",javascript,true);
        }
    }
}