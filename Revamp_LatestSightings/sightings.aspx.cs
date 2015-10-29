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
    public partial class sightings : System.Web.UI.Page
    {
        protected string tingId { get; set; }
        Dictionary<string, string> ting = new Dictionary<string, string>();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (HasTingParameter())
            {
                tingId = Request.QueryString["id"].ToString();
                ting = library.GetTingInfo(tingId);
                var tingserialized = JsonConvert.SerializeObject(ting);
                string javascriptFunction = string.Format("setTingInformation({0})", tingserialized);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", javascriptFunction, true);
            }

        }

        private bool HasTingParameter()
        {
            if (!String.IsNullOrEmpty(Request.QueryString["id"]))
                return true;
            return false;
        }
    }
}