<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="partnership.aspx.cs" Inherits="Revamp_LatestSightings.partnership" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>

<asp:Content ID="partnership" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
                    
					<div class="row">
                    	<!-- LEFT Content BEGIN -->
						<div class="leftcol">
                        
                            <h1 class="main-title" style="margin-top:0px !important;">Partnership</h1>
                            <h4 style="text-align:center; font-weight:normal;">Sign up as a contributor and start earning money with our Partnership Program.</h4>
                            
                            <div class="clearfix"></div>
                            <div class="spacer small"></div>
                            
                            
                            <!-- Partnerships BEGIN -->
                            
                            	<!-- Big Image BEGIN -->
                                <div class="blog-list-post triggerAnimation animated" data-animate="fadeIn">
                                    
                                    <div class="blog-list-featured-image">
                                        <a href="#"><img alt="" src="images/about-650x650.gif"></a>
                                        <!--<div class="playicon"><i class="fa fa-play"></i></div>-->
                                    </div>
                                    <div class="blog-list-content">
                                        
                                        <div class="left" >
                                            <div class="col-md-4 button singup">Sign Up</div>
                                            <div class="col-md-4 button contactus">Contact Us</div>
                                        </div>
                                        
                                        <div class="clearfix"></div>
                                                                            
                                    </div>
                                </div>
                                <!-- Big Image END -->
                                
                                <div class="clearfix"></div>
                                <div class="spacer small"></div>
                                
                                <!-- Big Video BEGIN -->
                                <div class="blog-list-featured-image">
                                    <a href="#"><img alt="" src="images/video-16x9.gif"></a>
                                </div>
                                <!-- Big Video END -->
                                
                                <div class="clearfix"></div>
                                <div class="spacer small"></div>
                                
                                <!-- Social BEGIN -->
                                <div class="left">                                    
                                    <div class="right">
                                    <a href="javascript:void(0);" title="Share to Facebook" class="aboutUsFacebookShare"><i style="font-size:36px; padding-right:10px;" class="fa fa-facebook-square"></i></a>
                                    <!--<a href="#" title="Share to Google"><i style="font-size:36px; padding-right:10px;" class="fa fa-google"></i></a>-->
                                    <a href="javascript:void(0);" title="Share to Twitter" class="aboutUsTwitterShare"><i style="font-size:36px; padding-right:10px;" class="fa fa-twitter"></i></a>
                                    </div>
                            	</div>
                                <!-- Social END -->
                                
                            <!-- Partnerships END -->
                            
                            <div class="clearfix"></div>
                            <div class="spacer sml"></div>
                            
                            <!-- Recommended palces to stay widget BEGIN -->
                            <h4 class="page-titles">Join the Conversation</h4>
                            <div class="fb-comments" data-href="http://latestsightings.socialengine.co.za/partnership" data-numposts="5" data-colorscheme="dark" data-width="750"></div>
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
					</div>
				<!-- End Content Area -->
        <script src="<%= ResolveUrl("~/js/bootstrap.youtubepopup.min.js?v=10") %>"></script>
</asp:Content>