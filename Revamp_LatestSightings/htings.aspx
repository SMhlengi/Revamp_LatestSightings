<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="htings.aspx.cs" Inherits="Revamp_LatestSightings.htings" %>

<asp:Content id="homepageTings" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<script src="<%= ResolveUrl("~/js/swiper.js?v=3") %>"></script>

<style>

.swiper-container {
    width: 100%;
    height: 300px;
}  

#lodgeImage{
    width:300px;
    height:100%;
}
</style>

    <!-- Slider main container -->
    <div class="swiper-container">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
            <!-- Slides -->
            <div class="swiper-slide" >Slide 1</div>
            <div class="swiper-slide">Slide 2</div>
            <div class="swiper-slide">Slide 3</div>
            <div class="swiper-slide" >Slide 1</div>
            <div class="swiper-slide" >Slide 1</div>
            <div class="swiper-slide" >Slide 1</div>
            <!-- -->
            <div class="swiper-slide" >Slide 1</div>
            <div class="swiper-slide">Slide 2</div>
            <div class="swiper-slide">Slide 3</div>
            <div class="swiper-slide" >Slide 1</div>
            <div class="swiper-slide" >Slide 1</div>
            <div class="swiper-slide" >Slide 1</div>
        </div>
        <!-- If we need pagination -->
        <div class="swiper-pagination"></div>
    
        <!-- If we need navigation buttons -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    
        <!-- If we need scrollbar -->
        <div class="swiper-scrollbar"></div>
    </div>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper('.swiper-container', {
            loop: true,
            pagination: '.swiper-pagination',
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            paginationClickable: true,
            spaceBetween: 30,
            //centeredSlides: true,
            autoplay: 3500,
            autoplayDisableOnInteraction: false
        });
    </script>



</asp:Content>