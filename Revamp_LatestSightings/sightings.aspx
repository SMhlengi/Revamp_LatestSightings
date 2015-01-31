<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sightings.aspx.cs" Inherits="Revamp_LatestSightings.sightings" %>

<asp:Content ID="sightings" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

		<!-- Main Container Section -->			
		<div class="container">
			<div id="page-content">
			
				<!-- Page Content Area -->
				<div id="content-inner">
                    
					<div class="row">
                    	<!-- LEFT Content BEGIN -->
						<div class="leftcol">
                        
                        <h1 class="main-title" style="margin-top:0px !important;">Latest Sightings</h1>
                            
                            <!-- Filter Options BEGIN -->
                            <div class="box">
                            
                            	<h7 style="font-size:16px; font-weight:600;">Filter By</h7>
                                <div class="spacer small"></div>
                                
                                <div class="left">
                                    <div class="dropdown">
                                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                                            South Africa
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Countries</a></li>
                                        </ul>                                    
                                    </div>
                                
                                    <div class="dropdown">
                                        <button class="btn btn-default dropdown-toggle" type="button" id="Button1" data-toggle="dropdown" aria-expanded="true">
                                            Park
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Parks</a></li>
                                        </ul>
                                    </div>
                                
                                    <div class="dropdown">
                                        <button class="btn btn-default dropdown-toggle" type="button" id="Button2" data-toggle="dropdown" aria-expanded="true">
                                            Area
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Areas</a></li>
                                        </ul>
                                    </div>
                                    
                                    <a class="filterlinks" href="#" > Area 1 <i class="fa fa-minus-circle"></i> </a>
                                    <a class="filterlinks" href="#"> Area 2 <i class="fa fa-minus-circle"></i> </a>
                                    <a class="filterlinks" href="#"> Area 3 <i class="fa fa-minus-circle"></i> </a>
                                    
                                </div>
                                
                                <div class="left">
                                    <div class="dropdown">
                                        <button class="btn btn-default dropdown-toggle" type="button" id="Button3" data-toggle="dropdown" aria-expanded="true">
                                            Animal
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Animals</a></li>
                                        </ul>                                    
                                    </div>
                                    
                                    <a class="filterlinks" href="#" > Lions <i class="fa fa-times-circle-o"></i> </a>
                                    <a class="filterlinks" href="#"> Giraffes <i class="fa  fa-times-circle-o"></i> </a>
                                    <a class="filterlinks" href="#"> Leopards <i class="fa fa-minus-circle"></i> </a>
                                    <a class="filterlinks" href="#"> Hippos <i class="fa fa-minus-circle"></i> </a>
                                    
                                </div>
                                
                                <div class="clearfix"></div>
                                    
                            </div>
                            <!-- Filter Options END -->
                            
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>
                            
                            <!-- Slideshow BEGIN -->
                            <div class="slider-container portfolio-featured-gallery" style="margin:0 !important">
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
							</div>
                            
                            <div class="left">
                                <div class="col-md-3 button">Picture</div>
                                <div class="col-md-3 button">View Map</div>
                            	<a class="col-md-3 filterlinks" href="#">View in-app comments <i class="fa fa-comments"></i> </a>
                            </div>
                            
                            <div class="clearfix"></div>
                            <div class="spacer small"></div>
                            
                            <h3 style="text-align:center;"> 2 Giraffes drinking at the waterhole.. Like father like son</h3>
                            
                            <div class="clearfix"></div>
                            <div class="spacer small"></div>
                            
                            <div class="left">
                       	    	<img src="images/FBandTwitter.jpg" width="202" height="20"> 
                                <div class="right">
                                	<a href="#" title="Share to Facebook"><i style="font-size:36px; padding-right:10px;" class="fa fa-facebook-square"></i></a>
                                    <a href="#" title="Share to Google"><i style="font-size:36px; padding-right:10px;" class="fa fa-google"></i></a>
                                    <a href="#" title="Share to Twitter"><i style="font-size:36px; padding-right:10px;" class="fa fa-twitter"></i></a>
                                </div>
                            </div>
                            
                            <p>
                                H4-1 Kruger National Park, Just east of Nkhulu<br>
                                Date: 06/12/14 @ 12:56:04 pm<br>
                                Visibility: <i style="color:#ff9900;" class="fa fa-star"></i><i style="color:#ff9900;" class="fa fa-star"></i><i style="color:#ff9900;" class="fa fa-star"></i><i style="color:#ff9900;" class="fa fa-star"></i><i style="color:#ff9900;" class="fa fa-star"></i> 5/5<br>
                                Tinged by Fannie<br><br>
                                <a href="#" style="color:#ff9900;"> View Location in Google maps</a>
                            </p>
                            
                          <!-- Slideshow END -->
                            
                            <div class="clearfix"></div>
                            <div class="spacer sml"></div>
                            
                            <!-- Facebook Comments BEGIN -->
                            <h4 class="page-titles">Join the Conversation</h4>
                            <div class="blog-grid">
                       	    	<img src="images/FBComments.jpg" width="587" height="682"> 
                            </div>
                            <!-- Facebook Comments END -->
                            
                            <div class="clearfix"></div>
                            <div class="spacer"></div> 
                            
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
                            <h4 class="page-titles">Latest Galleries</h4>
                            <div class="blog-grid">
								<ul class="filter triggerAnimation animated" data-animate="fadeInUp">
                                    <li><a href="#" class="active" data-filter="*"><i class="fa fa-th"></i>Show All</a></li>
                                    <li><a href="#" data-filter=".pics" ><i class="fa fa-camera"></i>Pics</a></li>
                                    <li><a href="#" data-filter=".videos" ><i class="fa fa-play"></i>Videos</a></li>
                                </ul>
                                
                                <!-- Gallery -->
                                <div class="team-members">
                                    <div class="row">
                                    
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="team-member triggerAnimation animated videos" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-play"></i></div>
                                                    <img alt="" src="images/about-650x650.gif">
                                                    
                                                </div>
                                                <div class="team-title">
                                                    <h5><a href="#">Giraffes at the water</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="team-member triggerAnimation animated pics" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-camera"></i></div>
                                                    <img alt="" src="images/about-650x650.gif">
                                                    
                                                </div>
                                                <div class="team-title">
                                                    <h5><a href="#">Giraffes at the water</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="team-member triggerAnimation animated videos" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-play"></i></div>
                                                    <img alt="" src="images/about-650x650.gif">
                                                    
                                                </div>
                                                <div class="team-title">
                                                    <h5><a href="#">Giraffes at the water</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        
                                       <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="team-member triggerAnimation animated pics" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-camera"></i></div>
                                                    <img alt="" src="images/about-650x650.gif">
                                                    
                                                </div>
                                                <div class="team-title">
                                                    <h5><a href="#">Giraffes at the water</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="team-member triggerAnimation animated videos" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-play"></i></div>
                                                    <img alt="" src="images/about-650x650.gif">
                                                    
                                                </div>
                                                <div class="team-title">
                                                    <h5><a href="#">Giraffes at the water</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="team-member triggerAnimation animated pics" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-camera"></i></div>
                                                    <img alt="" src="images/about-650x650.gif">
                                                    
                                                </div>
                                                <div class="team-title">
                                                    <h5><a href="#">Giraffes at the water</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="team-member triggerAnimation animated videos" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-play"></i></div>
                                                    <img alt="" src="images/about-650x650.gif">
                                                    
                                                </div>
                                                <div class="team-title">
                                                    <h5><a href="#">Giraffes at the water</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="team-member triggerAnimation animated pics" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-camera"></i></div>
                                                    <img alt="" src="images/about-650x650.gif">
                                                    
                                                </div>
                                                <div class="team-title">
                                                    <h5><a href="#">Giraffes at the water</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
								</div>
                                <!-- Gallery -->
                                
                            </div>
                            <!-- Latest Galleries END --> 
                            
                        <!-- LEFT Content END -->
						</div>
                        
                        <!-- RIGHT Content BEGIN -->
						<div class="rightcol">
							<div id="sidebar-area">
                                                        
                            <!-- Top Stories BEGIN -->
                            <h4 class="page-titles">Top Stories</h4>
                            
							<div class="widget widget_recentposts">
								<div class="media recent-posts">
									<a href="#" class="pull-left"><img alt="" class="media-object" src="images/recent-60x60.gif"></a>
									<div class="media-body">
										<h4 class="media-heading"><a href="#">The wild and all it has to offer</a></h4>
									</div>
								</div>
                                
								<div class="media recent-posts">
									<a href="#" class="pull-left"><img alt="" class="media-object" src="images/recent-60x60.gif"></a>
									<div class="media-body">
										<h4 class="media-heading"><a href="#">When Should I Warm Up Dinner?</a></h4>
									</div>
								</div>
                                
								<div class="media recent-posts">
									<a href="#" class="pull-left"><img alt="" class="media-object" src="images/recent-60x60.gif"></a>
									<div class="media-body">
										<h4 class="media-heading"><a href="#">This is a Beautiful Post in Blog</a></h4>
									</div>
								</div>
                                
                                <div class="media recent-posts">
									<a href="#" class="pull-left"><img alt="" class="media-object" src="images/recent-60x60.gif"></a>
									<div class="media-body">
										<h4 class="media-heading"><a href="#">When Should I Warm Up Dinner?</a></h4>
									</div>
								</div>
                                
							</div>
                            <!-- Top Stories END -->
                            
                            <div class="clearfix"></div>
                            
                            <!-- Top 10 BEGIN -->
                            <h4 class="page-titles">January Top 10</h4>
                          	
                            <ul class="nav nav-pills">
                              <li role="presentation" class="active"><a href="#">Contributors</a></li>
                              <li role="presentation"><a href="#">Tingers</a></li>
                            </ul>
                            
                            <div class="table-responsive">
                              <table class="table table-striped">
                              	
							    <tr>
							      <td>Username</td>
							      <td>Total Views</td>
						        </tr>
							    <tr>
							      <td>de Koker - de Rocker</td>
							      <td>315 442</td>
						        </tr>
							    <tr>
							      <td>Ian Twee Drie</td>
							      <td>306 234</td>
						        </tr>
							    <tr>
							      <td>Allan Smith</td>
							      <td>301 100</td>
						        </tr>
							    <tr>
							      <td>Jock</td>
							      <td>290 506</td>
						        </tr>
							    <tr>
							      <td>Lion Whisperer</td>
							      <td>287 356</td>
						        </tr>
							    <tr>
							      <td>EveOfDaLion</td>
							      <td>276 987</td>
						        </tr>
							    <tr>
							      <td>DanceWithHyenas</td>
							      <td>273 003</td>
						        </tr>
							    <tr>
							      <td>iBite</td>
							      <td>256 145</td>
						        </tr>
							    <tr>
							      <td>Piesana</td>
							      <td>232 467</td>
						        </tr>
							    <tr>
							      <td>VidsThatPay</td>
							      <td>182 783</td>
						        </tr>
							    <tr>
							      <td>TMuller</td>
							      <td>156 287</td>
						        </tr>
						        
                              </table>
                              
                              <a href="#" >
                              	<div class="button" style="text-align:center;">Become a Contributor</div>
                              </a>
                              	
                            </div>
                            <!-- Top 10 END -->
                            
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>
                            
                            <!-- 300x250 AD -->
                            <div class="ad300">
                            	<img src="images/ads-300x250.gif" width="300" height="250">
							</div>
                            <!-- 300x250 AD -->
                                                        
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>

                            <!-- Latest Blogs BEGIN -->
                            <h4 class="page-titles">Latest Blogs</h4>
                            
							<div class="widget widget_recentposts">
								<div class="media recent-posts">
									<a href="#" class="pull-left"><img alt="" class="media-object" src="images/recent-60x60.gif"></a>
									<div class="media-body">
										<h4 class="media-heading"><a href="#">The wild and all it has to offer</a></h4>
									</div>
								</div>
                                
								<div class="media recent-posts">
									<a href="#" class="pull-left"><img alt="" class="media-object" src="images/recent-60x60.gif"></a>
									<div class="media-body">
										<h4 class="media-heading"><a href="#">When Should I Warm Up Dinner?</a></h4>
										<!--<aside>Aug 10, 2013</aside>-->
									</div>
								</div>
                                
								<div class="media recent-posts">
									<a href="#" class="pull-left"><img alt="" class="media-object" src="images/recent-60x60.gif"></a>
									<div class="media-body">
										<h4 class="media-heading"><a href="#">This is a Beautiful Post in Blog</a></h4>
										<!--<aside>Aug 10, 2013</aside>-->
									</div>
								</div>
                                
                                <div class="media recent-posts">
									<a href="#" class="pull-left"><img alt="" class="media-object" src="images/recent-60x60.gif"></a>
									<div class="media-body">
										<h4 class="media-heading"><a href="#">When Should I Warm Up Dinner?</a></h4>
										<!--<aside>Aug 10, 2013</aside>-->
									</div>
								</div>
                                
                                <div class="clearfix"></div>
                                <div class="spacer small"></div>
                                 
                                <div class="button" style="text-align:center;">Read more</div>
                                <div class="button" style="text-align:center;">Subscribe to Newsletter</div>
							</div>
                            <!-- Latest Blogs END -->
                            
                            <div class="clearfix"></div>
                        	<div class="spacer small"></div>
                        
                            <!-- 300x250 AD -->
                            <div class="ad300">
                            	<img src="images/app.gif" width="300" height="250">
							</div>
                            <!-- 300x250 AD -->
                            
                            <div class="clearfix"></div>
                        	<div class="spacer small"></div>
												
							</div>
						</div>
					</div>
				</div>
				<!-- End Content Area -->
				
			</div>
		</div>
		<!-- End Container -->

</asp:Content>