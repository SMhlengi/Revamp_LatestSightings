<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Revamp_LatestSightings._default" %>

<asp:Content ID="homepage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
					
                    <!-- Billboard BEGIN -->
                    <div class="post-slider">
                    
						<div class="col-md-9">
							<div id="slider" class="slides Xowl-carousel">
							
                            <% if (topFeaturedArticles != null && topFeaturedArticles.Count > 0){ %>
                                <%foreach (var featuredArticle in  topFeaturedArticles){%>
								    <div class="item">
									    <div class="overlay">
										    <a href="/blog.aspx?id=<%=featuredArticle.Id %>&cat=<%=featuredArticle.CateogryId  %>">
											    <h3><%=featuredArticle.Title %></h3>
											    <p><%= featuredArticle.ArticleBody %></p>
										    </a>
									    </div>
									    <img alt="" class="EightFiftyFiveBy474" src="<%=ConfigurationManager.AppSettings["articleImagePath"] %>/<%=featuredArticle.Url %>" />
								    </div>
                                <%} %>
                            <%} %>
							</div>
						</div>
                        
						<div class="col-md-3">
							<div id="thumbnails" class="thumbs Xowl-carousel">
                                <% if (topFeaturedArticles != null && topFeaturedArticles.Count > 0)
                                   {
                                       var counter = 0; %>
                                    <%foreach (var featuredArticle in topFeaturedArticles){ %>
								            <div class="item <% if (counter == 0){ %> active<%} %>"><img alt="" class="sixtyBySixty" src="<%=ConfigurationManager.AppSettings["articleImagePath"] %>/<%=featuredArticle.Url %>" /><span><%=featuredArticle.Title %></span></div>
                                            <% counter += 1; %>
                                    <%} %>
                                <%} %>
							</div>
						</div>
                        						
						<div class="clearfix"></div>
                        
					</div>
                    <!-- Billboard END -->
                    
                    <!-- Latest Sightings BEGIN -->
					<div class="portfolio-related-posts triggerAnimation animated displayNone" data-animate="fadeInUp">
						<h4 class="page-titles">Latest Sightings</h4>
                            
                        <!--<div class="row" style="text-align:center; font-size:12px; font-family:Arial, Helvetica, sans-serif; padding-bottom:20px;">
                            	<div class="fa fa-hand-o-left" style="padding-right:15px; font-size:16px;"></div>
                                Swipe from left to right to view the Latest Sightings
                                <div class="fa fa-hand-o-right" style="padding-left:15px; font-size:16px;"></div>
                            </div>-->
							
                        <div id="owl-slider">
                                
							<div class="related-portfolio-item item">
                                    <a href="#"><img alt="" src="images/relatedposts-720x720.gif"></a>
                                    <div class="portfolio-info-overlay"></div>
                                    <div class="portfolio-info-hover">
                                        <div class="related-portfolio-icon"><i class="fa fa-eye"></i></div>
                                        <h3>2 Lions Sleeping</h3>
                                        <div class="related-portfolio-categories">34 km north of gate 7, under the tree of love</div>
                                        <a href="#" class="read-more"><i class="fa fa-arrow-right"></i></a>
                                    </div>
								</div>
                                    
							<div class="related-portfolio-item item">
                                    <a href="#"><img alt="" src="images/relatedposts-720x720.gif"></a>
                                    <div class="portfolio-info-overlay"></div>
                                    <div class="portfolio-info-hover">
                                        <div class="related-portfolio-icon"><i class="fa fa-eye"></i></div>
                                        <h3>Giraffes Drinking</h3>
                                        <div class="related-portfolio-categories">34 km north of gate 7, under the tree of love</div>
                                        <a href="#" class="read-more"><i class="fa fa-arrow-right"></i></a>
                                    </div>
								</div>
                                    
							<div class="related-portfolio-item item">
                                    <a href="#"><img alt="" src="images/relatedposts-720x720.gif"></a>
                                    <div class="portfolio-info-overlay"></div>
                                    <div class="portfolio-info-hover">
                                        <div class="related-portfolio-icon"><i class="fa fa-eye"></i></div>
                                        <h3>Buffaloes</h3>
                                        <div class="related-portfolio-categories">34 km north of gate 7, under the tree of love</div>
                                        <a href="#" class="read-more"><i class="fa fa-arrow-right"></i></a>
                                    </div>
								</div>
                                    
							<div class="related-portfolio-item item">
                                    <a href="#"><img alt="" src="images/relatedposts-720x720.gif"></a>
                                    <div class="portfolio-info-overlay"></div>
                                    <div class="portfolio-info-hover">
                                        <div class="related-portfolio-icon"><i class="fa fa-eye"></i></div>
                                        <h3>Leopard Cub Spotted</h3>
                                        <div class="related-portfolio-categories">34 km north of gate 7, under the tree of love</div>
                                        <a href="#" class="read-more"><i class="fa fa-arrow-right"></i></a>
                                    </div>
								</div>
                                    
							<div class="related-portfolio-item item">
                                    <a href="#"><img alt="" src="images/relatedposts-720x720.gif"></a>
                                    <div class="portfolio-info-overlay"></div>
                                    <div class="portfolio-info-hover">
                                        <div class="related-portfolio-icon"><i class="fa fa-eye"></i></div>
                                        <h3>2 Lions Sleeping</h3>
                                        <div class="related-portfolio-categories">34 km north of gate 7, under the tree of love</div>
                                        <a href="#" class="read-more"><i class="fa fa-arrow-right"></i></a>
                                    </div>
								</div>
                                    
							<div class="related-portfolio-item item">
                                    <a href="#"><img alt="" src="images/relatedposts-720x720.gif"></a>
                                    <div class="portfolio-info-overlay"></div>
                                    <div class="portfolio-info-hover">
                                        <div class="related-portfolio-icon"><i class="fa fa-eye"></i></div>
                                        <h3>Giraffes Drinking</h3>
                                        <div class="related-portfolio-categories">34 km north of gate 7, under the tree of love</div>
                                        <a href="#" class="read-more"><i class="fa fa-arrow-right"></i></a>
                                    </div>
								</div>
                                
						</div>
					</div>
                    <!-- Latest Sightings END -->
                    
					<div class="row">
                    	<!-- LEFT Content BEGIN -->
						<div class="leftcol">
                           <% if (featuredVideos != null && featuredVideos.Count > 0){ %>
                                <!-- Spotlight Video BEGIN -->
                                <h4 class="page-titles">Spotlight Video</h4>
                                
                                <div class="blog-list-post triggerAnimation animated" data-animate="fadeIn">
                                    <div class="blog-list-featured-image">
                                        <a href="javascript:void(0);"><img class="spotLightImage youtube" src="<%=featuredVideos[0].Url2 %>" rel="<%=featuredVideos[0].YouTubeId %>"></a>
                                        <!--<div class="playicon"><i class="fa fa-play"></i></div>-->
                                    </div>
                                            
                                    <div class="blog-list-content">
                                        <h2 class="blog-list-title"><a href="#"><%= featuredVideos[0].Title %></a></h2>
                                        <p><%=featuredVideos[0].Description %></p>
                                        <div class="views">230 views</div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <!-- Spotlight Video END -->
                           <%} %>
                        
                        	<div class="spacer"></div>
                            
                            <%if (featuredVideos != null && featuredVideos.Count > 0){ %>
                                <!-- Hot right Now BEGIN -->
                                <h4 class="page-titles">Hot Right Now</h4>
                                    <div class="blog-grid">
                                        <div class="row">
                                            <% if (featuredVideos.Count > 1){ %>
                                            <div class="col-md-6 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                                        <div class="blog-grid-item triggerAnimation animated" data-animate="fadeInUp">
                                                            <a class="img-link" href="3"><img class="youtube" src="<%=featuredVideos[1].Url2 %>" rel="<%=featuredVideos[1].YouTubeId %>"><div class="gridplayicon"><i class="fa fa-play"></i></div></a>
                                                            <div class="blog-grid-controls">
                                                                <a href="#" title="Share to Facebook"><i class="fa fa-facebook-square"></i></a>
                                                                <a href="#" title="Share to Google"><i class="fa fa-google"></i></a>
                                                                <a href="#" title="Share to Twitter"><i class="fa fa-twitter"></i></a>
                                                            </div>
                                                            <div class="blog-grid-content">
                                                                <h3><a href="blog-sidebar.html"><%=featuredVideos[1].Title %></a></h3>
                                                                <p>948621 views</p>
                                                            </div>
                                                        </div>
                                            </div>
                                            <%} %>
                                            <% if (featuredVideos.Count > 2){ %>
                                                <div class="col-md-6 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                                            <div class="blog-grid-item triggerAnimation animated" data-animate="fadeInUp">
                                                                <a class="img-link" href="3"><img class="youtube" src="<%=featuredVideos[2].Url2 %>" rel="<%=featuredVideos[2].YouTubeId %>"><div class="gridplayicon"><i class="fa fa-play"></i></div></a>
                                                                <div class="blog-grid-controls">
                                                                    <a href="#" title="Share to Facebook"><i class="fa fa-facebook-square"></i></a>
                                                                    <a href="#" title="Share to Google"><i class="fa fa-google"></i></a>
                                                                    <a href="#" title="Share to Twitter"><i class="fa fa-twitter"></i></a>
                                                                </div>
                                                                <div class="blog-grid-content">
                                                                    <h3><a href="blog-sidebar.html"><%=featuredVideos[2].Title %></a></h3>
                                                                    <p>923 views</p>
                                                                </div>
                                                            </div>
                                                </div>
                                            <%} %>
                                        </div>
                                        
                                        <div class="row">
                                            <% if (featuredVideos.Count > 3){ %>
                                                <div class="col-md-6 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                                        <div class="blog-grid-item triggerAnimation animated" data-animate="fadeInUp">
                                                                <a class="img-link" href="3"><img class="youtube" src="<%=featuredVideos[3].Url2 %>" rel="<%=featuredVideos[3].YouTubeId %>"><div class="gridplayicon"><i class="fa fa-play"></i></div></a>
                                                                <div class="blog-grid-controls">
                                                                    <a href="#" title="Share to Facebook"><i class="fa fa-facebook-square"></i></a>
                                                                    <a href="#" title="Share to Google"><i class="fa fa-google"></i></a>
                                                                    <a href="#" title="Share to Twitter"><i class="fa fa-twitter"></i></a>
                                                                </div>
                                                                <div class="blog-grid-content">
                                                                    <h3><a href="blog-sidebar.html"><%=featuredVideos[3].Title %></a></h3>
                                                                    <p>948621 views</p>
                                                                </div>
                                                            </div>
                                                    </div>
                                            <%} %>
                                             <% if (featuredVideos.Count > 4){ %>
                                                <div class="col-md-6 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                                    <div class="blog-grid-item triggerAnimation animated" data-animate="fadeInUp">
                                                            <a class="img-link" href="3"><img class="youtube" src="<%=featuredVideos[4].Url2 %>" rel="<%=featuredVideos[4].YouTubeId %>"><div class="gridplayicon"><i class="fa fa-play"></i></div></a>
                                                            <div class="blog-grid-controls">
                                                                <a href="#" title="Share to Facebook"><i class="fa fa-facebook-square"></i></a>
                                                                <a href="#" title="Share to Google"><i class="fa fa-google"></i></a>
                                                                <a href="#" title="Share to Twitter"><i class="fa fa-twitter"></i></a>
                                                            </div>
                                                            <div class="blog-grid-content">
                                                                <h3><a href="blog-sidebar.html"><%=featuredVideos[4].Title %></a></h3>
                                                                <p>948621 views</p>
                                                            </div>
                                                        </div>
                                                </div>
                                            <%} %>
                                        </div>
                                        
                                    </div>
                                <!-- Hot right Now END -->
                            <%} %>
                        
                        	<div class="clearfix"></div>
                        	<div class="spacer"></div>
                        
                            <!-- Space for web ads BEGIN -->
                            <div class="comment-box">
                            	<p style="text-align:center">Space for web ads</p>
							</div>
                            <!-- Space for web ads END --> 
                            
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>
                            
                            <!-- Latest Galleries BEGIN -->
                            <asp:PlaceHolder ID="latestGalleries" runat="server"></asp:PlaceHolder>
                            <!-- Latest Galleries END -->  
                            
                       
                        <!-- LEFT Content END -->
						</div>
                        
                        <!-- RIGHT Content BEGIN -->
						<div class="rightcol">
							<div id="sidebar-area">
                            
                            <!-- Top 10 BEGIN -->
                                <asp:PlaceHolder ID="monthlyTopContributors" runat="server"></asp:PlaceHolder>
                            <!-- Top 10 END -->
                            
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>
                            
                            <!-- 300x250 AD -->
                            <div class="ad300">
                            	<img src="images/ads-300x250.gif" width="300" height="250">
							</div>
                            <!-- 300x250 AD -->
                            
                            <div class="clearfix"></div>
                        	<div class="spacer small"></div>
                        
                            <!-- 300x250 AD -->
                            <div class="ad300">
                            	<img src="images/app.gif" width="300" height="250">
							</div>
                            <!-- 300x250 AD -->
                            
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>

                            <!-- Latest Blogs BEGIN -->
                                <asp:PlaceHolder ID="plc_latestBlogs" runat="server" />                            
                            <!-- Latest Blogs END -->
                            
								
								
								
												
							</div>
						</div>

                        <!-- Modal Pop-Up BEGIN -->
                        <div id="popup_container">
                	        <div id="over_lay"></div>
                	        <div class="popup_ex">
                  		
                                <div id="close_button"><a href="#"><i class="fa fa-times-circle "></i></a></div>
                        
                                <!-- Container -->
                                <div class="lightboxcontainer">
                        	
                                    <!-- Photo -->
                                    <div class="col-md-9 col-sm-12">
                            
        <%--                            	<div class="slider-container portfolio-featured-gallery" style="margin:0 !important">
								        <div class="image-slider">
									        <div class="image-gallery-item item">
										        <img alt="" src="images/slideshow-1140x390.gif">
									        </div>
									        <div class="image-gallery-item item">
										        <img alt="" src="images/slideshow-1140x390.gif">
									        </div>
									        <div class="image-gallery-item item">
										        <img alt="" src="images/slideshow-1140x390.gif">
									        </div>
									        <div class="image-gallery-item item">
										        <img alt="" src="images/slideshow-1140x390.gif">
									        </div>
								        </div>
								        </div>--%>
							            <div class="portfolio-featured-image triggerAnimation animated" style="margin:0 !important">
								            <img alt="" src="images/slideshow-1140x390.gif" class="imageDialog">
							            </div>
                            
                                    </div>
                            
                                    <!-- Photo Details & Social Sharing -->
                                    <div class="col-md-3 col-sm-12">
                            
                            	        <div class="spacer small"></div>
                                
                            	        <div class="left"><img src="images/FBandTwitter.jpg" width="202" height="20"></div>
                                
                                        <div class="clearfix"></div>
                                        <div class="spacer"></div>
                                
                                        <h4> Battle of the Kruger </h4>
                                
                                        <div class="clearfix"></div>
                                        <div class="spacer small"></div>
                                
                                        <p>
                                        Location: Kruger National Park <br>
                                        Submitted by: LionWhisperer
                                        </p>
                                
                                        <div class="clearfix"></div>
                                        <div class="spacer small"></div>
                                
                                        <div class="left">
                                	        <a href="#" title="Share to Facebook"><i style="font-size:36px; padding-right:10px;" class="fa fa-facebook-square"></i></a>
                                            <a href="#" title="Share to Google"><i style="font-size:36px; padding-right:10px;" class="fa fa-google"></i></a>
                                            <a href="#" title="Share to Twitter"><i style="font-size:36px; padding-right:10px;" class="fa fa-twitter"></i></a>
                                        </div>
                                
                                        <div class="clearfix"></div>
                                        <div class="spacer small"></div>
                                
                                        <!-- Facebook Comments BEGIN -->
                                        <h4 class="page-titles">Comments</h4>
                                        <div class="blog-grid">
                                            <img src="images/FBComments_sml.jpg" width="587" height="682"> 
                                        </div>
                                        <!-- Facebook Comments END -->
                                
                                  </div>
                        
                                </div> 
                  		        <!-- Container -->
                  		
                	        </div>
              	        </div>
                        <!-- Modal Pop-Up END3 -->

					</div>
				<!-- End Content Area -->
    <script src="<%= ResolveUrl("~/js/galleryviewmodal.js") %>"></script>
    <script src="<%= ResolveUrl("~/js/homePage.js?v=5") %>"></script>
    <script src="<%= ResolveUrl("~/js/bootstrap.youtubepopup.min.js?v=10") %>"></script>

</asp:Content>