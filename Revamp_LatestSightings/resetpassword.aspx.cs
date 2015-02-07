using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Revamp_LatestSightings
{
    public partial class resetpassword : System.Web.UI.Page
    {
        private string emailaddress { get; set; }
        protected Dictionary<string, string> status = new Dictionary<string, string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(HttpContext.Current.Request.QueryString["email"]))
                RedirectToHomeUrl();

            SqlConnection conn = new SqlConnection();
            SqlCommand query = new SqlCommand();
            SqlDataReader data = null;

            emailaddress = GetEmailAddress();

            status = DataLayer.DoesEmailExists(emailaddress, conn, query, data);
            if (status["doesEmailExits"] == "false")
                RedirectToHomeUrl();

        }

        private void RedirectToHomeUrl()
        {
            HttpContext.Current.Response.Redirect("/");
        }

        private string GetEmailAddress()
        {
            return HttpContext.Current.Request.QueryString["email"];
        }
    }
}