<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_tings.ascx.cs" Inherits="Revamp_LatestSightings.uc_tings" %>

<!-- Latest Sightings Widget BEGIN -->
					<div class="portfolio-related-posts triggerAnimation animated" data-animate="fadeInUp">
						<h4 class="page-titles">Latest Sightings</h4>
                            
                        <div id="owl-slider">
                               
                            <%if (tings != null && tings.Count() > 0){ %> 
                                <%foreach(var ting in tings){ %>
							        <div class="related-portfolio-item item">
                                        <a href="#">
									        <div class="ls-member">
										        <div class="ls-info"><img alt="" src="http://tingsservice.socialengine.co.za/tings/image/<%=ting["id"] %>"></div>
										        <div class="ls-title">
											        <h4><%=ting["title"] %></h4>
											        <p>Today @ <%=ting["time"] %> <br>Kruger Park <br> South Africa</p>
										        </div>
									        </div>
                                        </a>	
							        </div>
                                <%} %>
                            <%} %>
						</div>
					</div>
					<!-- Latest Sightings Widget END -->