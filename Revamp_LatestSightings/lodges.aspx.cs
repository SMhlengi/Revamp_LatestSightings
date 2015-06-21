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
        public string lodgeName = null;
        public List<Dictionary<string, string>> topFiveTingers;
        public List<Dictionary<string, string>> lodgeTings;
        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<string, string> lodge = new Dictionary<string, string>();
            string lodgename = Request.QueryString["p"];
            if (!String.IsNullOrEmpty(lodgename))
            {
                lodge = library.GetLodge(lodgename);
                if (lodge["lodgeFound"] == "1")
                {
                    processLodgePrizesAndName(lodge);
                    processLodgeTopFiveTingers(lodge);
                    processLodgeTings(lodge);
                }
            }
        }

        private void processLodgeTings(Dictionary<string, string> lodge)
        {
            lodgeTings = new List<Dictionary<string, string>>();
            lodgeTings = library.GetLodgeTings(lodge["id"]);

        }

        private void processLodgeTopFiveTingers(Dictionary<string, string> lodge)
        {
            topFiveTingers = new List<Dictionary<string, string>>();
            topFiveTingers = library.GetTopFiveLodgeTingers(lodge["id"]);
        }

        private void processLodgePrizesAndName(Dictionary<string, string> lodge)
        {
            prizes = lodge["prizes"];
            lodgeName = lodge["name"];
        }
    }
}