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
    <script>
        function ShowSpinner() {
            $(".registerSpinner").show();
        }
    </script>
    <form id="mainform" runat="server">
                <div class="mainpanel">
                    <div class="pageheader">
                        <div class="media">
                            <div class="pageicon pull-left">
                                <i class="fa fa-home"></i>
                            </div>
                            <div class="media-body">
                                <ul class="breadcrumb">
                                    <li><a href=""><i class=""></i></a></li>
                                </ul>
                                 <h4>Dashboard 
                                    <% if (CanUserViewFinancials == true){ %>
                                    <span class="label label-warning viewfinancials" style="font-size: 12px; cursor:pointer">
                                        View Financials
                                    </span>
                                    <%} %>
                                </h4> 
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                        <!-- beging tabs -->
                        <div class="row">
                            <div class="col-md-12">
                                <!--<h5 class="lg-title mb10">Basic Tabs</h5>-->
                                <!--<p class="mb20">Add quick, dynamic tab functionality to transition through panes of local content.</p>-->
                                
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs">
                                    <% if (IsPostBack || ViewAddVideo)
                                       { %>
                                        <li id="profilelist" class=""><a href="#profile" id="profileTab" data-toggle="tab"><strong>Profile</strong></a></li>
                                        <li id="addvideolist" class="active"><a href="#addvideo" id="addvideoTab" data-toggle="tab"><strong>Add Video</strong></a></li>
                                        <li id="videolistlist" class=""><a href="#videolist" id="videoListTab" data-toggle="tab"><strong>Video List</strong></a></li>
                                    <%}else{ %>
                                        <li id="Li1" class="active"><a href="#profile" id="A1" data-toggle="tab"><strong>Profile</strong></a></li>
                                        <li id="Li2" class=""><a href="#addvideo" id="a2" data-toggle="tab"><strong>Add Video</strong></a></li>
                                        <li id="Li3" class=""><a href="#videolist" id="A3" data-toggle="tab"><strong>Video List</strong></a></li>
                                    <%} %>
                                </ul>
        
                                <!-- Tab panes -->
                                <div class="tab-content mb30">
                                    <div class="tab-pane <%if (IsPostBack == false && ViewAddVideo == false)
                                                           { %>active <%} %> disabled" id="profile">
                                        <asp:PlaceHolder ID="content" runat="server" />  
                                    </div><!-- tab-pane -->
                                  
                                    <div class="tab-pane  <%if (IsPostBack == true || ViewAddVideo == true)
                                                            { %>active <%} %> disabled" id="addvideo">
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
                                                    <p class="text-primary emailFile"><strong style="color:white;">Please Note: </strong> If your file is larger than 2Gb, please <a href="javascript:void(0)" class="launchNativeEmailClient">contact us</a> [ videos@latestsightings.com ]</p>
                                                </div>
                                            </div>
                                        <%} %>
                                        <asp:PlaceHolder ID="addVideoContent" runat="server" />
                                    </div><!-- tab-pane -->
                                  
                                    <div class="tab-pane disabled" id="videolist">
                                        <h4 class="nomargin">Video List</h4>
                                        <!--<p>About content goes here</p> -->
                                        <asp:PlaceHolder ID="videoListcontent" runat="server" />
                                    </div><!-- tab-pane -->
                                  
                                </div><!-- tab-content -->
                                
                            </div>
                        </div>
                        <!-- end tabs -->  
                    </div><!-- contentpanel -->
                    <!-- terms and condition modals -->
                    <div class="modal fade" id='myModal' tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                      <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                          <div class="modal-header">
                            <!--<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button> -->
                            <h4 class="modal-title" id="myModalLabel">Terms and conditions template for website usage </h4>
                          </div>
                          <div class="modal-body">
                              <asp:PlaceHolder ID="termsandCs" runat="server" />
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <!--<button type="button" class="btn btn-primary">Save changes</button>-->
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- end of terms and conditions modal -->
                    
                </div>
    </form>
    <script>
        var profileComplete = "<%= profileComplete %>";
        if (profileComplete == "False") {
            $("#addvideoTab").attr("href", "javascript:void(0);");
            $("#addvideoTab").parent().attr("class", "disabled");
            $("#videoListTab").attr("href", "javascript:void(0);");
            $("#videoListTab").parent().attr("class", "disabled");
        }

        $(".viewfinancials").click(function () {
            location.href = "http://lscms.socialengine.co.za/login";
        });
    </script>


</asp:Content>