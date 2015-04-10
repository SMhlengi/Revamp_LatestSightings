<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_enquireForm.ascx.cs" Inherits="Revamp_LatestSightings.uc_enquireForm" %>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<style>
    .modal-body {
        padding-top:20px !important;
        font-family: "Open Sans", "Roboto Slab", "Noto Serif", "Helvetica Neue", Helvetica, Arial, sans-serif;
        background: url('../images/bg-hd.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
    }

    input {
        color: white;
    }

    p {
        color:#eeeeee !important;
    }

    .btn-primary {
        background-color: #ff9900;
    }

    .ui-datepicker-title{
        color: black;
    }
        
</style>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Enquire Form</h4>
      </div>
      <div class="modal-body">
                <div class="row">
                    
                    <div class="form-group col-md-10">
                        <p class="text-primary">First Name ( required )</p>
                        <input type="text" id="firstname" name="firstname" placeholder="" class="form-control" value="" >
                    </div>
                     <div class="form-group col-md-10">
                        <p class="text-primary">Email ( required )</p>
                        <input type="email" id="email" name="email" placeholder="" class="form-control" value="">
                    </div>
                    <div class="form-group col-md-10">
                        <p class="text-primary">Country ( required )</p>
                        <input type="text" id="lastname" name="lastname" placeholder="" class="form-control" value="">
                    </div>
                    <div class="form-group col-md-10">
                        <p class="text-primary">Telephone</p>
                        <input type="text" id="telephonenumber" name="telephonenumber" placeholder="" class="form-control" value="" >
                    </div>
                  
                    <div class="form-group col-md-10">
                        <p class="text-primary">Date Of Travel</p>
                        <input type="text" id="datepicker" name="telephonenumber" placeholder="" class="form-control" value="" >
                    </div>

                    <div class="form-group col-md-10">
                        <p class="text-primary">Number of adults (12 + years old)</p>
                        <input type="text" id="othercontant" name="othercontant" placeholder="" class="form-control" value="">
                    </div>
                    <!-- social network -->
                    <div class="form-group col-md-10">
                        <p class="text-primary">Number of children</p>
                        <input type="text" id="facebook" name="facebook" placeholder="" class="form-control" value="">
                    </div>
                    <div class="form-group col-md-10">
                        <p class="text-primary">Special requests</p>
                        <textarea class="form-control" id="address" rows="5" placeholder=""></textarea>
                    </div>
                </div><!-- row -->
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-primary">Save changes</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>        
      </div>
    </div>
  </div>
</div>

<script src="<%= ResolveUrl("~/js/jquery-uiv4.min.js") %>"></script>
<script>
    $(document).ready(function () {
        $(function() {
            $( "#datepicker" ).datepicker();
        });
    });
</script>