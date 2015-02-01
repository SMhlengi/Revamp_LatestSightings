<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Revamp_LatestSightings.dashboard" %>

<asp:Content ID="dashboard" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .sitemap {
            display: none;
        }

        .footer {
            position: absolute;
        }

    </style>
    <!-- Main Container Section -->			
    <div class="container">
        <div id="page-content">

            <!-- Page Content Area -->
            <div id="content-inner">
                <asp:PlaceHolder id="completeprofile" runat="server"></asp:PlaceHolder>
                                        <!--<h4 class="addVideoLabel">To add a video, click the "Add Video" button</h4>-->
                                        <%if (IsPostBack == false){ %>
                                            <div class="row tncRow">
                                                <div class="col-md-9">
                                                    <div class="alert alert-danger">
                                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                                        <strong>Please agree to Terms and Conditions before uploading video</strong> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row tncText">
                                                <div class="col-md-3">
                                                      <div class="checkbox">
                                                        <label>
                                                          <input type="checkbox" id="chk_terms">I Accept Terms and Conditions
                                                        </label>
                                                      </div>
                                                </div>
                                                <div class="col-md-4 viewterms">
                                                    <asp:Button CssClass="btn btn-info" ID="downloadTandC" runat="server" Text="Download Terms and Conditions" OnClick="downloadTandC_Click" />
                                                    <!--<p class="text-info" data-toggle="modal" data-target="#myModal">[ <strong>View Terms</strong> ]</p>-->
                                                </div>
                                            </div>
                                            <div class="row tncRow" style="margin-bottom:1px;">
                                                <div class="col-md-9">
                                                    <p class="text-primary emailFile"><strong>Please Note: </strong> If your file is larger than 2Gb, please <a href="javascript:void(0)" class="launchNativeEmailClient">contact us</a> [ videos@latestsightings.com ]</p>
                                                </div>
                                            </div>
                                        <%} %>
                                        <asp:PlaceHolder ID="addVideoContent" runat="server" />
            </div>
        </div>
    </div>


</asp:Content>