using LatestSightingsLibrary;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Revamp_LatestSightings
{
    public partial class ting : System.Web.UI.Page
    {
        public string tingId{get;set;}
        public string parkId { get; set; }
        public Dictionary<string, string> TingInfo = new Dictionary<string, string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HasParkIdAndTingId())
            {
                tingId = Request.QueryString["t"].ToString();
                parkId = Request.QueryString["p"].ToString();
                TingInfo = library.GetTingInfo(tingId);
                SetPageMetaData();
                var tingserialized = JsonConvert.SerializeObject(TingInfo);
                string javascriptFunction = string.Format("setTingInformation({0})", tingserialized);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", javascriptFunction, true);


            }
        }

        private bool HasParkIdAndTingId()
        {
            if (!String.IsNullOrEmpty(Request.QueryString["p"]) && !(String.IsNullOrEmpty(Request.QueryString["t"])))
                return true;
            return false;
        }

        private bool HasTingId()
        {
            if (!String.IsNullOrEmpty(Request.QueryString["id"]))
                return true;
            return false;
        }

        private void SetPageMetaData()
        {
            this.Master.overRideMeta = true;
            this.Master.desc = TingInfo[""];
            this.Master.artUrl = ConfigurationManager.AppSettings["siteUrl"] + "tings/" + tingId;
            this.Master.imgUrl = ConfigurationManager.AppSettings["tingImageServiceCall"] + tingId;
            this.Master.title = TingInfo["title"];

        }
    }
}