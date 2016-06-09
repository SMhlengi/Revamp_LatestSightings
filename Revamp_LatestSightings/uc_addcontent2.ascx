<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_addcontent2.ascx.cs" Inherits="Revamp_LatestSightings.uc_addcontent2" %>
                                       <!-- TERMS OF CONDITIONS WORK -->
                                        <!--<h4 class="addVideoLabel">To add a video, click the "Add Video" button</h4>-->
                                          <div class="uploadvideo termsAndConditions">
                                                <div class="row tncRow">
                                                    <div class="col-md-12">
                                                        <div class="alert alert-danger">
                                                            
                                                            <strong>Please agree to Terms and Conditions before uploading video</strong> 
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row tncRow" style="margin-bottom:1px;">
                                                    <div class="col-md-9">
                                                        <ul>
                                                            <li>
                                                                You (the
 contributor) confirm that you have the necessary rights to the media 
being uploaded, and to use it in  the Latest Sightings’ Film and Earn 
Programme.
                                                            </li>
                                                            <li>
                                                                You will continue to own the copyright. 
                                                            </li>
                                                            <li>
                                                                You are 
giving Latest Sightings the exclusive right to monetize and sublicense 
the media in whole or in part.
                                                            </li>
                                                            <li>
                                                                You will
 earn 40% of direct revenue ex VAT earned from the media.  We pay you 
your share within 30 days after we have received payment.
                                                            </li>
                                                            <li>
                                                                We pay out once your total is more than R1000.
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>



                                                <div class="row tncText">
                                                    <div class="col-md-7">                                                        
                                                          <div class="checkbox">
                                                              <p class="text-primary floatLeft">
                                                                <label>
                                                                  <input id="chk_terms" type="checkbox"><strong>I Accept Terms and Conditions </strong>
                                                                </label>
                                                              </p>     
                                                              <p> &nbsp;&nbsp;|&nbsp;&nbsp; <a class="tnc" href="https://www.latestsightings.com/terms" target="_blank"><strong>View Terms and Conditions</strong></a></p>                                                          
                                                          </div>
                                                    </div>
                                                    <div class="col-md-4 viewterms">
                                                        <!--<input type="submit" name="ctl00$ContentPlaceHolder1$downloadTandC" value="Download Terms and Conditions" id="ContentPlaceHolder1_downloadTandC" class="btn btn-info" />
                                                        <p class="text-info" data-toggle="modal" data-target="#myModal">[ <strong>View Terms</strong> ]</p>-->                                                        
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3"><a href="javascript:void(0);" class="btn btn-success btn-block tncNext">Next</a></div>
                                                </div>
                                            </div>
                                           <!-- END OF TERMS AND CONDITIONS WORK -->
                                        
<div class="row">
    <div class="rfuploader">
        


    <!-- Main Container Section -->	
<link href="Live%20Wild%20Animal%20Reports%20in%20Kruger%20&amp;%20Other%20National%20Parks_files/sweetalert.css" rel="stylesheet" type="text/css">
<link href="Live%20Wild%20Animal%20Reports%20in%20Kruger%20&amp;%20Other%20National%20Parks_files/site.css" rel="stylesheet" type="text/css">

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
            padding:10px 30px 30px 30px;
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
                <input multiple="multiple" style="display: none;" type="file"></a>
            </div>
            <div class="col-md-3">
                <button id="startButton" data-bind="click: doUpload" type="button" class="btn btn-primary start btn-block">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span data-bind="text: startUploadButtonText">Start Upload</span>
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
        <li data-bind="foreach: filesToUpload" class="list-group-item col-md-12"></li>
    </ul>


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


<script src="Live%20Wild%20Animal%20Reports%20in%20Kruger%20&amp;%20Other%20National%20Parks_files/modernizr-2.js"></script>
<script src="Live%20Wild%20Animal%20Reports%20in%20Kruger%20&amp;%20Other%20National%20Parks_files/knockout-3.js"></script>
<script src="Live%20Wild%20Animal%20Reports%20in%20Kruger%20&amp;%20Other%20National%20Parks_files/sweetalert.js"></script>
<script src="Live%20Wild%20Animal%20Reports%20in%20Kruger%20&amp;%20Other%20National%20Parks_files/resumable.js"></script>
<script src="Live%20Wild%20Animal%20Reports%20in%20Kruger%20&amp;%20Other%20National%20Parks_files/upload.js"></script>


<!--bootstrap.css -->

    </div>
</div>
<!-- MOVING VIDEO DETAILS TO BE HERE -->


<div style="display: none;" class="row" data-bind="visible: uploadHasStarted()">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="panel transparentBackground">
            <div class="panel-heading">
                <div class="panel-btns" style="display: none;">
                    <a href="" class="panel-minimize tooltips" data-toggle="tooltip" title="" data-original-title="Minimize Panel"><i class="fa fa-minus"></i></a>
                    <a href="" class="panel-close tooltips" data-toggle="tooltip" title="" data-original-title="Close Panel"><i class="fa fa-times"></i></a>
                </div><!-- panel-btns -->
                    
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <div class="alert alert-success videoDetailsFormHeading" role="alert">Please provide us with the below information of the uploaded video</div>
                    </div>
                    <div class="col-md-1"></div>
                </div>
            </div><!-- panel-heading -->
            <div class="panel-body videoDetailsForm">
                <div class="row">
                    <div class="form-group col-md-12">
                        <input id="videoTitle" name="videoTitle" placeholder="Title" class="form-control" type="text">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <input id="alias" name="alias" placeholder="Alias" class="form-control" "="" type="text">
                    </div>
                    <div class="form-group col-md-6">
                        <input id="keywords" name="keywords" placeholder="Keywords" class="form-control" type="text">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <textarea class="form-control" id="notes" rows="8" placeholder="Notes"></textarea>
                     </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <div class="form-group videoTitle">
                            <p class="text-danger">Video Title is required</p>
                        </div>
                        <div class="form-group alias">
                            <p class="text-danger">Alias is required</p>
                        </div>
                        <div class="form-group keywords">
                            <p class="text-danger">Keywords is required</p>
                        </div>
                        <div class="form-group notes">
                            <p class="text-danger">Notes number is required</p>
                        </div>
                    </div>
                </div>           
            </div><!-- panel-body -->
            <div>
                <div class="pull-left updateVideoDetails">
                    <a href="javascript:void(0)" class="btn btn-success updateVideoDetails" role="button">Save</a>
                </div>
                <div class="pull-left marginLeftTen registerSpinner" style="margin-top:-13px">
                    <img src="Live%20Wild%20Animal%20Reports%20in%20Kruger%20&amp;%20Other%20National%20Parks_files/loading.gif">
                </div>
                <div class="alert alert-success pull-left marginLeftTen videoDetailsSaved">
                    <strong>Video details have been Successfully Saved</strong><br>An administrator has been informed and will review your video and be in contact with you shortly
                </div>
                <div class="alert alert-danger pull-left marginLeftTen videoDetailsSavedError">
                    <strong>Error in Saving Video Details</strong><br>Please try again as we are experiencing technical issues.
                </div>
            </div><!-- panel-footer -->
           </div>
        </div><!-- panel -->
    <div class="col-md-1"></div>             
    </div>

<!-- END OF MOVING VIDEO DETAILS TO BE HERE -->

<!-- DROPING .NET UPLOADER
<div class="row">
    <div class="dotNetUploader">
       <div class="col-md-9">
            <p class="text-primary havingTroubleUploading"> <a href="javascript:void(0);" class="btn btn-default launchDotNetUploader" role="button"  style="background-color: #5bc0de;color: black; text-decoration: none;">Add File (Max 2 Gigs )</a></p><br />
            <div class="panel panel-default dontnetuploaderpanel">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-4">
                            <input type="file" name="ctl00$ContentPlaceHolder1$ctl00$justIncaseSecondaryFileupload" id="ContentPlaceHolder1_ctl00_justIncaseSecondaryFileupload" />
                        </div>
                        <div class="col-md-1">
                            <input type="submit" name="ctl00$ContentPlaceHolder1$ctl00$justIncaseSecondaryFileuploadButton" value="Upload" onclick="ShowSpinner();" id="ContentPlaceHolder1_ctl00_justIncaseSecondaryFileuploadButton" class="btn btn-primary btn-sm dotnetuploaderbutton" />
                        </div>
                        <div class="col-md-3">
                            <div class="pull-left marginLeftTen registerSpinner">
                                <img src="/images/loading.gif" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>-->



<script src="Live%20Wild%20Animal%20Reports%20in%20Kruger%20&amp;%20Other%20National%20Parks_files/validateVideoDetails.js"></script>