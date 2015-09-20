<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_imageSearchResults.ascx.cs" Inherits="Revamp_LatestSightings.uc_imageSearchResults" %>


<div class="row">
    <%if (imageResults != null && imageResults.Count > 0){ %>
    <%foreach(var item in imageResults){ %>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img src="http://latestsightings.com/UploadedImages/650x650/<%=item["filename"] %>" alt="...">
          <div class="caption">
            <h5><%=item["title"] %></h5>
           <%-- <p>...</p>--%>
            <%--<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>--%>
          </div>
        </div>
      </div>
      <%} %>
    <%} %>
</div>