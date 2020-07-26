<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateClass.aspx.cs" Inherits="SimpleSurvey.CreateClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 400px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Register Class"></asp:Label>
        </div>
        <asp:Label ID="lbName" runat="server" Text="Class Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtClassName" runat="server" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbRegistration" runat="server" Text="Registration Code:"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtCode" runat="server" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick ="BtnSubmit"/>
&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" onlick ="BtnCancel"/>
    </form>
</body>
</html>
