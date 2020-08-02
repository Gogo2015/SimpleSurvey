<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuUserClasses.aspx.cs" Inherits="SimpleSurvey.MenuUserClasses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Classes:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlClasses" runat="server">
        </asp:DropDownList>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" Text="Go" Width="50px" onclick ="btnSubmit_Click"/>
    </form>
</body>
</html>
