using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Revamp_LatestSightings
{
    public partial class videoList : System.Web.UI.UserControl
    {
        public string userId { get; set; }
        public List<VideoSetting> userVideos;

        protected void Page_Load(object sender, EventArgs e)
        {
            userVideos = new List<VideoSetting>();
            VideoSetting test = new VideoSetting();
            VideoSetting test2 = new VideoSetting();
            test2.Name = "John";
            test2.Alias = "Doe";
            test2.RevSplit = "";
            test2.Uploaded = "N";
            test2.Accepted = "No";
            test.Name = "Sibongumusa";
            test.Alias = "Musa";
            test.RevSplit = "";
            test.Uploaded = "Y";
            test.Accepted = "Yes";
            userVideos.Add(test);
            userVideos.Add(test2);
        }
    }
}