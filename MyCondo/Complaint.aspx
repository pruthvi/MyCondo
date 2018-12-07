<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Complaint.aspx.cs" Inherits="MyCondo.Complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Complaint
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Complaint
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <div class="account-box mb-3">
        <asp:Table ID="CreateComplaintTable" runat="server">
            
            <asp:TableHeaderRow>
                <asp:TableHeaderCell Width="150px"></asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" Font-Bold="true" DisplayMode="BulletList" HeaderText="Please fill the required field" runat="server" ValidationGroup="CreateComplaint" />
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableHeaderRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell CssClass="font-weight-bold">Create a Complaint</asp:TableCell>
            </asp:TableHeaderRow>
   

            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtComplaintID" runat="server" ErrorMessage="Please enter a valid date" ValidationGroup="CreateComplaint">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Complaint ID:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtComplaintID" class="form-control" runat="server" TextMode="Number"> </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtReporterName" runat="server" ErrorMessage="Please enter a valid date" ValidationGroup="CreateComplaint">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Reporter Name:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtReporterName" class="form-control" runat="server" TextMode="SingleLine"> </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtTile" runat="server" ErrorMessage="Please enter a Title" ValidationGroup="CreateComplaint">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Title:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTile" class="form-control" runat="server" TextMode="SingleLine" > </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredDescription" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtDescription" runat="server" ErrorMessage="Please enter a Description" ValidationGroup="CreateComplaint">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Complaint Message: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDescription" class="form-control" runat="server" TextMode="MultiLine" CssClass="form-control rounded-0" Rows="5"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredDate" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtDate" runat="server" ErrorMessage="Please enter a Description" ValidationGroup="CreateComplaint">
                        *
                    </asp:RequiredFieldValidator>
                <asp:Label runat="server" class="font-weight-medium" Text="Date:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDate" class="form-control" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">                                
                    <asp:Label runat="server" class="font-weight-medium required" Text="Related User:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtRelatedUser" class="form-control" runat="server" TextMode="SingleLine" > </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">                                
                    <asp:Label runat="server" class="font-weight-medium required" Text="Related Unit:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtRelatedUnit" class="form-control" runat="server" TextMode="SingleLine" > </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>



            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>
                    <%--<asp:Button ID="btnCreatecomplaint" class="btn btn-block btn-success waves-effect waves-light" OnClick="btnCreatecomplaint_Click" runat="server" Text="Create Complaint" ValidationGroup="CreateComplaint" />--%>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>


                <asp:TableCell>
                    <br />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>

