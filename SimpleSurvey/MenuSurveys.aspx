<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuSurveys.aspx.cs" Inherits="SimpleSurvey.MenuSurveys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Menu Options"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlTypes" runat="server" Height="35px" Width="209px">
        </asp:DropDownList>
        <tr>
                <td style="width: 25%; text-align: left;">
                    &nbsp;</td>
                <td>
                    <br /><br />
                </td>
        </tr>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSubmit" runat="server" Enabled="True" 
                        onclick="btnSubmit_Click" Text="Go" Width="61px" />
    </form>
</body>
</html>
