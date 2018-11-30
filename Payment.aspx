<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="MyCondo.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="LabelPayment" runat="server" Font-Bold="True" Font-Size="Larger" Text="Payment"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="LabelSelect" runat="server" Font-Bold="True" Text="Select Payment Method"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonListPaymentMethod" runat="server">
            <asp:ListItem>Credit Card</asp:ListItem>
            <asp:ListItem>Net Banking</asp:ListItem>
            <asp:ListItem>PayPal</asp:ListItem>
            <asp:ListItem>Debit Card</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Label ID="LabelPersonalInfo" runat="server" Font-Bold="True" Text="Personal Information"></asp:Label>
        <br />
        <br />
        Email Address<br />
        <asp:TextBox ID="TextBoxEmail" runat="server" Width="649px"></asp:TextBox>
        <br />
        First Name<br />
        <asp:TextBox ID="TextBoxFirstName" runat="server" Width="647px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LabelCreditCardInfo" runat="server" Font-Bold="True" Text="Credit Card Info"></asp:Label>
        <br />
        <br />
        Name On Card<br />
        <asp:TextBox ID="TextBox1" runat="server" Width="647px"></asp:TextBox>
        <br />
        Card Number<br />
        <asp:TextBox ID="TextBox2" runat="server" Width="645px"></asp:TextBox>
        <br />
        <br />
        Expiration<br />
        <asp:TextBox ID="TextBoxMonth" runat="server" Width="75px"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBoxYear" runat="server" Width="87px"></asp:TextBox>
        <br />
        <br />
        CVV Number<br />
        <asp:TextBox ID="TextBoxCVV" runat="server" Width="171px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" />
    
    </div>
    </form>
</body>
</html>
