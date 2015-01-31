using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;

namespace Revamp_LatestSightings
{
    public partial class addVideo : System.Web.UI.UserControl
    {
        public bool addVideoDetails = false;
        public string name;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                addVideoDetails = true;
            }
        }

        protected void Uploader1_FileUploaded(object sender, CuteWebUI.UploaderEventArgs args)
        {
            //string newname = "myfile." + args.FileGuid + args.FileName;
            string newname = args.FileName;
            args.CopyTo(ConfigurationManager.AppSettings["savePath"] + newname);
            Session["videofilename"] = null;
            Session["videofilename"] = newname;
        }

        protected void justIncaseSecondaryFileuploadButton_Click(object sender, EventArgs e)
        {
            if (justIncaseSecondaryFileupload.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(justIncaseSecondaryFileupload.FileName);
                    justIncaseSecondaryFileupload.SaveAs(ConfigurationManager.AppSettings["savePath"].ToString() + filename);
                    //string newname = args.FileName;
                    //args.CopyTo(ConfigurationManager.AppSettings["savePath"] + newname);
                    Session["videofilename"] = null;
                    Session["videofilename"] = filename;
                }
                catch (Exception ex)
                {
                    // log exception
                }
            }
        }
    }
}