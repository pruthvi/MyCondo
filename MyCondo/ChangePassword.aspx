<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="MyCondo.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Change Password
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
       <div class="form-horizontal">
        

        <div class="form-group row">
            <asp:Label ID="lblOldPass" runat="server" Text="Old Password :" class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtOldPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
            </div>
        </div>


        <div class="form-group row">
            <asp:Label ID="lblNewPass" runat="server" Text="New Password: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtNewPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <asp:Label ID="lblConfirm" runat="server" Text="Confirm New Password: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtConfirm" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
            </div>
        </div>
       
        <div class="form-group row">
            <div class="col-sm-10">
                <asp:Button ID="btnSubmit" runat="server" Text="Change Password" CssClass="btn btn-primary btn-rounded w-md" />
            </div>
        </div>
    </div>

</asp:Content>
