<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="MyCondo.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Send Feedback
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
           <div class="form-horizontal">
        <div class="form-group row">
            <asp:Label ID="UserIdLabel" runat="server" Text="UserId: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="UserId" runat="server" class="form-control"></asp:TextBox>
            </div>
            <asp:Label ID="MessageLabel" runat="server" Text="Message: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="Message"  Type="Text" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>


        <div class="form-group row">
            <div class="col-sm-10">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-rounded w-md" />
            </div>
        </div>
    </div>

</asp:Content>
