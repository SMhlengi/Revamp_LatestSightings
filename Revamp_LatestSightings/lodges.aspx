<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lodges.aspx.cs" Inherits="Revamp_LatestSightings.lodges" %>

<%@ Register Src="~/uc_StyleSheets.ascx" TagName="sheets" TagPrefix="style" %>
<%@ Register Src="~/uc_JavaScripts.ascx" TagName="scripts" TagPrefix="java" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Loading Styles -->    
    <style:sheets runat="server" id="allstyleSheets"></style:sheets>
    <link rel="icon" type="image/png" href="<%= ResolveUrl("~/images/favicon.ico") %>">
    <script src="<%= ResolveUrl("~/js/modernizr.custom.js") %>"></script>
    <script src="<%= ResolveUrl("~/js/jquery-1.11.1.min.js") %>"></script>
    <script src="<%= ResolveUrl("~/js/jquery.migrate.js") %>"></script>
</head>
<body>
		<!-- Main Container Section -->
        <div class="lodge-container">	
		<div class="container" style="width:90% !important">
			<div id="page-content">

				<!-- Page Content Area -->
				<div id="content-inner">
                	<div class="row">
                        <div class="col-md-12">
                            
                            <!-- Column 1 -->
                            <div class="col-md-4">
                                <% if (topFiveTingers != null && topFiveTingers.Count > 0){ %>
                            	<!-- Top 10 BEGIN -->
                                <h4 class="page-titles">Top 5 
                                    <% if (!String.IsNullOrEmpty(lodgeName)){%> 
                                        <%= lodgeName %>
                                    <%} %>
                                    Tingers</h4>
                                
                                <div class="table-responsive">
                                  <table class="table table-striped">
                                    
                                    <tr>
                                      <td>Username</td>
                                      <td>Today's Tingers</td>
                                    </tr>

                                    <% foreach(var tinger in topFiveTingers){%>
                                        <tr>
                                          <td><%= tinger["username"] %></td>
                                          <td><%= tinger["tingsTotal"] %></td>
                                        </tr>
                                      <%} %>
                                    
                                  </table>
                                  
                                </div>
                                <!-- Top 10 END -->
                                <%} %>
                                
                                <div class="clearfix spacer"></div>
                                                                
                                <!-- Prizes BEGIN -->
                                <h4 class="page-titles">Prizes for Top Tingers</h4>
                                <p style="color:#ff9900;">
                                    <%if (!String.IsNullOrEmpty(prizes)){ %>
                                        <%= HttpUtility.HtmlDecode(prizes) %>
                                    <%} %>
                                </p>
                                <!-- Prizes END -->
                                
                            </div>
                            <!-- Column 1 -->
                            
                            <!-- Column 2 -->
                          <div class="col-md-4">
                           	  	<h4 class="page-titles"> 
                                    <% if (!String.IsNullOrEmpty(lodgeName)){%> 
                                        <%= lodgeName %>
                                    <%} %>
                                         Lodge Tings</h4>
                                
                              	<img src="<%= ResolveUrl("~/images/lodges3.jpg") %>" width="100%">

								<div class="clearfix spacer small"></div>
                                
                                <h3><a href="#">Giraffes drinking water</a></h3>

                                <p>
                                Tinged by: Allan Smith <br>
                                All other information displayed here   
                                </p>
                                
                          </div>
                            <!-- Column 2 -->
                            
                            <!-- Column 3 -->
                            <div class="col-md-4">
                           	  	<h4 class="page-titles">Hot Spots</h4>
                            	<img src="<%= ResolveUrl("~/images/LodgeMap1.jpg") %>" width="100%"> 
                                
                                <div class="clearfix spacer small"></div>

                                <p style="color:#ff9900;">
                                Keys go here
                                </p>
                            </div>
                            <!-- Column 3 -->
                                                        
                        </div>
                    </div>
                    
                    <div class="clearfix"></div>
                    
                    <!-- FOOTER -->
                    <div class="row">
                    	<div class="col-md-12" style="background-color:#783f04; padding:20px 20px 0px 20px ; float:left; height:auto; width:100%;">
                        
                        	<div class="col-md-8" style="margin-bottom:20px !important; float:left;">
                            	<img alt="" src="<%= ResolveUrl("~/images/logo-horizontal-new.png") %>" style="float:left; padding-right:30px;">
                            	<img src="<%= ResolveUrl("~/images/NgwenyaLodge.jpg") %>" style="float:left; padding-right:30px;">
                                <h3 style="float:left; color:#ff9900;">Sightings Board</h3> 
                            </div>
                            
                        	<div class="col-md-4" style="margin-bottom:20px;">
                            	<div class="appstore">
                                	<p>Download the Latest Sightings App to your phone. Available for iOS and Android.</p>
                                    <a href="#"><img src="<%= ResolveUrl("~/images/Download_on_the_App_Store_Badge_US-UK_135x40.png") %>"></a>
                                    <a href="#"><img src="<%= ResolveUrl("~/images/en_generic_rgb_wo_60.png") %>" ></a>
                                </div>
                            </div>
                        
                        </div>
                    </div>
                    <!-- FOOTER -->
                    
                    
                    
                </div>
				<!-- End Content Area -->
                
			</div>
		</div>
        </div>
		<!-- End Container -->
    
    <!-- Javascripts -->
    <java:scripts runat="server" id="javascriptstag"></java:scripts>
</body>
</html>
