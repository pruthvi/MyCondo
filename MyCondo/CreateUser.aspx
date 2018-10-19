<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="MyCondo.CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Create User
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
    <div class="form-horizontal">
        

        <div class="form-group row">
            <asp:Label ID="lblId" runat="server" Text="User ID: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtId" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>


        <div class="form-group row">
            <asp:Label ID="lblFname" runat="server" Text="First Name: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtFname" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <asp:Label ID="lblLname" runat="server" Text="Last Name: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtLname" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <asp:Label ID="lblEmail" runat="server" Text="Email: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" ></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <asp:Label ID="lblPnum" runat="server" Text="Phone Number: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtPnum" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-10">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-rounded w-md" />
            </div>
        </div>
    </div>

</asp:Content>
