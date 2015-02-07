﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Revamp_LatestSightings
{
    public class Global : System.Web.HttpApplication
    {

        protected void RegisterRoutes(RouteCollection routes)
        {
            // 
            routes.MapPageRoute("AboutUs",
               "about-us",
               "~/aboutus.aspx", true,
                new RouteValueDictionary { });

            routes.MapPageRoute("Sightings",
               "sightings",
               "~/sightings.aspx", true,
                new RouteValueDictionary { });

            routes.MapPageRoute("Galleries",
               "gallery",
               "~/galleries.aspx", true,
                new RouteValueDictionary { });

            routes.MapPageRoute("ContactUs",
               "contact-us",
               "~/contactus.aspx", true,
                new RouteValueDictionary { });

            routes.MapPageRoute("Login",
                "login",
                "~/login.aspx", true,
            new RouteValueDictionary { });

            routes.MapPageRoute("Register",
                "register",
                "~/register.aspx", true,
            new RouteValueDictionary { });

            routes.MapPageRoute("reset-password",
               "resetpassword",
               "~/resetpassword.aspx", true,
                new RouteValueDictionary { });

            routes.MapPageRoute("view-profile",
                "dashboard",
               "~/dashbard.aspx", true,
                new RouteValueDictionary { });

            routes.MapPageRoute("add-new-video",
            "addvideo",
            "~/dashboard.aspx", true,
            new RouteValueDictionary { 
                { "addvideo", "true"}
            });

            routes.Ignore("Language/assets/{*pathInfo}");
        }

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}