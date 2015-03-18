<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_latestGalleris.ascx.cs" Inherits="Revamp_LatestSightings.uc_latestGalleris" %>


                            <!-- Latest Galleries BEGIN -->
                            <h4 class="page-titles">Latest Galleries</h4>
                            <div class="blog-grid">
								<ul class="filter triggerAnimation animated" data-animate="fadeInUp">
                                    <li><a id="showall" href="javascript:void(0);" class="active" data-filter="*"><i class="fa fa-th"></i>Show All</a></li>
                                    <li><a id="justpics" href="javascript:void(0);" data-filter=".pics" ><i class="fa fa-camera"></i>Pics</a></li>
                                    <li><a id="justvideos" href="javascript:void(0);" data-filter=".videos" ><i class="fa fa-play"></i>Videos</a></li>
                                </ul>
                                
                                <!-- Gallery SHOW ALL -->
                                <div class="team-members latestGalleriesPicsAndVideos">
                                    <div class="row">
                                        <% if (videosAndPhotos.Count > 0){ %>
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="team-member triggerAnimation animated videos" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-play"></i></div>
                                                    <img class="youtube" rel="<%= videosAndPhotos[0].YouTubeId %>" src="<%= videosAndPhotos[0].Url2 %>">
                                                    
                                                </div>
                                                <div class="team-title" title="<%= videosAndPhotos[0].Title %>">
                                                    <% if (videosAndPhotos[0].Title.Length > 35 ){ %>
                                                        <h5><a href="#"><%= videosAndPhotos[0].Title.Substring(0,32) %></a></h5>
                                                    <%}else{ %>
                                                        <h5><a href="#"><%= videosAndPhotos[0].Title %></a></h5>
                                                    <%} %> 
                                                </div>
                                            </div>
                                        </div>
                                        <%} %>
                                        
                                        <% if (videosAndPhotos.Count > 1){ %>
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1 filterImage">
                                            <div class="team-member triggerAnimation animated pics" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-camera"></i></div>
                                                    <img alt="" src="/UploadedImages/650x650/<%= videosAndPhotos[1].Url %>">
                                                    
                                                </div>
                                                <div class="team-title" title="<%= videosAndPhotos[1].Title %>">
                                                    <% if (videosAndPhotos[1].Title.Length > 35 ){ %>
                                                        <h5><a href="#"><%= videosAndPhotos[1].Title.Substring(0,32) %></a></h5>
                                                    <%}else{ %>
                                                        <h5><a href="#"><%= videosAndPhotos[1].Title %></a></h5>
                                                    <%} %> 
                                                </div>
                                            </div>
                                        </div>
                                        <%} %>
                                        
                                        <% if (videosAndPhotos.Count > 2){ %>
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="team-member triggerAnimation animated videos" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-play"></i></div>
                                                    <img class="youtube" rel="<%= videosAndPhotos[2].YouTubeId %>" src="<%= videosAndPhotos[2].Url2 %>">
                                                    
                                                </div>
                                                <div class="team-title" title="<%= videosAndPhotos[2].Title %>">
                                                    <% if (videosAndPhotos[2].Title.Length > 35 ){ %>
                                                        <h5><a href="#"><%= videosAndPhotos[2].Title.Substring(0,32) %></a></h5>
                                                    <%}else{ %>
                                                        <h5><a href="#"><%= videosAndPhotos[2].Title %></a></h5>
                                                    <%} %> 
                                                </div>
                                            </div>
                                        </div>
                                        <%} %>
                                        
                                        <% if (videosAndPhotos.Count > 3){ %>
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1 filterImage">
                                            <div class="team-member triggerAnimation animated pics" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-camera"></i></div>
                                                    <img alt="" src="/UploadedImages/650x650/<%= videosAndPhotos[3].Url %>">
                                                    
                                                </div>
                                                <div class="team-title" title="<%= videosAndPhotos[3].Title %>">
                                                    <% if (videosAndPhotos[3].Title.Length > 35 ){ %>
                                                        <h5><a href="#"><%= videosAndPhotos[3].Title.Substring(0,32) %></a></h5>
                                                    <%}else{ %>
                                                        <h5><a href="#"><%= videosAndPhotos[3].Title %></a></h5>
                                                    <%} %> 
                                                </div>
                                            </div>
                                        </div>
                                        <%} %>
                                        
                                        <% if (videosAndPhotos.Count > 4){ %>
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1 clearLeft">
                                            <div class="team-member triggerAnimation animated videos" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-play"></i></div>
                                                    <img class="youtube" rel="<%= videosAndPhotos[4].YouTubeId %>" src="<%= videosAndPhotos[4].Url2 %>">
                                                    
                                                </div>
                                                <div class="team-title" title="<%= videosAndPhotos[4].Title %>">
                                                    <% if (videosAndPhotos[4].Title.Length > 35 ){ %>
                                                        <h5><a href="#"><%= videosAndPhotos[4].Title.Substring(0,32) %></a></h5>
                                                    <%}else{ %>
                                                        <h5><a href="#"><%= videosAndPhotos[4].Title %></a></h5>
                                                    <%} %> 
                                                </div>
                                            </div>
                                        </div>
                                        <%} %>
                                        
                                        <% if (videosAndPhotos.Count > 5){ %>
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1 filterImage">
                                            <div class="team-member triggerAnimation animated pics" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-camera"></i></div>
                                                    <img alt="" src="/UploadedImages/650x650/<%= videosAndPhotos[5].Url %>">
                                                    
                                                </div>
                                                <div class="team-title" title="<%= videosAndPhotos[5].Title %>">
                                                    <% if (videosAndPhotos[5].Title.Length > 35 ){ %>
                                                        <h5><a href="#"><%= videosAndPhotos[5].Title.Substring(0,32) %></a></h5>
                                                    <%}else{ %>
                                                        <h5><a href="#"><%= videosAndPhotos[5].Title %></a></h5>
                                                    <%} %> 
                                                </div>
                                            </div>
                                        </div>
                                        <%} %>
                                        
                                        <% if (videosAndPhotos.Count > 6){ %>
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1">
                                            <div class="team-member triggerAnimation animated videos" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-play"></i></div>
                                                    <img class="youtube" rel="<%= videosAndPhotos[6].YouTubeId %>" src="<%= videosAndPhotos[6].Url2 %>">
                                                    
                                                </div>
                                                <div class="team-title" title="<%= videosAndPhotos[6].Title %>">
                                                    <% if (videosAndPhotos[6].Title.Length > 35 ){ %>
                                                        <h5><a href="#"><%= videosAndPhotos[6].Title.Substring(0,32) %></a></h5>
                                                    <%}else{ %>
                                                        <h5><a href="#"><%= videosAndPhotos[6].Title %></a></h5>
                                                    <%} %> 
                                                </div>
                                            </div>
                                        </div>
                                        <%} %>
                                        
                                        <% if (videosAndPhotos.Count > 7){ %>
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1 filterImage">
                                            <div class="team-member triggerAnimation animated pics" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-camera"></i></div>
                                                    <img alt="" src="/UploadedImages/650x650/<%= videosAndPhotos[7].Url %>">
                                                    
                                                </div>
                                                <div class="team-title" title="<%= videosAndPhotos[7].Title %>">
                                                    <% if (videosAndPhotos[7].Title.Length > 35 ){ %>
                                                        <h5><a href="#"><%= videosAndPhotos[7].Title.Substring(0,32) %></a></h5>
                                                    <%}else{ %>
                                                        <h5><a href="#"><%= videosAndPhotos[7].Title %></a></h5>
                                                    <%} %> 
                                                </div>
                                            </div>
                                        </div>
                                        <%} %>
                                        
                                    </div>
								</div>
                                <!-- Gallery -->

                                <% if (latestPhotos != null && latestPhotos.Count > 0)
                                   {
                                       int latestPhotosCounter = 0; %>
                                <!-- Just PICS -->                               
                                <div class="team-members latestGalleriesJustPics">                                    
                                    <div class="row">        
                                        <%foreach (var photo in latestPhotos)
                                          {
                                              latestPhotosCounter += 1; %>                                
                                        <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1 filterImage <%if(latestPhotosCounter == 5){ %> clearLeft<%} %>">
                                            <div class="team-member triggerAnimation animated pics" data-animate="fadeInUp">
                                                <div class="team-info">
                                                	<div class="related-gallery-icon"><i class="fa fa-camera"></i></div>
                                                    <img alt="" src="/UploadedImages/650x650/<%= photo.Url %>">
                                                    
                                                </div>
                                                <div class="team-title" title="<%= photo.Title %>">
                                                    <% if (photo.Title.Length > 35)
                                                       { %>
                                                        <h5><a href="#"><%= photo.Title.Substring(0,32) %></a></h5>
                                                    <%}else{ %>
                                                        <h5><a href="#"><%= photo.Title %></a></h5>
                                                    <%} %> 
                                                </div>
                                            </div>
                                        </div>
                                      <%} %>
                                    </div>
								</div>
                                <!-- END OF JUST PICS -->
                                <%} %>

                                <!-- Gallery JUST VIDEOS -->
                                <% if (latestVideos != null && latestVideos.Count > 0)
                                   {
                                       int latestVideosCounter = 0; %>
                                <!-- Just PICS -->                               
                                <div class="team-members latestGalleriesJustVideos">                                    
                                    <div class="row">        
                                        <%foreach (var video in latestVideos)
                                          {
                                              latestVideosCounter += 1; %>                                
                                            <div class="col-md-3 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1 <%if (latestVideosCounter ==5){ %>clearLeft<%} %>">
                                                <div class="team-member triggerAnimation animated videos" data-animate="fadeInUp">
                                                    <div class="team-info">
                                                	    <div class="related-gallery-icon"><i class="fa fa-play"></i></div>
                                                        <img class="youtube" rel="<%=video.YouTubeId %>" src="<%= video.Url2 %>">
                                                    
                                                    </div>
                                                    <div class="team-title" title="<%= video.Title %>">
                                                        <% if (video.Title.Length > 35 ){ %>
                                                            <h5><a href="#"><%= video.Title.Substring(0,32) %></a></h5>
                                                        <%}else{ %>
                                                            <h5><a href="#"><%= video.Title %></a></h5>
                                                        <%} %> 
                                                    </div>
                                                </div>
                                            </div>
                                      <%} %>
                                    </div>
								</div>
                                <!-- END OF JUST PICS -->
                                <%} %>
                                <!-- END OF JUST VIDEOS -->
                                
                            </div>
                            <!-- Latest Galleries END -->  