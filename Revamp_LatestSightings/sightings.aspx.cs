using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LatestSightingsLibrary;

namespace Revamp_LatestSightings
{
    public partial class sightings : System.Web.UI.Page
    {
        string tingId { get; set; }
        Dictionary<string, string> ting = new Dictionary<string, string>();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (HasTingParameter())
            {
                tingId = Request.QueryString["id"].ToString();
                ting = library.GetTingInfo(tingId);
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