<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="SimpleSurvey.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="page-wrap">
        <div style="float:right">
        
            <asp:Button CssClass="button1" ID="btnMenu" runat="server" Font-Bold="True" onclick="btn_Logout_Click" Text="Logout" Width="169px"/>
            
        </div>
        <br />
        <asp:Label CssClass="body" ID="Label2" runat="server" Text="Menu Options"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:DropDownList ID="ddlTypes" runat="server" Height="35px" Width="209px">
            <asp:ListItem>Manage Surveys</asp:ListItem>
            <asp:ListItem>Manage Users</asp:ListItem>
            <asp:ListItem>Manage Questions</asp:ListItem>
            <asp:ListItem>Take Survey</asp:ListItem>
            <asp:ListItem>Survey Responses</asp:ListItem>
            <asp:ListItem>Manage Classes</asp:ListItem>
        </asp:DropDownList>
        <tr>
                <td style="width: 25%; text-align: left;">
                    &nbsp;</td>
                <td>
                    <br /><br />
                </td>
        </tr>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button CssClass="button1" ID="btnSubmit" runat="server" Enabled="True" 
                        onclick="btnSubmit_Click" Text="Go" Width="61px" Height="31px" />
    </div>
    </form>
</body>
</html>
