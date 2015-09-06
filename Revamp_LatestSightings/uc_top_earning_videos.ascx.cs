using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LatestSightingsLibrary;

namespace Revamp_LatestSightings
{
    public partial class uc_top_earning_videos : System.Web.UI.UserControl
    {
        public List<Stat> video_stats = new List<Stat>();
        protected void Page_Load(object sender, EventArgs e)
        {

            video_stats = Stat.GetTopEarningVideos();
        }
    }
}