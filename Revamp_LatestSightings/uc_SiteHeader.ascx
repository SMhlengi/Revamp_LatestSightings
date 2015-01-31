<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_SiteHeader.ascx.cs" Inherits="Revamp_LatestSightings.uc_SiteHeader" %>

	<!-- Header Section -->
    <header>
	    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		    <div class="container">
			    <div class="navbar-header">
					
				    <!-- Responsive Menu Trigger -->
				    <a id="trigger" href="#" title="Menu"><i class="fa fa-bars"></i></a>
						
				    <!-- Website Logo -->
				    <a class="navbar-brand" href="/"><img alt="" src="images/logo-horizontal-new.png"></a>
			    </div>
					
			    <!-- Main Menu -->
			    <nav id="main-menu">
				    <div class="menu-container">
					    <ul>
						    <li class="menu-item"><a href="/">Home</a></li>
                            <li class="menu-item"><a href="/about-us">About Us</a></li>
                            <li class="menu-item"><a href="/sightings">Sightings</a></li>
                            <li class="menu-item"><a href="/gallery">Galleries</a></li>
                            <li class="menu-item"><a href="#">Holidays</a></li>
                            <li class="menu-item"><a href="#">Partnership</a></li>
                            <li class="menu-item"><a href="/contact-us">Contact Us</a></li>
					    </ul>
				    </div>
			    </nav>
			    <!-- End Main Menu -->
					
			    <ul class="navbar-right">
				    <!-- One Page Layout Navigation Buttons -->
				    <li id="ajax-b1"><a href="#" class="tmq_closeserv" title="Back to Home"><i class="fa fa-home"></i></a></li>
				    <li id="ajax-b2"><a href="#" class="link-index" title="Back to List"><i class="fa fa-th-large"></i></a></li>
				    <li id="ajax-b3"><a href="#" class="link-prev" title="Previous"><i class="fa fa-chevron-left"></i></a></li>
				    <li id="ajax-b4"><a href="#" class="link-next" title="Next"><i class="fa fa-chevron-right"></i></a></li>
				    <!-- End One Page Layout Navigation Buttons -->
						
				    <!-- Search Button -->
				    <li id="search" data-toggle="popover"><a href="javascript:void(0);" class="top-search" title="Search"><i class="fa fa-search"></i></a></li>
				    <!-- End Search Button -->
			    </ul>
		    </div>
	    </div>
    </header>
    <!-- END Header Section -->