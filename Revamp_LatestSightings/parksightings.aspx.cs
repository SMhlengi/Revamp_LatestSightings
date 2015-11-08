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
    public partial class parksightings : System.Web.UI.Page
    {
        public List<Dictionary<string, string>> parkTings = new List<Dictionary<string, string>>();
        public Guid parkid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HasParkId())
            {
                parkid = new Guid(Request.QueryString["id"].ToString());
                parkTings = library.GetParkTingsByDate(parkid);
                var tings = JsonConvert.SerializeObject(parkTings);
                string functionCall = String.Format("InitializeParkTings({0});", tings);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", functionCall, true);

            }
        }

        private bool HasParkId()
        {
            if (!String.IsNullOrEmpty(Request.QueryString["id"]))
                return true;
            return false;
        }
    }
}