<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="MyCondo.Bookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Bookings
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Bookings
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <asp:scriptmanager runat="server">
    </asp:scriptmanager>
    <asp:calendar runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
        <DayStyle Width="14%" />
        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
        <TodayDayStyle BackColor="#CCCC99" />
    </asp:calendar>
</asp:Content>
