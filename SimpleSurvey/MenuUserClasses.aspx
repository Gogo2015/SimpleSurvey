<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuUserClasses.aspx.cs" Inherits="SimpleSurvey.MenuUserClasses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <div id="page-wrap">
        <form id="form1" runat="server">
            <div>
            </div>
            <asp:Label CssClass="body" ID="Label1" runat="server" Text="Classes:"></asp:Label>
    &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlClasses" runat="server">
            </asp:DropDownList>
            <br />
            <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button CssClass="buttonnopadding" ID="btnSubmit" runat="server" Text="Go" Width="59px" onclick ="btnSubmit_Click"/>
        </form>
    </div>
</body>
</html>
