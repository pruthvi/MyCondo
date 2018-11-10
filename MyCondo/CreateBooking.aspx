<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateBooking.aspx.cs" Inherits="MyCondo.CreateBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Create Booking (Elevator, Party Hall, Guest Suite)
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
           <div class="form-horizontal">
        <div class="form-group row">
            <asp:Label ID="lblId" runat="server" Text="UserID :" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtId" runat="server" class="form-control"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Date :" class="col-sm-2 col-form-label"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>


            </div>
        </div>


        <div class="form-group row">
            <div class="col-sm-10">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-rounded w-md" />
            </div>
        </div>
    </div>

</asp:Content>
