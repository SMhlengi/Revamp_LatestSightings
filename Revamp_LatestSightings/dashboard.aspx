<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Revamp_LatestSightings.dashboard" %>

<asp:Content ID="dashboard" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .sitemap {
            display: none;
        }

        .footer {
            position: absolute;
        }

    </style>
    <!-- Main Container Section -->			
    <div class="container">
        <div id="page-content">

            <!-- Page Content Area -->
            <div id="content-inner">
                <asp:PlaceHolder id="completeprofile" runat="server"></asp:PlaceHolder>

            </div>
        </div>
    </div>


</asp:Content>