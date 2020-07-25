<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditQuestions.aspx.cs" Inherits="SimpleSurvey.EditQuestions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .auto-style1 {
            width: 25%;
            height: 25px;
        }
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            width: 25%;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="2" class="style1">
            <tr>
                <td style="text-align: left;" class="auto-style1">
                    </td>
                <td class="auto-style2">
                    <div style="text-align: right;">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 25%; text-align: left;">
                    Question Type</td>
                <td>
                    <asp:DropDownList ID="ddlTypes" runat="server" Width="41%">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 25%; text-align: left;">
                    Title</td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="40%"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td style="width: 25%; text-align: left;">
                    Values</td>
                <td>
                    <asp:TextBox ID="txtValues" runat="server" Rows="3" TextMode="MultiLine" 
                        Width="40%"></asp:TextBox>
                    (Enter values as comma seperated)</td>
            </tr>
            <tr>
                <td style="text-align: left;" class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                        onclick="btnSubmit_Click" />
                    <asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
                        Text="Cancel" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="txtErrorMessage" runat="server" Width="200px" ForeColor="#993333"></asp:Label>
    </form>
</body>
</html>