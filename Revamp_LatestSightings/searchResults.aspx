<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchResults.aspx.cs" Inherits="Revamp_LatestSightings.searchResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .bs-example{
            color:black;
        }
        .bs-callout-warning {
            padding-bottom: 6px;
        }
        .articleReadMore {
            color: #c7254e;
        }

        .videoResults{
            display:none;
        }
    </style>


<ul class="nav nav-tabs nav-justified">
    <li role="presentation" class="active articles"><a href="#">Articles</a></li>
    <li role="presentation" class="vids"><a href="#">Videos</a></li>
    <li role="presentation"><a href="#">Images</a></li>
</ul>

<div class="articleResultsOptionTwo">
    <%if (c_articles != null && c_articles.Count > 0) { %>
         <%foreach (var item in c_articles){ %>
            <%if (item["body"] != ""){ %>

                <div class="bs-callout bs-callout-danger" id="callout-tables-striped-ie8">
                    <h4> <%=item["header"] %></h4>
                    <p> <%=item["body"] %></p>
                    <p> <code><a class="articleReadMore" href="/blog.aspx?id=<%=item["id"] %>&cat=<%=item["catid"] %>"> Read more ...</a></code></p>
                  </div>
            <%} %>
        <%} %>
     <%} %>
</div>

<div class="videoResults">
    <asp:PlaceHolder ID="youTubeVids" runat="server"></asp:PlaceHolder>
</div>


<script>

    $(document).ready(function () {
        $(".vids").click(function () {
            $(".articles").removeClass("active");
            $(".articleResultsOptionTwo").hide();
            $(".vids").addClass("active").show();
            $(".videoResults").show();
        });
    });

</script>













</asp:Content>
