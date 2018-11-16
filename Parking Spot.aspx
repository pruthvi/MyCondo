<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parking Spot.aspx.cs" Inherits="MyCondo.Parking_Spot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="LabelParkingSpot" runat="server" Font-Bold="True" Font-Size="Larger" Text="Parking Spot"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="LabelWhereToPark" runat="server" Font-Bold="True" Text="Where do you want to park?"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="456px"></asp:TextBox>
        <br />
        <br />
        <asp:RadioButton ID="RadioButtonArriving" runat="server" Text="Arriving" />
        <asp:RadioButton ID="RadioButtonLeaving" runat="server" Text="Leaving" />
        <br />
        <br />
        <asp:Label ID="LabelTime" runat="server" Font-Bold="True" Text="Time"></asp:Label>
        <br />
        <asp:TextBox ID="TextBoxHour" runat="server" Width="33px">Hour</asp:TextBox>
        <asp:TextBox ID="TextBoxMinute" runat="server" Width="43px">Minute</asp:TextBox>
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
&nbsp;<br />
        <br />
        <asp:Button ID="ButtonShowSpaces" runat="server" Text="Show parking spaces" />
    
    </div>
    </form>
</body>
</html>
