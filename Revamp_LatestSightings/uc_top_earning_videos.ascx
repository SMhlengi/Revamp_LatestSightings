<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_top_earning_videos.ascx.cs" Inherits="Revamp_LatestSightings.uc_top_earning_videos" %>
    <div class="clearfix"></div>
    <div class="spacer small"></div>
<h4 class="page-titles">Top Earning Videos</h4>

    <%foreach (var stat in video_stats)
      { %>
		<div class="media recent-posts">
			<a href="javascript:void(0);" class="pull-left"><img class="youtube" src="<%= stat.youtubeVideo.ImageDefault %>" rel="<% = stat.VideoId %>"></a>
			<div class="media-body">
				<h5 class="media-heading" style="font-weight:normal"><a href="javascript:void(0);" style="cursor:text"><%= stat.VideoTitle %></a></h5>
			</div>
		</div>
    <%} %>
    <div class="clearfix"></div>
    <div class="spacer small"></div>