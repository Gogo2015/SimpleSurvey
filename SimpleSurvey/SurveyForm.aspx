<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurveyForm.aspx.cs" Inherits="SimpleSurvey.SurveyForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Take Survey</title>
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    
    <style type="text/css">
        .auto-style1 {
            width: 25%;
        }
        .auto-style2 {
            width: 489px;
        }
        .auto-style3 {
            height: 28px;
        }
        .auto-style4 {
            width: 489px;
            height: 28px;
        }
    </style>
    
    </head>
<body>
    <form id="form1" runat="server">
    <div id="page-wrap">
        <asp:Button ID="btnAccountInfo" CssClass="buttonredright" runat="server" Text="ACCOUNT INFORMATION"  onclick ="btn_Click_AccountInfo" Height="31px" Width="281px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
              
            <table cellpadding="2" class="style1">
            <tr>
                <td style="text-align: left;" class="auto-style1">
        <asp:Label CssClass="body" ID="Label2" runat="server" Text="Classes:" ForeColor="Black" Font-Size="Medium"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlClasses" runat="server" Height="35px" Width="209px">
        </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="btnFindSurveys" runat="server" Enabled="True" 
                        onclick="btnFind_Surveys" CssClass="buttonred" Text="Find" Width="87px" />
                    &nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left; font-family: Georgia, sans-serif;" class="auto-style3">
                    Select Survey:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlSurveys" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlSurveys_SelectedIndexChanged" Width="41%">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left;">
                    <asp:Panel ID="pnlSurvey" runat="server" Width="801px">
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="text-align: left;" class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Button CssClass="buttonred" ID="btnSubmit" runat="server" Enabled="False" 
                        onclick="btnSubmit_Click" Text="Submit" />
                    &nbsp;<asp:Button CssClass="buttonred" ID="btnCancel" runat="server" CausesValidation="False" 
                        Text="Cancel" onlick ="BtnCancel" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
