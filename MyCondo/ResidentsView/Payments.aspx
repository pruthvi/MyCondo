<%@ Page Title="" Language="C#" MasterPageFile="~/Resident.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="MyCondo.ResidentsView.Payments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Payments
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Payments
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
        <div style="width: 700px" class="objectcenter">
            <asp:GridView ID="PaymentDisplay" Width="700px" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
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


                                <!-- Identify your business so that you can collect the payments. -->
                                <input type="hidden" name="business" value="barbara.hounkpe@yahoo.ca">

                                <!-- Specify a Buy Now button. -->
                                <input type="hidden" name="cmd" value="_xclick">

                                <!-- Specify details about the item that buyers will purchase. -->
                                <input type="hidden" name="item_name" value="Hot Sauce-12oz. Bottle">
                                <input type="hidden" name="amount" value="5.95">
                                <input type="hidden" name="currency_code" value="USD">

                                <!-- Display the payment button. -->
                                <input class="float-right" type="image" name="submit"
                                    src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif"
                                    alt="Buy Now">
                                <img alt="" border="0" width="1" height="1"
                                    src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif">
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

        </div>
    </form>
</asp:Content>
