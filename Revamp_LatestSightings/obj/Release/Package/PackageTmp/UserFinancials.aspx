<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserFinancials.aspx.cs" Inherits="Revamp_LatestSightings.UserFinancials" MasterPageFile="~/Site1.Master" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="dashboard" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="/css/style.datatables.css" rel="stylesheet">
    <link href="/css/dataTables.responsive.css" rel="stylesheet">
    <link href="/css/morris.css" rel="stylesheet">

    <style>
        table.dataTable tr.odd { background-color: white; }
        table.dataTable tr.even { background-color: white; }
        table.dataTable tr.odd td a, table.dataTable tr.even td a {
            color: rgba(255,153,0,0.7); font-weight: bold;
        }
        .dataTables_wrapper .dataTables_paginate .paginate_button {
            padding: 0px;
        }
         .md-title {
            font-size: 14px;
            font-family: Verdana;
            color: #000000;
        }
        .pull-right {
            height: 60px!important;
            float: none!important;
        }
        h4 {
            color: #000000;
        }
        .media-body h4 {
            color: #FFFFFF;
        }
        #popular td, #popularViews td {
            background-color: #ffffff;
            color: #000000;
            border: 1px solid #000000!important;
        }
        #popular th, #popularViews th {
            background-color: #ff9900;
        }
        .alert p {
            color: inherit;
        }
        .alert a {
            color: rgba(255,153,0,0.7);
        }
        </style>
    <div class="row">
        <div class="pageheader">
            <div class="media">
                <div class="pageicon pull-left">
                    <i class="fa fa-money"></i>
                </div>
                <div class="media-body">
                    <ul class="breadcrumb">
                        <li><a href=""><i class=""></i></a></li>
                    </ul>
                        <h4>Financials</h4> 
                </div>
            </div><!-- media -->
        </div><!-- pageheader -->
    </div>
    <div class="row" id="alert" runat="server" visible="false">
        <div class="alert alert-info fade in nomargin">
            <h4>No Video!</h4>
            <p>There are no videos loaded to add a video <a href="/addvideo">click here</a></p>
        </div>
    </div>

    <div id ="tableRow" runat="server" class="row">
        <div id="basicTable_wrapper" class="dataTables_wrapper no-footer" style="width: 100%;">
            <div class="dataTables_length" id="basicTable_length" style="width: 100%;">
                <table id="videos" class="table responsive dataTable no-footer" role="grid" aria-describedby="basicTable_info" style="width: 100%;" width="100%" cellspacing="0">
                    <thead class="datatableHeaders">
                        <tr>
                            <th style="background-color:#554337; color: #FFFFFF; border-bottom: 0px;">View</th>
                            <th style="background-color:#554337; color: #FFFFFF; border-bottom: 0px;">Title</th>
                            <th style="background-color:#554337; color: #FFFFFF; border-bottom: 0px;">Id</th>
                            <th style="background-color:#554337; color: #FFFFFF; border-bottom: 0px;">Revenue Split</th>
                            <th style="background-color:#554337; color: #FFFFFF; border-bottom: 0px;">Prev Payment</th>
                            <th style="background-color:#554337; color: #FFFFFF; border-bottom: 0px;">Estimated MTD Revenue</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="col-md-8 mb30">
            <div class="row">
                <div class="col-md-6 mb30">
                    <div class="panel panel-default">
                        <div class="panel-body padding15">
                            <h5 class="md-title mt0 mb10">Earnings</h5>
                            <div class="col-md-12 mb30">
                                <div id="line-chart" class="height300"></div>
                            </div>
                        </div><!-- panel-body -->
                        <div class="panel-footer">
                            <div class="tinystat pull-left">

                            </div><!-- tinystat -->
                            <div class="tinystat pull-right">
                                <div id="sparkline4" class="chart mt5"></div>
                                <div class="datainfo">
                                    <span class="text-muted">Total</span>
                                    <h4><asp:Literal ID="ltlEarnings" runat="server" /></h4>
                                </div>
                            </div><!-- tinystat -->
                        </div><!-- panel-footer -->
                    </div><!-- panel -->
                </div>
                <div class="col-md-6 mb30">
                    <div class="panel panel-default">
                        <div class="panel-body padding15">
                            <h5 class="md-title mt0 mb10">Views</h5>
                            <div class="col-md-12 mb30">
                                <div id="line-chart1" class="height300"></div>
                            </div>
                        </div><!-- panel-body -->
                        <div class="panel-footer">
                            <div class="tinystat pull-right" style="float: none;">
                                <div id="Div3" class="chart mt5"></div>
                                <div class="datainfo">
                                    <span class="text-muted">Total</span>
                                    <h4><asp:Literal ID="ltlViews" runat="server" /></h4>
                                </div>
                            </div><!-- tinystat -->
                        </div><!-- panel-footer -->
                    </div><!-- panel -->
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-body padding15">
                            <h5 class="md-title mt0 mb10">Top Video Earnings</h5>
                            <div class="col-md-12 mb30">
                                <div id="line-chart2" class="height300"></div>
                            </div>
                        </div><!-- panel-body -->
                    </div><!-- panel -->
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-body padding15">
                            <h5 class="md-title mt0 mb10">Top Video Views</h5>
                            <div class="col-md-12 mb30">
                                <div id="line-chart3" class="height300"></div>
                            </div>
                        </div><!-- panel-body -->
                    </div><!-- panel -->
                </div>
            </div>
        </div>
        <div class="col-md-4 mb30">
            <ul class="nav nav-tabs nav-justified">
	            <li class="active"><a data-toggle="tab" href="#popular">Top 10 Earnings</a></li>
	            <li class=""><a data-toggle="tab" href="#popularViews">Top 10 Views</a></li>
            </ul>
            <div class="tab-content">
                <div id="popular" class="tab-pane active">
		            <div class="table-responsive">
                        <table class="table table-primary mb30">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Title</th>
                                    <th>Earnings</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Literal ID="ltlTop10Earnings" runat="server" />
                            </tbody>
                        </table>
                    </div> 
	            </div><!-- tab-pane -->

                <div id="popularViews" class="tab-pane">
		            <div class="table-responsive">
                        <table class="table table-primary mb30">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Title</th>
                                    <th>Earnings</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Literal ID="ltlTop10Views" runat="server" />
                            </tbody>
                        </table>
                    </div> 
	            </div><!-- tab-pane -->
            </div>
        </div>
    </div>

    <div class="modal fade bs-example-modal-lg in" tabindex="-1" role="dialog" id="modal-video">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button" id="modalCloseVideos">&times;</button>
                    <h4 class="modal-title" id="videoTitle"></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-primary-head">
                                <div id="Div1" class="dataTables_wrapper no-footer" style="width: 100%;">
                                    <div class="dataTables_length" id="Div2" style="width: 100%;">
                                        <table id="video" class="table table-hover responsive dataTable no-footer" role="grid" aria-describedby="basicTable_info" style="width: 100%;">
                                            <thead class="datatableHeaders">
                                                <tr>
                                                    <th style="background-color:#554337; color: #FFFFFF; border-bottom: 0px;">Month</th>
                                                    <th style="background-color:#554337; color: #FFFFFF; border-bottom: 0px;">Youtube</th>
                                                    <asp:Literal ID="ltlCurrencies" runat="server" EnableViewState="false" />
                                                    <th style="background-color:#554337; color: #FFFFFF; border-bottom: 0px;">Views</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        jQuery(document).ready(function () {
            dTable = $('#videos').dataTable({
                processing: true,
                serverSide: true,
                stateSave: false,
                pagingType: "full_numbers",
                filter: false,
                lengthChange: false,
                sort: false,
                "ajax": {
                    "url": "/VideosData.aspx",
                    "data": function ( d ) {
                        d.contributor = "<%= userId %>";
                    }
                },
                type: 'GET',
                pageLength: 10,
                language: { "sSearch": "" },
                order: [1, "asc"],
                "columns": [
                    { orderable: false, "render": function (data, type, full, meta) { return "<a href=\"javascript:void(0);\" onclick=\"VideoDetails('" + full.Id + "', '" + full.YoutubeId + "', '" + full.Title + "');\")\">View</a>" } },
                    { "data": "Title", orderable: true },
                    { "data": "YoutubeId", orderable: false },
                    { "data": "RevenueSplit", orderable: false },
                    { "data": "PreviousMonth", orderable: false },
                    { "data": "CurrentMonth", orderable: false }
                ]
            });

            /* Add events */
            $("body").on("click", "#videos tbody tr", function (e) {

            });

            jQuery('div.dataTables_filter input').addClass('form-control');
            jQuery('div.dataTables_length select').addClass('form-control');


            // DataTables Length to Select2
            jQuery('div.dataTables_length select').removeClass('form-control input-sm');
            jQuery('div.dataTables_length select').css({ width: '60px' });
            jQuery('div.dataTables_length select').select2({
                minimumResultsForSearch: -1
            });
        });

            var dTable2;
            var video;
            var youtube;
            function VideoDetails(videoId, youtubeId, videoTitle)
            {
                $("#videoTitle").html(videoTitle);
                video = videoId;
                youtube = youtubeId;
                $('#modal-video').modal('toggle');
                if (dTable2 == null)
                {
                    dTable2 = $('#video').DataTable({
                        processing: true,
                        serverSide: true,
                        stateSave: false,
                        pagingType: "full_numbers",
                        paginate: false,
                        info: false,
                        filter: false,
                        sort: false,
                        "ajax": {
                            "url": "/VideoItemData.aspx",
                            "data": function ( d ) {
                                d.videoId = video, d.youtubeId = youtube;
                            }
                        },
                        type: 'GET',
                        responsive: false,
                        pageLength: 10,
                        language: { "sSearch": "" },
                        "columns": [
                            { "data": "ItemMonth", orderable: false },
                            { "data": "YouTubeEarnings", orderable: false },
                        <% =currencyScripts%>
                        { "data": "Views", orderable: false },
                    ]
                });
            }
            else
            {
                $("#video tbody").html('');
                dTable2.ajax.reload(null, false);
            }
        }
    </script>

    <script src="/js/select2.min.js"></script>
    <script src="/usergraphs.aspx?year=<%=year %>&month=<%=month %>&contributor=<%=userId %>"></script>
    <script src="/js/morris.min.js"></script>
    <script src="/js/raphael-2.1.0.min.js"></script>
    <script src="/js/jquery.dataTables.min.js"></script>
    <script src="/js/dataTables.bootstrap.js"></script>
    <script src="/js/dataTables.responsive.js"></script>
</asp:Content>