<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="Revamp_LatestSightings.contactus" %>

<asp:Content ID="contactus" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    		<!-- Main Container Section -->		
		<div class="container">
			<div id="page-content">

				<!-- Page Content Area -->
				<div id="content-inner">
					<div class="row">
						<div class="col-md-12">
							<h1 class="main-title triggerAnimation animated" data-animate="fadeIn">contact us</h1>
							<div class="excerpt col-md-8 col-md-offset-2 triggerAnimation animated" data-animate="fadeInUp">
								Latest Sightings strives to build an active community of people passionate about wildlife. We would love to hear from you regarding your experiences, comments and suggestions for improvement.
							</div>
							
							<div class="contact-map clearfix triggerAnimation animated" data-animate="fadeIn">
								<div id="map_canvas"></div>			
							</div>
							<div class="row">
								<div class="col-md-4 col-md-offset-1 triggerAnimation animated" data-animate="fadeInUp">
									<h4 class="underlined">Contact Info</h4>
									<ul class="iconned-list">
										<li class="address"><i class="fa fa-map-marker"></i><strong>Address:</strong> the address</li>
										<li class="phone"><i class="fa fa-phone"></i><strong>Phone:</strong> the contact number</li>
										<li class="email"><i class="fa fa-envelope"></i><strong>Email:</strong> <a href="mailto:contact@latestsightings.com">contact@latestsightings.com</a></li>
									</ul>
                                    
                                    <div class="spacer"></div>
                                    
                                    <h4 class="underlined">Connect with us</h4>
                                    <div class="clearfix"></div>
                                    <a href="#" title="Share to Facebook"><i style="font-size:36px; padding-right:10px;" class="fa fa-facebook-square"></i></a>
                                    <a href="#" title="Share to Google"><i style="font-size:36px; padding-right:10px;" class="fa fa-google"></i></a>
                                    <a href="#" title="Share to Twitter"><i style="font-size:36px; padding-right:10px;" class="fa fa-twitter"></i></a>
                                    <a href="#" title="Share to Twitter"><i style="font-size:36px; padding-right:10px;" class="fa fa-youtube"></i></a>
                                    <a href="#" title="Share to Twitter"><i style="font-size:36px; padding-right:10px;" class="fa fa-pinterest"></i></a>
                                    
                                    
								</div>
                                
								<div class="col-md-6 triggerAnimation animated" data-animate="fadeInUp">
									<div class="wpcf7">
										<form method="post" action="contact.php">
											<input name ="name" type="text" placeholder="Your Name">
											<input name="mail" type="email" placeholder="Your Email">
											<textarea name="comment" placeholder="Your Message"></textarea>
											<input type="submit" value="Send Message" class="wpcf7-form-control wpcf7-submit">
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Content Area -->
				
			</div>
		</div>
		<!-- End Container -->

        <script src="https://maps.googleapis.com/maps/api/js"></script>

</asp:Content>