<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateIncident.aspx.cs" Inherits="MyCondo.CreateIncident" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Create Incident
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
    <div class="form-horizontal">


        <div class="form-group row">
            <asp:Label ID="lblDate" runat="server" Text="Date: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
            </div>
        </div>


        <div class="form-group row">
            <asp:Label ID="lblTime" runat="server" Text="Time: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtTime" runat="server" TextMode="Time" class="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <asp:Label ID="lblUnit" runat="server" Text="Unit Number: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtUnit" runat="server" TextMode="Number" class="form-control"></asp:TextBox>
            </div>
        </div>

 <%--       <div class="form-group row">
            <asp:Label ID="lblDes" runat="server" Text="Description: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" class="form-control" Rows="5"></asp:TextBox>
            </div>
        </div>--%>

        <div class="form-group row">
            <asp:Label ID="lblDescription" runat="server" Text="Description: " class="col-sm-2 col-form-label"></asp:Label>
   <div id="summernote-editor">
                                     
                                    </div>
        </div>



        <div class="form-group row">
            <asp:Label ID="lblUpload" runat="server" Text="Upload: " class="col-sm-2 col-form-label"></asp:Label>
            <div class="col-sm-10">
                <asp:FileUpload ID="UploadEvidence" runat="server" class="form-control" />
            </div>
        </div>



    </div>



</asp:Content>
