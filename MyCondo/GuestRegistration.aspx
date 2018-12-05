<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GuestRegistration.aspx.cs" Inherits="MyCondo.GuestRegistration" %>

<script runat="server">

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Guest Registration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
               <div class="form-horizontal">
        <div class="form-group row">
            First Name:
            <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
            <br />
            Last Name:
            <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
            <br />
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBoxEmail" runat="server" Width="410px"></asp:TextBox>
            <br />
            Address:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxAddress" runat="server" Width="391px"></asp:TextBox>
            <br />
            City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxCity" runat="server"></asp:TextBox>
            <br />
            State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxState" runat="server"></asp:TextBox>
            <br />
            Zip:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxZip" runat="server" Width="105px"></asp:TextBox>
            <br />
            Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBoxPhone" runat="server" Width="194px"></asp:TextBox>
            <br />
            <br />
            Unit #&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBoxUnit" runat="server"></asp:TextBox>
            <br />
            <br />
            How did you hear about our property?<br />
            <asp:CheckBoxList ID="CheckBoxList2" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                <asp:ListItem>Realtor</asp:ListItem>
                <asp:ListItem>Friends/Relative</asp:ListItem>
                <asp:ListItem>Newspaper</asp:ListItem>
                <asp:ListItem>Sign</asp:ListItem>
                <asp:ListItem>Social Media</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            Arrival Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxArrivalDate" runat="server"></asp:TextBox>
            <br />
            Departure Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxDate" runat="server"></asp:TextBox>
            <br />
            Vehicle Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxVehicleInfo" runat="server"></asp:TextBox>
            <br />
            Emergency Contact #&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxEmergencyContact" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>


        <div class="form-group row">
            <div class="col-sm-10">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-rounded w-md" />
            </div>
        </div>
    </div>
</asp:Content>
