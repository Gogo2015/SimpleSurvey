<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateClass.aspx.cs" Inherits="SimpleSurvey.CreateClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <div id="page-wrap">
        <form id="form1" runat="server">
            <div style="margin-left: 400px">
                <asp:Label CssClass="body" ID="Label1" runat="server" Font-Bold="True" Text="Register Class"></asp:Label>
            </div>
            <asp:Label CssClass="body" ID="lbName" runat="server" Text="Class Name:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtClassName" runat="server" Width="200px"></asp:TextBox>
            <br />
            <br />
            <asp:Label CssClass="body" ID="lbRegistration" runat="server" Text="Registration Code:"></asp:Label>
    &nbsp;&nbsp;
            <asp:TextBox ID="txtCode" runat="server" Width="200px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button CssClass="button1" ID="btnSubmit" runat="server" Text="Submit" onclick ="BtnSubmit"/>
    &nbsp;
            <asp:Button CssClass="button1" ID="btnCancel" runat="server" Text="Cancel" onlick ="BtnCancel"/>
        </form>
    </div>
</body>
</html>
