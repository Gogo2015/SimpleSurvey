<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SimpleSurvey.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 480px">
            <asp:Label ID="lbTitle" runat="server" Font-Bold="True" Font-Underline="False" Text="Register"></asp:Label>
        </div>
        <asp:Label ID="lbFirstName" runat="server" Text="First Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFirstName" runat="server" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbLastName" runat="server" Text="Last Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLastName" runat="server" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbUsername" runat="server" Text="Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUsername" runat="server" Width="200px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="txtErrorUser" runat="server" Font-Size="Small" ForeColor="#993333" Width="200px"></asp:Label>
        <br />
        <asp:Label ID="lbPassword" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="txtErrorPass" runat="server" Font-Size="Small" ForeColor="#993333" Width="200px"></asp:Label>
        <br />
        <asp:Label ID="lbCode" runat="server" Text="Class Registration Code:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCode" runat="server" Width="200px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="txtErrorClass" runat="server" Font-Size="Small" ForeColor="#993333" Width="200px"></asp:Label>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick ="btnSubmit_Click"  />
&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Onlick ="btnCancel_Click"/>
    </form>
</body>
</html>
