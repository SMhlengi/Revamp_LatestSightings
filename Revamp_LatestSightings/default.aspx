<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Revamp_LatestSightings._default" %>
<%@ Register Src="~/uc_HomePage_Main_Container_Section.ascx" TagName="section" TagPrefix="homepageMain" %>

<asp:Content ID="homepage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <homepageMain:section id="hbmsection" runat="server"></homepageMain:section>

</asp:Content>