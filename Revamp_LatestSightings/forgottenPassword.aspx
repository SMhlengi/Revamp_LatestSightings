<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgottenPassword.aspx.cs" Inherits="Revamp_LatestSightings.forgottenPassword" %>

<asp:Content ID="forgotPassword" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <style>
        .sitemap {
            display: none !important;
        }

        .footer {
            position: absolute !important;
        }

    </style>
        <!-- Main Container Section -->			
    <div class="container panel-signup">
        <div id="page-content">

            <!-- Page Content Area -->
            <div id="content-inner">
                <!-- Regsiter -->
            
            <div class="panel transparentBackground">
                <div class="panel-body">
                    <br />
                    <h4 class="text-center mb5">Reset your Password</h4>                   
                    <div class="mb30"></div>
                    
                    <form action="signin.html" method="post" id="login">
                        <p class="">Enter your email address to reset your password.</p>
                        <div class="input-group form-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input type="email" class="form-control" placeholder="Email Address" id="email">
                        </div>
                        <div class="input-group form-group email">
                            <p class="text-danger">Email is required</p>
                        </div>
                        
                        <div class="clearfix">
                            <div class="row">
                                <div class="pull-right">
                                    <button type="button" class="btn btn-success submitEmail">Sign In <i class="fa fa-angle-right ml5"></i></button>
                                </div>
                                <div class="pull-right marginRightTen registerSpinner">
                                    <img src="<%=ResolveUrl("~/images/loading.gif")%>" />
                                </div>
                            </div> 
                            <div class="row successfullySentMail">
                                <div class="col-sm-12">
                                    <div class="alert alert-success welcomeBackMessage">                                    
                                        <strong>Mail has been successfully sent</strong><br />
                                        Please check your inbox to reset your password
                                    </div>
                                </div>
                            </div>
                            <div class="row successfullyNotSentMail">
                                <div class="col-sm-12">
                                    <div class="alert alert-danger welcomeBackMessage">                                    
                                        <strong>Error with sending mail<br /></strong>
                                        Please try again later
                                    </div>
                                </div>
                            </div>
                        </div>                  
                    </form>
                    
                </div>
            </div><!-- panel -->

            </div>
        </div>
    </div>

</asp:Content>
