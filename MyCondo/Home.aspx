<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyCondo.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    News Feed
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <asp:GridView ID="NewsFeedTable" runat="server"></asp:GridView>
</asp:Content>
