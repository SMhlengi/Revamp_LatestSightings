<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_SiteHeader.ascx.cs" Inherits="Revamp_LatestSightings.uc_SiteHeader" %>

	<!-- Header Section -->
		<!-- Header Section -->
		<header>
			<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<div class="container">
                
                	<!-- Profile bar BEGIN -->
                	<div class="profilebar">
                    	<div class="left">
                    				
                            <div class="profile-username"><i class="fa fa-user pro-username" style="padding-right:10px;"></i>
                               <%=username %>

                            </div>
                            
                            <div class="profilelinks">
                                <a href="#" class="tmq_closeserv viewFinancials">View Financials</a> <!--| -->
                                <a href="#" class="tmq_closeserv uploadVideo">Upload Video</a>  <!--|-->
                                <a href="#" class="tmq_closeserv myAccount">My Account</a> <!--|-->
                                <a href="#" class="tmq_closeserv Login">Login</a>
                                <a href="#" class="tmq_closeserv Logout">Logout</a>
                                <a href="#"><div class="livedrive"><i class="fa fa-video-camera" style="padding-right:10px;"></i>Live drive in 01:54:36</div></a>
                            </div>
                        
                    	</div>
                    </div>
                    <!-- Profile bar END -->
                    
					<div class="navbar-header">
					
						<!-- Responsive Menu Trigger -->
						<a id="trigger" href="#" title="Menu"><i class="fa fa-bars"></i></a>
						
						<!-- Website Logo -->
						<a class="navbar-brand" href="#"><img alt="" src="images/logo-horizontal-new.png"></a>
                        
					</div>
                    
                   		<!-- Search Button -->
                        <ul class="navbar-right">
                            <li id="search" data-toggle="popover"><a href="javascript:void(0);" class="top-search" title="Search"><i class="fa fa-search"></i></a></li>
                        </ul>
                        <!-- End Search Button -->
					
					<!-- Main Menu -->
					<nav id="main-menu">
						<div class="menu-container">
							<ul>
								<li class="menu-item"><a href="#">Home</a></li>
                                <li class="menu-item"><a href="#">About Us</a></li>
                                <li class="menu-item"><a href="#">Sightings</a></li>
                                <li class="menu-item"><a href="#">Galleries</a></li>
                                <li class="menu-item"><a href="#">Holidays</a></li>
                                <li class="menu-item"><a href="#">Partnership</a></li>
                                <li class="menu-item"><a href="#">Contact Us</a></li>
							</ul>
						</div>
					</nav>
					<!-- End Main Menu -->
					
					
				</div>
			</div>
		</header>
		<!-- End Header -->
    <!-- END Header Section -->