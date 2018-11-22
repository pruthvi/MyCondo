﻿<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyCondo.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:GridView ID="NewsFeedView" Width="500px" runat="server" AutoGenerateColumns="False" OnRowDataBound="NewsFeedView_RowDataBound" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <EmptyDataTemplate>
                        <h3>There is no news at this moment.<a href="CreateNews.aspx">Create One?</a></h3>
                    </EmptyDataTemplate>
                    <Columns>
                        <asp:TemplateField HeaderText="News">
                            <ItemTemplate>
                                <div class="form-group mb-3">
                                    <br />
                                    <asp:Label ID="lblTitle" class="header-title font-weight-bold" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                                    <asp:Label ID="lblDate" class="text-muted float-right" runat="server" Text='<%# Bind("Creationdate") %>'></asp:Label>
                                </div>
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Font-Size="XX-Large" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </asp:TableCell>
            <asp:TableCell>

            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
                   <asp:GridView ID="BookingsView" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingId" DataSourceID="SqlDataSource">
                       <Columns>
                           <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" />
                           <asp:BoundField DataField="BookingType" HeaderText="BookingType" SortExpression="BookingType" />
                           <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                           <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                           <asp:BoundField DataField="BookingDescription" HeaderText="BookingDescription" SortExpression="BookingDescription" />
                           <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                           <asp:BoundField DataField="BookingStatus" HeaderText="BookingStatus" SortExpression="BookingStatus" />
                       </Columns>

               </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="SELECT * FROM [Booking]"></asp:SqlDataSource>
</asp:Content>
