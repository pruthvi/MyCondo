<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateUnit.aspx.cs" Inherits="MyCondo.CreateUnit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Create Units
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
    <div class="form-horizontal">
        <div class="form-group row">
            <asp:label id="lblUnum" runat="server" text="Unit Number: " class="col-sm-2 col-form-label"></asp:label>
            <div class="col-sm-10">
                <asp:textbox id="txtUnum" runat="server" class="form-control"></asp:textbox>
            </div>
        </div>


        <div class="form-group row">
            <asp:label id="lblOccu" runat="server" text="Occupancy: " class="col-sm-2 col-form-label"></asp:label>
            <div class="col-sm-10">
                <asp:textbox id="txtOccu" runat="server" class="form-control"></asp:textbox>
            </div>
        </div>

        <div class="form-group row">
            <asp:label id="lblOwnerId" runat="server" text="Owner ID: " class="col-sm-2 col-form-label"></asp:label>
            <div class="col-sm-10">
                <asp:textbox id="txtOwnerId" runat="server" class="form-control"></asp:textbox>
            </div>
        </div>
        <div class="form-group row">
            <asp:label id="lblOwnerAddr" runat="server" text="Owner Adress ID: " class="col-sm-2 col-form-label"></asp:label>
            <div class="col-sm-10">
                <asp:textbox id="txtOwnerAddr" runat="server" class="form-control"></asp:textbox>
            </div>
        </div>
        <div class="form-group row">
            <asp:label id="lblUnitAddr" runat="server" text="Unit Adress ID: " class="col-sm-2 col-form-label"></asp:label>
            <div class="col-sm-10">
                <asp:textbox id="txtUnitAddr" runat="server" class="form-control"></asp:textbox>
            </div>
        </div>
        <div class="form-group row">
            <asp:label id="lblOccuDate" runat="server" text="Occupancy Date: " class="col-sm-2 col-form-label"></asp:label>
            <div class="col-sm-10">
                <asp:textbox id="txtOccuDate" runat="server" class="form-control"></asp:textbox>
            </div>
        </div>

    </div>

</asp:Content>
