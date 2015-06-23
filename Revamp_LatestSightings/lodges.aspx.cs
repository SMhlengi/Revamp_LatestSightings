using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LatestSightingsLibrary;
using Newtonsoft.Json;
using System.Text;
using System.Configuration;

namespace Revamp_LatestSightings
{
    public partial class lodges : System.Web.UI.Page
    {
        public string prizes = null;
        public string lodgeName = null;
        public List<Dictionary<string, string>> topFiveTingers;
        public List<Dictionary<string, string>> lodgeTings;
        public string json;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string tingImageUrlFolder = ConfigurationManager.AppSettings["tingImageFolderUrl"];
            Dictionary<string, string> lodge = new Dictionary<string, string>();
            string lodgename = Request.QueryString["p"];
            if (!String.IsNullOrEmpty(lodgename))
            {
                lodge = library.GetLodge(lodgename);
                if (lodge["lodgeFound"] == "1")
                {
                    processLodgePrizesAndName(lodge);
                    processLodgeTopFiveTingers(lodge["id"]); // not updating this yet
                    processLodgeTings(lodge);
                    json = JsonConvert.SerializeObject(lodgeTings);
                    var script = string.Format("setLodgeTingers({0}, '{1}', '{2}', '{3}')", json, tingImageUrlFolder, lodgename, lodge["id"]);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "", script, true);
                }
            }
        }

        private void processLodgeTings(Dictionary<string, string> lodge)
        {
            lodgeTings = new List<Dictionary<string, string>>();
            lodgeTings = library.GetLodgeTings(lodge["id"]);
        }

        private void processLodgeTopFiveTingers(string lodgeid)
        {
            topFiveTingers = new List<Dictionary<string, string>>();
            topFiveTingers = AjaxOperation.GetLodgeTopFiveTingers(lodgeid);
        }

        private void processLodgePrizesAndName(Dictionary<string, string> lodge)
        {
            prizes = lodge["prizes"];
            lodgeName = lodge["name"];
        }
    }
}