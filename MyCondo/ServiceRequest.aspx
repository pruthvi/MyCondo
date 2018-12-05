<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ServiceRequest.aspx.cs" Inherits="MyCondo.ServiceRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Service Request
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <div class="account-box mb-3">
         <asp:Table ID="Createnewstable" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell Width="150px"></asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" Font-Bold="true" DisplayMode="BulletList" HeaderText="Please fill the required field" runat="server" ValidationGroup="CreateNews" />
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableHeaderRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell CssClass="font-weight-bold">Request a service</asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableHeaderRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell><br /></asp:TableCell>
            </asp:TableHeaderRow>
             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredTitle" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtTitle" runat="server" ErrorMessage="Please enter a title" ValidationGroup="CreateNews">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="UserID: "></asp:Label>
                </asp:TableCell>
                  
                <asp:TableCell>
                    <asp:TextBox ID="txtTitle" class="form-control" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

                <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtTitle" runat="server" ErrorMessage="Please enter a title" ValidationGroup="CreateNews">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Subject: "></asp:Label>
                </asp:TableCell>
                  
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

              <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredDescription" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtDescription" runat="server" ErrorMessage="Please enter a Description" ValidationGroup="CreateNews">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Description: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDescription" class="form-control" runat="server" TextMode="MultiLine" CssClass="form-control rounded-0" Rows="5"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

                <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtTitle" runat="server" ErrorMessage="Please enter a title" ValidationGroup="CreateNews">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="PermissionToEnter: "></asp:Label>
                </asp:TableCell>
                  
                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                <asp:Label runat="server" class="font-weight-medium" Text="Status: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtExpiryDate" class="form-control" runat="server"  Text=""></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
          <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnCreateNews" class="btn btn-block btn-success waves-effect waves-light" runat="server" Text="Submit"  />
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
