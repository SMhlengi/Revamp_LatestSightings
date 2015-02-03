using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Revamp_LatestSightings
{
    public partial class videopreview : System.Web.UI.Page
    {

        private Boolean videoRecordFound = false;
        protected Video videoRecord;
        protected Dictionary<string, string> contributor;
        public bool downloadVideoPanel = false;
        public List<DeclineVideoStatus> declineStatuses = null;
        public string title { get; set; }
        public string filename { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            contributor = new Dictionary<string, string>();
            contributor.Add("firstname", "Musa");
            contributor.Add("lastname", "Mhlengi");
            contributor.Add("email", "musamhlengi@gmail.com");
            contributor.Add("cellnumber", "0847929793");
            videoRecord = new Video();
            videoRecord.Title = "This is just a test";
            videoRecord.Notes = "These are just note";

        }

        protected void downloadVideo_Click(object sender, EventArgs e)
        {
            // the file name to get
            string fileName = Hiddenfilename.Value;
            // get the file bytes to download to the browser
            byte[] fileBytes = System.IO.File.ReadAllBytes(ConfigurationManager.AppSettings["savePath"] + fileName);
            // NOTE: You could also read the file bytes from a database as well.

            // download this file to the browser
            utils.StreamFileToBrowser(fileName, fileBytes);
        }
    }
}