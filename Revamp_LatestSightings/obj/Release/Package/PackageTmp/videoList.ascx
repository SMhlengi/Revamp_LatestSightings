<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="videoList.ascx.cs" Inherits="Revamp_LatestSightings.videoList" %>

<% if (userVideos.Count > 0){ %>

<table id="table_id" class="display">
    <thead>
        <tr>
            <th style="color: rgb(255, 255, 255); border-bottom-width: 0px; width: 200px; background-color: rgb(66, 139, 202);" class="sorting_asc" tabindex="0" aria-controls="videos" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Title: activate to sort column ascending">Video Name</th>
            <th style="color: rgb(255, 255, 255); border-bottom-width: 0px; width: 200px; background-color: rgb(66, 139, 202);" class="sorting_asc" tabindex="0" aria-controls="videos" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Title: activate to sort column ascending">Alias</th>
            <th style="color: rgb(255, 255, 255); border-bottom-width: 0px; width: 200px; background-color: rgb(66, 139, 202);" class="sorting_asc" tabindex="0" aria-controls="videos" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Title: activate to sort column ascending">Rev Split</th>
            <th style="color: rgb(255, 255, 255); border-bottom-width: 0px; width: 200px; background-color: rgb(66, 139, 202);" class="sorting_asc" tabindex="0" aria-controls="videos" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Title: activate to sort column ascending">Uploaded</th>
            <th style="color: rgb(255, 255, 255); border-bottom-width: 0px; width: 200px; background-color: rgb(66, 139, 202);" class="sorting_asc" tabindex="0" aria-controls="videos" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Title: activate to sort column ascending">Accepted</th>
        </tr>
    </thead>
    <tbody>            
            <% foreach(var item in userVideos){ %>
                <tr>
                    <td><%=item.Name %></td>
                    <td><%=item.Alias %></td>
                    <td><%=item.RevSplit %></td>
                    <td><%=item.Uploaded %></td>
                    <td><%=item.Accepted %></td>
                </tr>
            <%} %>
    </tbody>
</table>

<%}else{ %>
    <div class="row">
        <div class="col-md-5 noVideos">
            <p class="text-info">No Videos have been uploaded</p>
        </div>
    </div>
<%} %>

<script>
    $(document).ready(function () {
        $('#table_id').DataTable();
    });
</script>