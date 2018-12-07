<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="MyCondo.BookingReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Booking Report
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Booking Report
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
 <%--   <div style="Width:700px" class="objectcenter">
        <asp:Button ID="btnCreateBooking" class="btn btn-block btn-success waves-effect waves-light float-right" OnClick="btnCreateBooking_Click" runat="server" Text="Create Bookings" />
    </div>--%>


        <div class="account-box mb-3">
           <asp:Table ID="Createnewstable" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtStartDate" runat="server" ErrorMessage="Please enter a valid Start Date" ValidationGroup="BookingReport">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Start Date: "></asp:Label>
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:TextBox ID="txtStartDate" class="form-control" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>

               <asp:TableHeaderRow>
                <asp:TableHeaderCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtEndDate" runat="server" ErrorMessage="Please enter a valid End Date" ValidationGroup="BookingReport">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="End Date: "></asp:Label>
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:TextBox ID="txtEndDate" class="form-control" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>

              <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnSearchBooking" class="btn btn-block btn-success waves-effect waves-light" 
                    
                        runat="server" Text="Search Booking" ValidationGroup="BookingReport" />
                </asp:TableCell>
            </asp:TableRow>
                   <%--OnClick="btnCreateUnit_Click"--%> 
            </asp:Table>
         </div>
    <div>
        <asp:GridView ID="BookingsDisplay" OnRowDataBound="BookingDisplay_RowDataBound" Width="700px" runat="server" OnSelectedIndexChanged="BookingsDisplay_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Font-Size="Medium" GridLines="Horizontal">
            <EmptyDataTemplate>
                <h3>There is no Booking at this moment.<a href="Bookings.aspx">Create One?</a></h3>
            </EmptyDataTemplate>
            <Columns>
                <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" />
                <asp:BoundField DataField="BookingType" HeaderText="BookingType" SortExpression="BookingType" />
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                <asp:BoundField DataField="BookingDescription" HeaderText="BookingDescription" SortExpression="BookingDescription" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                <asp:BoundField DataField="BookingStatus" HeaderText="BookingStatus" SortExpression="BookingStatus" />
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
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="SELECT * FROM [Booking] ORDER BY [StartDate]"></asp:SqlDataSource>
   </div>
</asp:Content>

