﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Revamp_LatestSightings
{
    public partial class holidays : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadEnquireForm();
        }

        private void LoadEnquireForm()
        {
            uc_enquireForm en_q = (uc_enquireForm)LoadControl("~/uc_enquireForm.ascx");
            enquire.Controls.Add(en_q);
        }
    }
}