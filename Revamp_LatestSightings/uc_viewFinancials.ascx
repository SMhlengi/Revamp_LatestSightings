<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_viewFinancials.ascx.cs" Inherits="Revamp_LatestSightings.uc_viewFinancials" %>

    <link href="/css/style.datatables.css" rel="stylesheet">
    <link href="/css/dataTables.responsive.css" rel="stylesheet">
    <link href="/css/morris.css" rel="stylesheet">
    <link rel="stylesheet" href="<%= ResolveUrl("~/css/userFinancials.css") %>" />

    <div class="row">
        <div class="pageheader">
            <div class="media">
                <div class="media-body">
                        <div style="float: left;"><h4>Financials</h4></div>
                    <div style="float: right;"><div class="pageicon pull-left">
                </div><a href="" data-toggle="modal" data-target="#myModal"><h4>Learn how to earn and get paid</h4></a></div>
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
                            <th style="background-color:#554337; color: #FFFFFF; border-bottom: 0px;">Last Month’s Revenue</th>
                            <th style="background-color:#554337; color: #FFFFFF; border-bottom: 0px;">Estimated Month-to-Date Revenue</th>
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
                            <h5 class="md-title mt0 mb10">All videos: Total estimated Month-to-Date Revenue</h5>
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
                            <h5 class="md-title mt0 mb10">All videos: Total Views this Month</h5>
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
            <div style="font-size: 20px; margin-bottom: 10px;">Top 10 videos this month</div>
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
                                    <th>Views</th>
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


    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">How payment works:</h4>
          </div>
          <div class="modal-body" style="color: #000000;">
            a. We pay you, the contributor, once we have received payment from Youtube.<br /><br />

b.     Youtube pays us, Latest Sightings, last months’ revenue on the 25th of this month. That means that as long as Youtube pays us, we will pay you last month’s revenue at the end of this month. We will pay you this month’s revenue once we have received it at the end of next month. <br /><br />

c.     Youtube calculates earnings in dollars and pays us in rands. This means that we will pay you in rands.  
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
                    { orderable: false, "render": function (data, type, full, meta) { return "<a href=\"javascript:void(0);\" onclick=\"VideoDetails('" + full.Id + "', '" + full.YoutubeId + "', '" + full.Title.replace("'", "") + "', '" + full.ContributorId + "');\")\">View</a>" } },
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
            var contributor;
            function VideoDetails(videoId, youtubeId, videoTitle, contributorId)
            {
                $("#videoTitle").html(videoTitle);
                video = videoId;
                youtube = youtubeId;
                contributor = contributorId;
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
                                d.videoId = video, d.youtubeId = youtube, d.contributorId = contributor;
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
<%--    <script src="/usergraphs.aspx?year=<%=year %>&month=<%=month %>&contributor=<%=userId %>"></script>--%>

<script>
    jQuery(document).ready(function () { 
        var m1 = new Morris.Line({ 
            element: 'line-chart', 
            data: [{ y: '2016-06-01', a: 1.78510000, b: 0.98800000 }, { y: '2016-06-02', a: 1.41580000, b: 0.61310000 }, { y: '2016-06-03', a: 1.44170000, b: 0.92510000 }, { y: '2016-06-04', a: 2.10210000, b: 1.00790000 }, { y: '2016-06-05', a: 1.73120000, b: 0.83190000 }, { y: '2016-06-06', a: 1.67860000, b: 1.10480000 }, { y: '2016-06-07', a: 2.68490000, b: 1.00720000 }, { y: '2016-06-08', a: 1.30800000, b: 1.28160000 }, { y: '2016-06-09', a: 1.56600000, b: 0.76300000 }, { y: '2016-06-10', a: 1.35880000, b: 0.62000000 }, { y: '2016-06-11', a: 2.11980000, b: 1.01490000 }, { y: '2016-06-12', a: 1.83390000, b: 0.97160000 }, { y: '2016-06-13', a: 2.16800000, b: 0.89350000 }, { y: '2016-06-14', a: 2.48670000, b: 1.42820000 }, { y: '2016-06-15', a: 1.97910000, b: 1.04170000 }, { y: '2016-06-16', a: 1.81720000, b: 0.90580000 }, { y: '2016-06-17', a: 1.82190000, b: 1.17850000 }, { y: '2016-06-18', a: 2.02560000, b: 0.98890000 }, { y: '2016-06-19', a: 2.20510000, b: 1.08250000 }, { y: '2016-06-20', a: 2.15200000, b: 1.60010000 }, { y: '2016-06-21', a: 1.97110000, b: 1.61690000 }, { y: '2016-06-22', a: 2.00040000, b: 1.44840000 }, { y: '2016-06-23', a: 2.44570000, b: 1.15570000 }, { y: '2016-06-24', a: 2.28170000, b: 1.22300000 }, { y: '2016-06-25', a: 2.42700000, b: 0.90670000 }, { y: '2016-06-26', a: 2.62190000, b: 1.20200000 }, { y: '2016-06-27', a: 2.53550000, b: 1.56390000 }, { y: '2016-06-28', a: 2.20690000, b: 1.83450000 }, { y: '2016-06-29', a: 2.56360000, b: 1.54820000 }],
            xkey: 'y',
            ykeys: ['a', 'b'],
            labels: ['June 2016', 'May 2016'],
            lineColors: ['#428BCA', '#a7cfef'],
            lineWidth: '2px',
            hideHover: 'auto',
            resize: true,
            parseTime: false,
            preUnits: '$',
            xLabels: 'day'
        });
        var m2 = new Morris.Line({
            element: 'line-chart1',
            data: [{ y: '2016-06-01', a: 28351, b: 24697 }, { y: '2016-06-02', a: 28833, b: 23015 }, { y: '2016-06-03', a: 26111, b: 26738 }, { y: '2016-06-04', a: 31181, b: 24376 }, { y: '2016-06-05', a: 31759, b: 24825 }, { y: '2016-06-06', a: 31872, b: 27697 }, { y: '2016-06-07', a: 34869, b: 26473 }, { y: '2016-06-08', a: 31269, b: 24398 }, { y: '2016-06-09', a: 31689, b: 25023 }, { y: '2016-06-10', a: 31652, b: 24249 }, { y: '2016-06-11', a: 38106, b: 22470 }, { y: '2016-06-12', a: 36908, b: 21541 }, { y: '2016-06-13', a: 29611, b: 23027 }, { y: '2016-06-14', a: 31233, b: 26940 }, { y: '2016-06-15', a: 28366, b: 25855 }, { y: '2016-06-16', a: 34046, b: 27186 }, { y: '2016-06-17', a: 48498, b: 33275 }, { y: '2016-06-18', a: 38985, b: 33021 }, { y: '2016-06-19', a: 30486, b: 32410 }, { y: '2016-06-20', a: 26011, b: 36506 }, { y: '2016-06-21', a: 27322, b: 30795 }, { y: '2016-06-22', a: 26104, b: 29611 }, { y: '2016-06-23', a: 29172, b: 30761 }, { y: '2016-06-24', a: 25725, b: 33094 }, { y: '2016-06-25', a: 27567, b: 33328 }, { y: '2016-06-26', a: 37664, b: 33851 }, { y: '2016-06-27', a: 28262, b: 30864 }, { y: '2016-06-28', a: 25944, b: 29503 }, { y: '2016-06-29', a: 23421, b: 31408 }],
            xkey: 'y',
            ykeys: ['a', 'b'],
            labels: ['June 2016', 'May 2016'],
            lineColors: ['#428BCA', '#a7cfef'],
            lineWidth: '2px',
            hideHover: 'auto',
            resize: true,
            parseTime: false,
            xLabels: 'day'
        });
        var m3 = new Morris.Line({
            element: 'line-chart2',
            data: [{ y: '2016-06-01', 0: '3,71', 1: '2,775', 2: '1,154', 3: '0,56', 4: '1,115' }, { y: '2016-06-02', 0: '3,419', 1: '4,075', 2: '1,449', 3: '0,887', 4: '1,12' }, { y: '2016-06-03', 0: '3,489', 1: '2,998', 2: '1,345', 3: '0,372', 4: '0,959' }, { y: '2016-06-04', 0: '5,136', 1: '2,255', 2: '0,948', 3: '0,54', 4: '1,696' }, { y: '2016-06-05', 0: '4,117', 1: '3,084', 2: '0,832', 3: '0,423', 4: '1,625' }, { y: '2016-06-06', 0: '4,091', 1: '3,282', 2: '0,982', 3: '0,669', 4: '1,85' }, { y: '2016-06-07', 0: '6,499', 1: '4,544', 2: '1,201', 3: '0,628', 4: '3,08' }, { y: '2016-06-08', 0: '3,239', 1: '1,709', 2: '1,06', 3: '0,976', 4: '1,337' }, { y: '2016-06-09', 0: '3,704', 1: '2,32', 2: '1,592', 3: '0,599', 4: '0,886' }, { y: '2016-06-10', 0: '3,184', 1: '2,675', 2: '1,103', 3: '0,552', 4: '0,807' }, { y: '2016-06-11', 0: '5,179', 1: '2,564', 2: '2,061', 3: '0,635', 4: '1,26' }, { y: '2016-06-12', 0: '4,188', 1: '2,744', 2: '1,622', 3: '0,591', 4: '0,811' }, { y: '2016-06-13', 0: '5,258', 1: '3,568', 2: '1,631', 3: '1,049', 4: '0,868' }, { y: '2016-06-14', 0: '6,052', 1: '2,73', 2: '1,137', 3: '0,825', 4: '1,754' }, { y: '2016-06-15', 0: '4,881', 1: '3,001', 2: '1,494', 3: '0,944', 4: '0,873' }, { y: '2016-06-16', 0: '4,427', 1: '2,38', 2: '1,924', 3: '1,129', 4: '1,968' }, { y: '2016-06-17', 0: '4,349', 1: '2,88', 2: '2,274', 3: '1,038', 4: '0,353' }, { y: '2016-06-18', 0: '4,936', 1: '2,45', 2: '1,172', 3: '1,002', 4: '0,274' }, { y: '2016-06-19', 0: '5,435', 1: '1,954', 2: '3,165', 3: '0,851', 4: '1,265' }, { y: '2016-06-20', 0: '4,778', 1: '2,821', 2: '1,249', 3: '1,244', 4: '0,552' }, { y: '2016-06-21', 0: '4,84', 1: '2,058', 2: '1,444', 3: '1,822', 4: '1,47' }, { y: '2016-06-22', 0: '4,754', 1: '2,288', 2: '1,122', 3: '1,625', 4: '0,889' }, { y: '2016-06-23', 0: '5,769', 1: '2,465', 2: '0,943', 3: '2,124', 4: '0,433' }, { y: '2016-06-24', 0: '5,429', 1: '3,504', 2: '0,98', 3: '3,515', 4: '0,505' }, { y: '2016-06-25', 0: '5,94', 1: '4,69', 2: '1,06', 3: '2,195', 4: '0,658' }, { y: '2016-06-26', 0: '6,289', 1: '2,632', 2: '1,051', 3: '1,763', 4: '2,954' }, { y: '2016-06-27', 0: '6,116', 1: '2,508', 2: '1,34', 3: '2,402', 4: '1,364' }, { y: '2016-06-28', 0: '5,433', 1: '1,761', 2: '0,912', 3: '1,981', 4: '1,007' }, { y: '2016-06-29', 0: '6,017', 1: '1,523', 2: '1,04', 3: '2,001', 4: '1,033' }],
            xkey: 'y',
            ykeys: ['0', '1', '2', '3', '4'],
            labels: ['Baby Squirrel Saved From Death in Kruger 14 December 2012 Latest Sightings', 'Herd Of Elephants Rescues A Calf So Beautiful Latest Sightings', 'Battle at Kruger Crocodile vs Tortoises', 'Spotted Hyena Walks Straight Into Male Lion Latest Wildlife Sightings', 'Buffalo Chases A Hunting Lion From Her Newborn Calf Latest Wildlife Sightings'],
            lineColors: ['#428BCA', '#b53030', '#963c8a', '#5ba328', '#6f726d'],
            lineWidth: '2px',
            hideHover: 'auto',
            resize: true,
            parseTime: false,
            preUnits: '$',
            xLabels: 'day'
        });
        var m4 = new Morris.Line({
            element: 'line-chart3',
            data: [{ y: '2016-06-01', 0: '3780', 1: '1688', 2: '2529', 3: '1311', 4: '2344' }, { y: '2016-06-02', 0: '3539', 1: '1785', 2: '2348', 3: '960', 4: '2677' }, { y: '2016-06-03', 0: '3721', 1: '1601', 2: '2304', 3: '927', 4: '1959' }, { y: '2016-06-04', 0: '4862', 1: '1840', 2: '2325', 3: '1106', 4: '4296' }, { y: '2016-06-05', 0: '4843', 1: '1920', 2: '2261', 3: '1183', 4: '4662' }, { y: '2016-06-06', 0: '4371', 1: '1790', 2: '2176', 3: '1089', 4: '4056' }, { y: '2016-06-07', 0: '4453', 1: '1813', 2: '2532', 3: '1426', 4: '5169' }, { y: '2016-06-08', 0: '3251', 1: '1341', 2: '2306', 3: '1481', 4: '2444' }, { y: '2016-06-09', 0: '3832', 1: '1389', 2: '2427', 3: '1412', 4: '3244' }, { y: '2016-06-10', 0: '3645', 1: '1518', 2: '2402', 3: '1306', 4: '4581' }, { y: '2016-06-11', 0: '5973', 1: '1691', 2: '2844', 3: '1671', 4: '4336' }, { y: '2016-06-12', 0: '4517', 1: '1460', 2: '2693', 3: '1567', 4: '2472' }, { y: '2016-06-13', 0: '3900', 1: '1993', 2: '2245', 3: '1395', 4: '2398' }, { y: '2016-06-14', 0: '4824', 1: '1598', 2: '2443', 3: '1364', 4: '3669' }, { y: '2016-06-15', 0: '4086', 1: '1248', 2: '2564', 3: '1465', 4: '2156' }, { y: '2016-06-16', 0: '3572', 1: '1485', 2: '2753', 3: '1905', 4: '5428' }, { y: '2016-06-17', 0: '3984', 1: '1425', 2: '3246', 3: '2360', 4: '1981' }, { y: '2016-06-18', 0: '4282', 1: '1658', 2: '3171', 3: '2219', 4: '1418' }, { y: '2016-06-19', 0: '4270', 1: '1321', 2: '3422', 3: '2387', 4: '1512' }, { y: '2016-06-20', 0: '4015', 1: '1177', 2: '2268', 3: '2301', 4: '1218' }, { y: '2016-06-21', 0: '3743', 1: '1092', 2: '1840', 3: '2319', 4: '3807' }, { y: '2016-06-22', 0: '3479', 1: '1084', 2: '1818', 3: '2144', 4: '992' }, { y: '2016-06-23', 0: '3808', 1: '1352', 2: '1667', 3: '2097', 4: '846' }, { y: '2016-06-24', 0: '3851', 1: '1742', 2: '1597', 3: '2368', 4: '833' }, { y: '2016-06-25', 0: '4204', 1: '1577', 2: '1694', 3: '2348', 4: '1021' }, { y: '2016-06-26', 0: '4134', 1: '1527', 2: '1713', 3: '2179', 4: '8706' }, { y: '2016-06-27', 0: '4053', 1: '1316', 2: '1710', 3: '1815', 4: '3919' }, { y: '2016-06-28', 0: '3893', 1: '932', 2: '1749', 3: '1897', 4: '2866' }, { y: '2016-06-29', 0: '4046', 1: '926', 2: '1683', 3: '1546', 4: '1810' }],
            xkey: 'y',
            ykeys: ['0', '1', '2', '3', '4'],
            labels: ['Baby Squirrel Saved From Death in Kruger 14 December 2012 Latest Sightings', 'Herd Of Elephants Rescues A Calf So Beautiful Latest Sightings', 'Battle at Kruger Crocodile vs Tortoises', 'Spotted Hyena Walks Straight Into Male Lion Latest Wildlife Sightings', 'Buffalo Chases A Hunting Lion From Her Newborn Calf Latest Wildlife Sightings'],
            lineColors: ['#428BCA', '#b53030', '#963c8a', '#5ba328', '#6f726d'],
            lineWidth: '2px',
            hideHover: 'auto',
            resize: true,
            parseTime: false,
            xLabels: 'day'
        });
    });
</script>
    <script src="/js/morris.min.js"></script>
    <script src="/js/raphael-2.1.0.min.js"></script>
    <script src="/js/jquery.dataTables.min.js"></script>
    <script src="/js/dataTables.bootstrap.js"></script>
    <script src="/js/dataTables.responsive.js"></script>