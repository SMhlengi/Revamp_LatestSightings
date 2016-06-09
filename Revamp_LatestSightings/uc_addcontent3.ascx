<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_addcontent3.ascx.cs" Inherits="Revamp_LatestSightings.uc_addcontent3" %>

        <div class="row">
            <div class="panel showBackground">
                <div class="panel-heading"></div>
                
                <!-- Step 1 -->
                <div class="panel-body">
                    <div class="row">
                            <h4>Complete the following Steps</h4>

                            <nav>
                                <ol class="cd-multi-steps text-bottom count">
                                    <li class="visited"><a href="#0">t's &amp; c's</a></li>
                                    <li class="current"><a href="#0">Info</a></li>
                                    <li><em>Upload</em></li>
                                </ol>
                            </nav>
                        <!-- MOVING VIDEO DETAILS TO BE HERE -->


<div class="row">
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
                        <div class="videoDetailsFormHeading">Please provide us with the below information of the content you would like to upload</div>
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
                <div class="col-md-3 right"><a href="javascript:void(0);" class="btn btn-success btn-block tncNext">Save</a></div>
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
                                    </div><!-- tab-pane -->
                    </div>
                </div>

                
            </div>