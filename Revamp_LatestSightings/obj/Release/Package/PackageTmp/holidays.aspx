<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="holidays.aspx.cs" Inherits="Revamp_LatestSightings.holidays" %>

<asp:Content ID="holidays" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
                	
					<div class="row">
                    	<!-- LEFT Content BEGIN -->
						<div class="leftcol">
                        
                            <h1 class="main-title" style="margin-top:0px !important;">Holidays</h1>
                            <h4 style="text-align:center; font-weight:normal;">Book your holiday now and receive preferrential rates.</h4>
                            
                            <div class="clearfix"></div>
                            <div class="spacer small"></div>
                            
                            
                            <!-- Holidays BEGIN -->
                            <div class="blog-list-post triggerAnimation animated" data-animate="fadeIn">
                                <div class="blog-list-featured-image">
                                    <a href="#"><img alt="" src="images/vehi_3.jpg"></a>
                                    <!--<div class="playicon"><i class="fa fa-play"></i></div>-->
                                </div>
                                
                                <!-- Big Item BEGIN -->
                                <div class="blog-list-content">
                                	
									<div class="left" style="padding-top:10px;">
                                        <h4 style="width:auto; float:left;" >Discover Kruger Safaris</h4>
                                        <div class="right">
                                        	<a href="javascript:void(0);">
                                                <!--<div class="button">Enquire Now</div>-->
                                                <button type="button" class="btn btn-primary btn-md button" data-toggle="modal" data-target="#myModal">
                                                    Enquire Now
                                                </button>
                                        	</a>
                                        </div>
                                    </div>
                                    
                                    <div class="clearfix"></div>
                                                                        
                                </div>
                                <!-- Big Item END -->
                                
                                
                            </div>
                            
                            <div class="clearfix"></div>
                                <div class="spacer small"></div>
                                
                                <!-- 2 Smaller Items BEGIN -->
                                <div class="blog-grid">
                                    <div class="row">
                                    
                                        <div class="col-md-6 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="blog-grid-item triggerAnimation animated" data-animate="fadeInUp">
                                                <a class="img-link" href="3"><img alt="" src="images/On-game-drive.png"></a>
                                                <div class="holiday-list-content">
                                                    <div class="left">
                                                        <h4>Wild Wings Safaris</h4>
                                                        <div class="holidaybottom right">
                                                            <button type="button" class="btn btn-primary btn-md button" data-toggle="modal" data-target="#myModal">
                                                                Enquire Now
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                       </div>
                                       
                                       <div class="col-md-6 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="blog-grid-item triggerAnimation animated" data-animate="fadeInUp">
                                                <a class="img-link" href="3"><img alt="" src="images/Website.png"></a>
                                                <div class="holiday-list-content">
                                                    <div class="left">
                                                        <h4>Outlook Safaris</h4>
                                                        <div class="holidaybottom right">
                                                            <button type="button" class="btn btn-primary btn-md button" data-toggle="modal" data-target="#myModal">
                                                                Enquire Now
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                       </div>

                                       <div class="col-md-6 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="blog-grid-item triggerAnimation animated" data-animate="fadeInUp">
                                                <a class="img-link" href="3"><img alt="" src="images/plodge.png"></a>
                                                <div class="holiday-list-content">
                                                    <div class="left">
                                                        <h4>Outlook Safaris</h4>
                                                        <div class="holidaybottom right">
                                                            <button type="button" class="btn btn-primary btn-md button" data-toggle="modal" data-target="#myModal">
                                                                Enquire Now
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                       </div>
                                                
                                    </div>
                                </div>
                                <!-- 2 Smaller Items END -->
                            <!-- Holidays END -->
                            
                            <div class="clearfix"></div>
                            <div class="spacer sml"></div>
                            
                            <!-- Space for Bookings.com BEGIN -->
<%--                            <div class="comment-box">
                            	<p style="text-align:center">Space for Bookings.com search widget</p>
							</div>--%>
                            <!-- Space for Bookings.com END --> 
                            
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>
                            
                            <!-- Recommended palces to stay widget BEGIN -->
                            <!-- Recommended palces to stay widget END -->
                                                        
                        <!-- LEFT Content END -->
						</div>
                        
                        <!-- RIGHT Content BEGIN -->
						<div class="rightcol">
							<div id="sidebar-area">
                                                        
                            <% if (topFeaturedArticles != null && topFeaturedArticles.Count > 0){ %> 
                                <!-- Top Stories BEGIN -->
                                <h4 class="page-titles">Top Stories</h4>
                            
							    <div class="widget widget_recentposts">
                               
                                        <% foreach(var article in topFeaturedArticles){ %>
                                             <div class="media recent-posts">
									            <a href="/blog.aspx?id=<%=article.Id %>&cat=<%=article.CateogryId %>" class="pull-left"><img alt="" class="media-object sixtyBySixty" src="<%= ConfigurationManager.AppSettings["articleImagePath"] %>/<%=article.Url %>"></a>
									            <div class="media-body">
										            <h4 class="media-heading"><a href="/blog.aspx?id=<%=article.Id %>&cat=<%=article.CateogryId %>"><%=article.Title %></a></h4>
									            </div>
								            </div>
                                        <%} %>
                                
                                
							    </div>
                                <!-- Top Stories END -->
                            <%} %>
                            
                            <div class="clearfix"></div>
                            <asp:PlaceHolder ID="topTenContributors" runat="server"></asp:PlaceHolder>
                            <div class="clearfix"></div>
                            <div class="spacer small"></div>
                            <asp:PlaceHolder ID="topearningvideos" runat="server"></asp:PlaceHolder>
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>
                            
                            <!-- 300x250 AD -->
                            <div class="ad300">
                            <asp:PlaceHolder ID="ad300by50" runat="server"></asp:PlaceHolder>
							</div>
                            <!-- 300x250 AD -->
                                                        
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>

                            <!-- Latest Blogs BEGIN -->
                            <asp:PlaceHolder ID="plc_latestBlogs" runat="server" />
                            <!-- Latest Blogs END -->
                            
                            <div class="clearfix"></div>
                        	<div class="spacer small"></div>
                        
                            <!-- 300x250 AD -->
                            <div class="ad300">
                            	<asp:PlaceHolder ID="downloadapp" runat="server"></asp:PlaceHolder>
							</div>
                            <!-- 300x250 AD -->
                            
                            <div class="clearfix"></div>
                        	<div class="spacer small"></div>
                            
                            
							</div>
						</div>
                        <!-- RIGHT Content END -->
                        
                        
                        <asp:PlaceHolder ID="enquire" runat="server"></asp:PlaceHolder>
					</div>
				<!-- End Content Area -->

    <script src="<%= ResolveUrl("~/js/bootstrap.youtubepopup.min.js?v=10") %>"></script>
</asp:Content>