<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurveyForm.aspx.cs" Inherits="SimpleSurvey.SurveyForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Take Survey</title>
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    
    </head>
<body>
    <form id="form1" runat="server">
    <div id="page-wrap">
        <asp:Button ID="btnAccountInfo" CssClass="button1" runat="server" Text="ACCOUNT INFORMATION" onclick ="btn_Click_AccountInfo" Height="31px" Width="281px" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Classes:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
                
        <asp:DropDownList ID="ddlClasses" runat="server" Height="35px" Width="209px">
        </asp:DropDownList>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnFindSurveys" runat="server" Enabled="True" 
                        onclick="btnFind_Surveys" Text="Find" Width="61px" />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Select Survey:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlSurveys" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlSurveys_SelectedIndexChanged" Width="41%">
                    </asp:DropDownList>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnPopulateSurvey" runat="server" Enabled="True" 
                        onclick="btnPopulate_Survey" Text="Fill Out" Width="61px" />
                    <br />
                
        
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
              
            <table cellpadding="2" class="style1">
            <tr>
                <td style="width: 25%; text-align: left;">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 25%; text-align: left;">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left;">
                    <asp:Panel ID="pnlSurvey" runat="server">
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="width: 25%; text-align: left;">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Enabled="False" 
                        onclick="btnSubmit_Click" Text="Submit" />
                    <asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
                        Text="Cancel" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
