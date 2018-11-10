<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateNewsfeed.aspx.cs" Inherits="MyCondo.CreateNewsfeed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Create Newsfeed
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
               <div class="form-horizontal">
        <div class="form-group row">
            <asp:Label ID="Label1" runat="server" Text="Date:  " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="Creationdate" runat="server" Type="Datetime" class="form-control"></asp:TextBox>
            </div>
            <asp:Label ID="Label2" runat="server" Text="Priority:  "  class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="Priority" Type="text" runat="server" class="form-control"></asp:TextBox>
        
            </div>
                        <asp:Label ID="Label3" runat="server" Text="Title:  "  class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="Title" Type="text" runat="server" class="form-control"></asp:TextBox>
        
            </div>
            </div>
                        <asp:Label ID="Label4" runat="server" Text="Description:  "  class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="Description" Type="text" runat="server" class="form-control"></asp:TextBox>
        
            </div>

            </div>



        <div class="form-group row">
            <div class="col-sm-10">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-rounded w-md" />
            </div>
        </div>
    
</asp:Content>
