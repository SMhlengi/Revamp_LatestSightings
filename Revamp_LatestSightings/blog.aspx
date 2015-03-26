<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="Revamp_LatestSightings.blog" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="blog" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


			
<!-- Page Content Area -->
                
        <!-- Blog Category BEGIN -->
        <asp:PlaceHolder ID="cagegories" runat="server"></asp:PlaceHolder>
        <!-- Blog Category END -->
                    
	<div class="row">
        <!-- LEFT Content BEGIN -->
		<div class="leftcol">
                        	
            <!-- Blog BEGIN -->
            <h1 class="main-title" style="margin-top:0px !important;"><%= article["header"] %></h1>
                            
            <div class="blog-list-post triggerAnimation animated" data-animate="fadeIn">
                <div class="blog-list-featured-image">
                    <a href="#"><img alt="" src="<%= ConfigurationManager.AppSettings["articleImagePath"] %>/<%= article["picture"] %>"></a>
                </div>
                                
                <div class="blog-details">
							<span class="blog-date"><%= article["dateCreated"] %></span>
						</div>
                                            
                <div class="blog-list-content">
                                
                    <div style="color:white">
                        <%= article["body"].Replace("color: #111111;", "").Replace("color: #333333;", "").Replace("color: #444444;", "") %>
                    </div>

					<div class="clearfix"></div>
                    <div class="spacer sml"></div>

					<div class="left">
                        <!--<img src="images/FBandTwitter.jpg" width="202" height="20"> -->
                        <div class="right">
                            <a href="javascript:void(0);" title="Share to Facebook" class="blogFacebookShare"><i style="font-size:36px; padding-right:10px;" class="fa fa-facebook-square"></i></a>
                            <!--<a href="#" title="Share to Google"><i style="font-size:36px; padding-right:10px;" class="fa fa-google"></i></a>-->
                            <a href="javascript:void(0);" title="Share to Twitter" class="blogTwitterShare"><i style="font-size:36px; padding-right:10px;" class="fa fa-twitter"></i></a>
                        </div>
                    </div>
                                    
                    <div class="clearfix"></div>
                    <div class="spacer sml"></div>
                                    
                </div>
                                
                                
                                
                                
                            
            </div>
                            
            <!-- Blog END -->
                            
                            
                            
            <!-- Latest Blogs BEGIN -->
            <asp:PlaceHolder ID="otherRelatedArticles" runat="server"></asp:PlaceHolder>
            <!-- Latest Blogs END -->
                            
            <div class="clearfix"></div>
            <div class="spacer sml"></div>
                            
            <!-- Facebook Comments BEGIN -->
            <h4 class="page-titles">Join the Conversation</h4>
            <div class="fb-comments" data-href="http://latestsightings.socialengine.co.za/blog.aspx?id=<%=categoryId %>&cat=<%=categoryId %>" data-numposts="5" data-colorscheme="dark" data-width="750"></div>
            <!-- Facebook Comments END -->
                            
        <!-- LEFT Content END -->
		</div>
                        
        <!-- RIGHT Content BEGIN -->
		<div class="rightcol">
			<div id="sidebar-area">
                                                        
            <!-- Top Stories BEGIN -->
            <asp:PlaceHolder ID="lastBlogs" runat="server"></asp:PlaceHolder>
            <!-- Top Stories END -->
                            
            <div class="clearfix"></div>
            <div class="spacer"></div>
                            
            <!-- 300x250 AD -->
            <div class="ad300">
                <img src="images/ads-300x250.gif" width="300" height="250">
			</div>
            <!-- 300x250 AD -->
                            
            <div class="clearfix"></div>
            <div class="spacer"></div>
                            
            <!-- Top 10 BEGIN -->
            <asp:PlaceHolder ID="monthlyTopContributors" runat="server"></asp:PlaceHolder>
            <!-- Top 10 END -->
                            
												
			</div>
		</div>
	</div>
<!-- End Content Area -->




</asp:Content>