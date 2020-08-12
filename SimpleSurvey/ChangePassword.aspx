<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="SimpleSurvey.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <div id="page-wrap">
        <form id="form1" runat="server">
            <div text-align: center style="margin-left: 480px">
                <asp:Label CssClass="body" ID="txtTitle" runat="server" Font-Bold="True" Text="Change Password"></asp:Label>
            </div>
            <asp:Label CssClass="body" ID="lbUsername" runat="server" Text="Username:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtUsername" runat="server" Width="200px"></asp:TextBox>
            <asp:Label ID="lbErrorMsg" runat="server" ForeColor="#993333"></asp:Label>
            <br />
            <br />
            <asp:Label CssClass="body" ID="lbCurrent" runat="server" Text="Current Password:"></asp:Label>
    &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCurrent" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="lbErrorMsgP" runat="server" ForeColor="#993333"></asp:Label>
            <br />
            <br />
            <asp:Label CssClass="body" ID="lbNew" runat="server" Text="New Password:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtNew" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
            <asp:Label CssClass="body" ID="lbErrorMsgNew" runat="server" ForeColor="#993333"></asp:Label>
            <br />
            <br />
            <asp:Label CssClass="body" ID="lbConfirm" runat="server" Text="Confirm Password:"></asp:Label>
    &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtConfirm" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button CssClass="button1" ID="btnSubmit" runat="server" Text="Submit" onclick ="BtnSubmit"/>
    &nbsp;<asp:Button CssClass="button1" ID="btnCancel" runat="server" Text="Cancel" onclick ="BtnCancel" />
        </form>
    </div>
</body>
</html>
