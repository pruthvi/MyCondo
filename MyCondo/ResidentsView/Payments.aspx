<%@ Page Title="" Language="C#" MasterPageFile="~/Resident.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="MyCondo.ResidentsView.Payments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Payments
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Payments
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <div style="width: 700px" class="objectcenter">
        <asp:GridView ID="PaymentDisplay" Width="700px" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" DataSourceID="SqlDataSource1">
            <EmptyDataTemplate>
                <h3>There is no Payment at this moment.<a href="Bookings.aspx">Create One?</a></h3>
            </EmptyDataTemplate>
            <Columns>
                <asp:TemplateField HeaderText="Payments">
                    <ItemTemplate>
                        <div class="form-group mb-3">
                            <br />
                            <asp:Label ID="lblmessage1" class="header-title font-weight-light" runat="server" Text='A Payment of '></asp:Label>
                            <asp:Label ID="lbAmount" class="header-title font-weight-bold" runat="server" Text='<%# Bind("Amount") %>'></asp:Label>
                            <asp:Label ID="Label1" class="header-title font-weight-light" runat="server" Text='CAD is '></asp:Label>
                            <asp:Label ID="Label2" class="header-title font-weight-bold" runat="server" Text='<%# Bind("PaymentStatus") %>'></asp:Label>
                            <asp:Label ID="Label3" class="header-title font-weight-light" runat="server" Text=' for '></asp:Label>
                            <asp:Label ID="lblBookingType" class="header-title font-weight-bold" runat="server" Text='<%# Bind("ServiceName") %>'></asp:Label>
                            <asp:Button ID="btnpay" class="btn btn-success waves-light float-right" OnClick="btnpay_Click" runat="server" Text="Make Payment" />
                        </div>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="SELECT [Amount], [PayerId], [ServiceName], [PaymentStatus] FROM [Payment]"></asp:SqlDataSource>
    </div>
</asp:Content>
