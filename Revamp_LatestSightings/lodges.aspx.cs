using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LatestSightingsLibrary;

namespace Revamp_LatestSightings
{
    public partial class lodges : System.Web.UI.Page
    {
        public string prizes = null;
        public List<Dictionary<string, string>> topFiveTingers;
        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<string, string> lodge = new Dictionary<string, string>();
            string lodgename = Request.QueryString["p"];
            if (!String.IsNullOrEmpty(lodgename))
            {
                lodge = library.GetLodge(lodgename);
                if (lodge["lodgeFound"] == "1")
                {
                    processLodgePrizes(lodge);
                    processLodgeTopFiveTingers(lodge);
                }
            }
        }

        private void processLodgeTopFiveTingers(Dictionary<string, string> lodge)
        {
            topFiveTingers = new List<Dictionary<string, string>>();
            topFiveTingers = library.GetTopFiveLodgeTingers(lodge["id"]);
        }

        private void processLodgePrizes(Dictionary<string, string> lodge)
        {
            prizes = lodge["prizes"];
        }
    }
}