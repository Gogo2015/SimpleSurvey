<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditClass.aspx.cs" Inherits="SimpleSurvey.EditClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>

<body>
    <div id="page-wrap">
        <form id="form1" runat="server">
            <div style="margin-left: 480px">
                <asp:Label CssClass="body" ID="Label1" runat="server" Font-Bold="True" Text="Edit Class"></asp:Label>
            </div>
            <asp:Label CssClass="body" ID="lbClassName" runat="server" Text="Class Name:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtClassName" runat="server" Width="200px"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Label CssClass="body" ID="lbRegistrationCode" runat="server" Text="Registration Code:"></asp:Label>
            &nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtRegistrationCode" runat="server" Width="200px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button CssClass="button1" ID="btnSubmit" runat="server" Text="Submit" OnClick ="BtnSubmit" />
    &nbsp;
            <asp:Button CssClass="button1" ID="btnCancel" runat="server" Text="Cancel" Onclick ="BtnCancel"/>
    &nbsp;
            <asp:Button CssClass="button1" ID="btnDelete" runat="server" Text="Delete" Onclick ="BtnDelete" />
        </form>
    </div>
</body>
</html>
