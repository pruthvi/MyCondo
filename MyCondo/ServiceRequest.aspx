<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ServiceRequest.aspx.cs" Inherits="MyCondo.ServiceRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Create Service Request
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
           <div class="form-horizontal">
        <div class="form-group row">
            <div class="col-sm-10" style="left: 0px; top: 0px; height: 494px">
                <table style="width: 100%">
                    <tr>
                        <td colspan="2">
                            <h1>Service Request Form</h1>
                        </td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                <asp:TextBox ID="txtName" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>ID:</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
                <asp:TextBox ID="txtId" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="height: 32px"></td>
                    </tr>
                    <tr>
                        <td>Subject:</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
                <asp:TextBox ID="txtSubject" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td style="height: 32px"></td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                <asp:TextBox ID="txtDescrip" runat="server" class="form-control" TextMode="MultiLine" ></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 32px">PermissionToEnter:</td>
                        <td style="height: 32px"></td>
                    </tr>
                    <tr>
                        <td>
                <asp:TextBox ID="txtPToEnter" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Status:</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                <asp:TextBox ID="txtStatus" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>


        <div class="form-group row">
            <div class="col-sm-10">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-rounded w-md" />
            </div>
        </div>
    </div>

</asp:Content>
