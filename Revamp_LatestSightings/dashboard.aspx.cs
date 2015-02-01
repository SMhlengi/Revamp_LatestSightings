using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Revamp_LatestSightings
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //completeProfile uc_completeProfile = (completeProfile)LoadControl("~/completeProfile.ascx");
            //completeprofile.Controls.Add(uc_completeProfile);

            //addVideo uc_videoPage = (addVideo)LoadControl("~/addVideo.ascx");
            //addVideoContent.Controls.Add(uc_videoPage);
            videoList uc_videoList = (videoList)LoadControl("~/videoList.ascx");
            videoListcontent.Controls.Add(uc_videoList);


        }

        protected void downloadTandC_Click(object sender, EventArgs e)
        {

        }
    }
}