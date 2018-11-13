<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateBooking.aspx.cs" Inherits="MyCondo.CreateBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Create Booking (Elevator, Party Hall, Guest Suite)
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
           <div class="form-horizontal">
        <div class="form-group row">
            <table style="width: 100%">
                <tr>
                    <td>
                        <h1>Booking Form</h1>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 32px">UserID:</td>
                    <td style="height: 32px"></td>
                </tr>
                <tr>
                    <td>
                <asp:TextBox ID="txtId" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Booking Type:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                <asp:TextBox ID="txtType" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width: 100%">
                <tr>
                    <td style="width: 234px">StartDate:</td>
                    <td>EndDate:</td>
                </tr>
                <tr>
                    <td style="width: 234px">
                <asp:TextBox ID="txtStart" runat="server" class="form-control" TextMode="Date" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                <asp:TextBox ID="txtEnd" runat="server" class="form-control" TextMode="Date" Width="400px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table style="width: 100%">
                <tr>
                    <td>BookingDescription:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                <asp:TextBox ID="txtDescrip" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>BookingStatus:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                <asp:TextBox ID="txtStatus" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <div class="col-sm-10">
            </div>
        </div>


        <div class="form-group row">
            <div class="col-sm-10">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-rounded w-md" />
            </div>
        </div>
    </div>

</asp:Content>
