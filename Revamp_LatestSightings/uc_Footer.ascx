﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_Footer.ascx.cs" Inherits="Revamp_LatestSightings.uc_Footer" %>


        <!-- Footer Section -->
		<footer class="footer">
			<div class="container">
				<div class="footer-logo"><img src="images/logo-horizontal-new.png" width="160" height="50"></div>
				<div class="footer-copyright">
                	<p class="text-muted" style="text-align:center">
					© 2015 Latest Sightings |
                    <a href="#"> Terms & Conditions </a> | <a href="#"> Privacy Policy </a>
                    </p>
                </div>
                <div class="socialengine">
                    Powered by
                    <a href="http://www.socialengine.co.za/"><img src="images/socialenginelogo.png" width="180" height="60"></a>
                </div>
			</div>
		</footer>
		<!-- End Footer -->

		<!-- Search box will be used in header PopOver -->
		<div id="popover-content" class="hide">
			<form class="sidebar-searchbox" method="get" action="search.html">
				<input type="search" name="q" placeholder="Search and hit Enter!">
			</form>
		</div>
		
		<!-- Back to Top Button -->
		<a href="#" id="back-to-top"><i class="fa fa-arrow-up"></i></a>