<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_SiteHeader.ascx.cs" Inherits="Revamp_LatestSightings.uc_SiteHeader" %>

    <script>
        function LogoutFromLatestSightings() {
            $.cookie('lsrm', null, { path: '/' });
            $.cookie('lsusername', null, { path: '/' });
            $.cookie('lspassword', null, { path: '/' });
            console.log("AM DONE LOGGING OUT");
        }
    </script>
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
                                <a href="javascript:void(0);" class="tmq_closeserv viewFinancials">View Financials | </a> <!--| -->
                                <a href="#" class="tmq_closeserv uploadVideo">Upload Video |</a>  <!--|-->
                                <a href="#" class="tmq_closeserv uploadGalleryImage">Upload Image |</a> <!--|-->
                                <a href="#" class="tmq_closeserv myAccount">My Account |</a> <!--|-->
                                <a href="#" class="tmq_closeserv Login">Login</a>
                                <asp:LinkButton ID="logout" runat="server" class="tmq_closeserv Logout" OnClick="logout_Click" OnClientClick="LogoutFromLatestSightings()">Logout</asp:LinkButton>
                                <a href="#"><div class="livedrive"><i class="fa fa-video-camera" style="padding-right:10px;"></i>Live drive in 01:54:36</div></a>
                            </div>
                        
                    	</div>
                    </div>
                    <!-- Profile bar END -->
                    
					<div class="navbar-header">
					
						<!-- Responsive Menu Trigger -->
						<a id="trigger" href="#" title="Menu"><i class="fa fa-bars"></i></a>
						
						<!-- Website Logo -->
						<a class="navbar-brand" href="/"><img alt="" src="images/logo-horizontal-new.png"></a>
                        
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
								<li class="menu-item"><a href="/">Home</a></li>
                                <li class="menu-item"><a href="/about-us">About Us</a></li>
                                <!--<li class="menu-item"><a href="/sightings">Sightings</a></li>-->
                                <li class="menu-item"><a href="/gallery">Galleries</a></li>
                                 <li class="menu-item"><a href="/bloglist">Blogs</a></li>
                                <li class="menu-item"><a href="/holidays">Holidays</a></li>
                                <li class="menu-item"><a href="/partnership">Partnership</a></li>
                                <li class="menu-item"><a href="/contact-us">Contact Us</a></li>
							</ul>
						</div>
					</nav>
					<!-- End Main Menu -->
					
					
				</div>
			</div>
		</header>
		<!-- End Header -->
    <!-- END Header Section -->
    <script>

        var hasUserNameBeenSet = "<%=username %>";
        if (hasUserNameBeenSet != "") {
            $(".viewFinancials").show();
            $(".viewFinancials").attr("href", "http://lscms.socialengine.co.za/login");
            $(".Login").hide();
            $(".Logout").show();
            $(".uploadVideo").show();
            $(".uploadVideo").attr("href", "addvideo");
            $(".myAccount").show();
            $(".myAccount").attr("href", "myaccount");
        }
    </script>