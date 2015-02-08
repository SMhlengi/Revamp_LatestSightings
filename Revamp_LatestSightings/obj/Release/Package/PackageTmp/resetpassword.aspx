<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="resetpassword.aspx.cs" Inherits="Revamp_LatestSightings.resetpassword" %>

<asp:Content ID="resetpassword" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .sitemap {
            display: none !important;
        }

        .footer {
            position: absolute !important;
        }

    </style>

            <input type="hidden" value="<%=status["email"] %>" id="email" />

    <!-- Main Container Section -->			
    <div class="container panel-signup">
        <div id="page-content">

            <!-- Page Content Area -->
            <div id="content-inner">
                <!-- Regsiter -->
            
            <div class="panel transparentBackground">
                <div class="panel-body">
                    <br />
                    <h4 class="text-center mb5">Resetting your Password. </h4>                   
                    <div class="mb30"></div>
                    
                    <form action="signin.html" method="post" id="login">
                        <p class="">Hello <strong class="firstnameLastname"><%=status["firstname"] %> <%=status["lastname"] %></strong><br /> Please enter your new password</p>
                        <div class="input-group form-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" class="form-control" placeholder="Password" id="password">
                        </div>
                        <div class="input-group form-group password">
                            <p class="text-danger">Password is required</p>
                        </div>
                        <!-- Confirm Password -->
                        <div class="input-group form-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" class="form-control" placeholder="Confirm Password" id="confirmPassword">
                        </div>
                        <div class="input-group form-group confirmPassword">
                            <p class="text-danger">Please confirm your password</p>
                        </div>
                        <!-- end of Confirm Password -->
                        
                        <div class="clearfix">
                            <div class="row">
                                <div class="pull-right">
                                    <button type="button" class="btn btn-success resetPassword">Reset <i class="fa fa-angle-right ml5"></i></button>
                                </div>
                                <div class="pull-right marginRightTen registerSpinner">
                                    <img src="<%=ResolveUrl("~/images/loader9.gif")%>" />
                                </div>
                            </div> 
                            <div class="row passwordsDoNotMatch">
                                <div class="col-sm-12">
                                    <div class="alert alert-danger welcomeBackMessage">                                    
                                        <strong>Passwords do not match</strong>
                                    </div>
                                </div>
                            </div>
                            <div class="row succesfullyUpdateEmail">
                                <div class="col-sm-12">
                                    <div class="alert alert-success welcomeBackMessage">                                    
                                        <strong>Password Successfully udpated<br /></strong>
                                        Redirecting to login page
                                    </div>
                                </div>
                            </div>
                            <div class="row errorWithEmailUpdate">
                                <div class="col-sm-12">
                                    <div class="alert alert-success welcomeBackMessage">                                    
                                        <strong>Error with update<br /></strong>
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