﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Services;
using Revamp_LatestSightings;

namespace Revamp_LatestSightings
{
    public partial class AjaxOperation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static bool SaveRegistrationData(string firstname, string lastname, string email, string password)
        {
            Boolean savedStatus = false;
            SqlConnection conn = new SqlConnection();
            SqlCommand query = new SqlCommand();
            Person person = new Person();

            person = SetPersonObject(person, firstname, lastname, email, password);

            savedStatus = DataLayer.SaveRegistration(person, conn, query);
            if (savedStatus)
                utils.SendSuccessfullyRegisteredMail(firstname, lastname, email, "http://lscms.socialengine.co.za");

            return savedStatus;

        }

        private static Person SetPersonObject(Person person, string firstname, string lastname, string email, string password)
        {
            person.FirstName = firstname;
            person.LastName = lastname;
            person.Email = email;
            person.Password = password;
            person.Role = 3;
            return person;
        }

        [WebMethod]
        public static Dictionary<string, string> IsValidUser(string email, string password)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand query = new SqlCommand();
            SqlDataReader data = null;
            Dictionary<string, string> userdata = DataLayer.AreCredentialsValid(email, password, conn, query, data);
            if (userdata["credentialsValid"] == "true")
                HttpContext.Current.Session["userid"] = userdata["id"];
            return userdata;
        }

        [WebMethod]
        public static bool SendForgottonPasswordEmail(string email)
        {
            bool status = utils.SendForgottonPasswordEmail(email);
            return status;
        }

        [WebMethod]
        public static bool UpdatePassword(string password, string email)
        {
            bool status = false;
            SqlConnection conn = new SqlConnection();
            SqlCommand query = new SqlCommand();
            SqlDataReader data = null;
            status = DataLayer.UpdatePassword(password, email, conn, query);
            return status;
        }

        [WebMethod]
        public static bool UpdateProfile(string firstname, string lastname, string telephonenumber, string othercontact, string address, string bank, string payPal, string facebook, string twitter, string skype, string email, string cellnumber, string accounttype, string accountnumber, string branchname, string brachcode)
        {
            bool status = false;
            if (HttpContext.Current.Session["userid"] != null)
            {
                SqlConnection conn = new SqlConnection();
                SqlCommand query = new SqlCommand();
                status = DataLayer.UpdateProfile(conn, query, firstname, lastname, telephonenumber, othercontact, address, bank, payPal, facebook, twitter, skype, email, cellnumber, HttpContext.Current.Session["userid"].ToString(), accounttype, accountnumber, branchname, brachcode);
            }
            return status;
        }

        [WebMethod]
        public static bool SaveVideoDetails(string videoTitle, string alias, string keywords, string notes)
        {
            Boolean savedStatus = false;
            if (HttpContext.Current.Session["userid"] != null && HttpContext.Current.Session["videofilename"] != null)
            {
                SqlConnection conn = new SqlConnection();
                SqlCommand query = new SqlCommand();
                SqlDataReader data = null;
                Video video = new Video();
                string userFullName;
                string recordId = "-1";

                video = SetVideoObject(videoTitle, alias, keywords, notes, HttpContext.Current.Session["userid"].ToString(), video);
                recordId = DataLayer.SaveVideoDetails(video, conn, query, Convert.ToString(HttpContext.Current.Session["videofilename"]));
                if (recordId != "-1")
                {
                    userFullName = DataLayer.GetFullName(conn, query, HttpContext.Current.Session["userid"].ToString(), data);
                    if (!String.IsNullOrEmpty(userFullName))
                        savedStatus = utils.SendVideoEmailLinkToAdministrator(Convert.ToString(HttpContext.Current.Session["userid"]), userFullName, videoTitle, recordId);
                }
            }
            return savedStatus;
        }

        private static Video SetVideoObject(string videoTitle, string alias, string keywords, string notes, string userId, Video video)
        {
            video.Id = Guid.NewGuid().ToString();
            video.Contributor = userId;
            video.Title = videoTitle;
            video.Alias = alias;
            video.Keywords = keywords;
            video.Notes = notes;
            video.Status = "Pending";
            video.Status = "Pending";
            video.DateRemoved = (DateTime)System.Data.SqlTypes.SqlDateTime.MaxValue;
            //video.DateRemoved = DateTime.Now.AddYears(20);
            video.DateUploaded = (DateTime)System.Data.SqlTypes.SqlDateTime.MinValue;
            //video.DateUploaded = DateTime.Now;

            return video;
        }


        [WebMethod]
        public static bool updateVideoStatus(string vidid, string status, string useremail, string userFullName, string filename, string declindedOptions, string adviceSuggestions, string firstname)
        {
            Boolean savedStatus = false;
            if (HttpContext.Current.Session["userid"] != null)
            {
                SqlConnection conn = new SqlConnection();
                SqlCommand query = new SqlCommand();
                savedStatus = DataLayer.UpdateVideoStatus(conn, query, vidid, status);
                if (savedStatus && status == "Accepted")
                    utils.SendAcceptedVideoEmail(useremail, filename, firstname);
                else if (savedStatus && status == "Declined")
                    utils.SendDeclineEmailMessage(useremail, filename, firstname, declindedOptions, adviceSuggestions);
            }
            return savedStatus;
        }

        [WebMethod]
        public static Boolean saveNewReason(string reason)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand query = new SqlCommand();
            Boolean status = false;
            status = DataLayer.AddNewDeclineVideoReason(conn, query, reason);
            return status;
        }

        [WebMethod]
        public static Dictionary<string, string> DoesEmailExistgs(string email)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand query = new SqlCommand();
            SqlDataReader data = null;
            Dictionary<string, string> status = new Dictionary<string, string>();
            status = DataLayer.DoesEmailExists(email, conn, query, data);
            return status;
        }
    }
}