<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditQuestions.aspx.cs" Inherits="SimpleSurvey.EditQuestions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
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
                <td style="text-align: left;" class="auto-style1 font-family: Georgia, sans-serif;">
                    </td>
                <td class="auto-style2 font-family: Georgia, sans-serif;">
                        <asp:Button CssClass="buttonblueright" ID="Button1" runat="server" Font-Bold="True" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
                </td>
            </tr>
            <tr>
                <td style="width: 25%; text-align: left; font-family: Georgia, sans-serif;">
                    Question Type</td>
                <td>
                    <asp:DropDownList ID="ddlTypes" runat="server" Width="41%">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 25%; text-align: left; font-family: Georgia, sans-serif;">
                    Title</td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="40%"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td style="width: 25%; text-align: left; font-family: Georgia, sans-serif;">
                    Values</td>
                <td>
                    <asp:TextBox CssClass="body" ID="txtValues" runat="server" Rows="3" TextMode="MultiLine" 
                        Width="40%"></asp:TextBox>
                    (Enter values as comma seperated)</td>
            </tr>
            <tr>
                <td style="text-align: left;" class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button CssClass="button1" ID="btnSubmit" runat="server" Text="Submit" 
                        onclick="btnSubmit_Click" />
                    &nbsp;<asp:Button CssClass="button1" ID="btnCancel" runat="server" CausesValidation="False" 
                        Text="Cancel" onlick ="BtnCancel"/>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="txtErrorMessage" runat="server" Width="200px" ForeColor="#993333"></asp:Label>
    </form>
</body>
</html>