<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_dashboard_resumable_file_upload.ascx.cs" Inherits="Revamp_LatestSightings.uc_dashboard_resumable_file_upload" %>


    <!-- Main Container Section -->	
<link href="<%= ResolveUrl("~/css/sweetalert.css") %>" rel="stylesheet" type="text/css">
<link href="<%= ResolveUrl("~/css/site.css") %>" rel="stylesheet" type="text/css">

    <style>
        #content-inner {
            padding: 0px !important;
        }

        .sitemap, .footer{
            display:none;
        }

        h2 {
            font-weight: normal;
            padding-left:20px;
        }

        .panel, .list-group-item{
            background-color: transparent;
        }

        .container {
            padding-right: 0px;
            padding-left: 0px;
        }

        .row{
            margin-right:0px;
            margin-left:0px;
        }

        .panel-body{
            padding:30px;
        }

        .row h2{
            margin-top:45px;
        }

    </style>		
    <div class="panel row">
        <h2>Upload files</h2>
        <div class="row">
            <div class="col-md-3">
                <a href="#" id="browseButton" class="btn btn-success fileinput-button btn-block" data-bind="disable: disableUpload()">
                    <i class="glyphicon glyphicon-plus"></i>
                    <span>Add file </span>
                </a>
            </div>
            <div class="col-md-3">
                <button id="startButton" data-bind="click: doUpload" type="button" class="btn btn-primary start btn-block">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span data-bind="text: startUploadButtonText"></span>
                </button>
            </div>
            <div class="col-md-3">
                <button id="startButton" data-bind="click: pauseUpload" type="button" class="btn btn-info start btn-block">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Pause upload</span>
                </button>
            </div>
        </div>
    </div>

    <ul class="list-group row">
        <li data-bind="foreach: filesToUpload" class="list-group-item col-md-12">
            <div class="col-md-3">
                <span data-bind="text: fileName"></span>
            </div>

            <div class="progress col-md-8 nopadding">
                <div class="progress-bar" role="progressbar"
                     aria-valuemin="0" aria-valuemax="100" data-bind="style: {width: progress()}">
                    <span class="sr-only" data-bind="text: fileName + ' Complete'"></span>
                </div>
            </div>
            <div class="col-md-1">
                <a data-bind="click: function(){removeFile(resumableFile)}">
                    <span class="glyphicon glyphicon-remove" style="cursor: pointer;color:red"></span>
                </a>
            </div>

        </li>
    </ul>
<%--    <div class="progress row">
        <div id="progressBar" class="progress-bar" role="progressbar" aria-valuenow="70"
             aria-valuemin="0" aria-valuemax="100" data-bind="style: {width: mainProgressBar()}">
            <span class="sr-only" data-bind="text: mainProgressBar + ' Complete'"></span>
        </div>
    </div>--%>

    <div class="panel panel-default row">
        <div class="panel-heading">
            <h3 class="panel-title">Notes</h3>
        </div>
        <div class="panel-body">
            <ul>
                <li>This video upload is ONLY supported by the following browsers, Firefox 4+, Chrome 11+, Safari 6+ and Internet Explorer 10+.</li>
                <li>If you not using one of the above browsers, please update your browser</li>
            </ul>
        </div>
    </div>


<script src="<%= ResolveUrl("~/js/modernizr-2.6.2.js") %>"></script>
<script src="<%= ResolveUrl("~/js/knockout-3.3.0.js") %>"></script>
<script src="<%= ResolveUrl("~/js/sweetalert.min.js") %>"></script>
<script src="<%= ResolveUrl("~/js/resumable.js") %>"></script>
<script src="<%= ResolveUrl("~/js/upload.js?v=22") %>"></script>


<!--bootstrap.css -->
