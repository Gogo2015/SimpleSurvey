<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageSurveys.aspx.cs" Inherits="SimpleSurvey.ManageSurveys" %>

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
        .style2
        {
            width: 40%;
            height: 76px;
        }
        .style3
        {
            width: 20%;
            height: 76px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <asp:Button CssClass="button1" ID="Button1" runat="server" Font-Bold="True" style="float: right" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
    <table cellpadding="2" class="style1">
        <tr>
            <td style="width: 25%; text-align: left;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
                Description</td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" Width="40%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; font-family: Georgia, sans-serif;">
                Expires On</td>
            <td>
                <asp:TextBox ID="txtDate" runat="server" Width="40%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; font-family: Georgia, sans-serif;">
                Select Questions</td>
            <td>
                <table cellpadding="2" class="style1">
                    <tr>
                        <td style="width: 40%; font-family: Georgia, sans-serif;">
                            Source</td>
                        <td style="width: 20%; font-family: Georgia, sans-serif;">
                            &nbsp;</td>
                        <td style="width: 40%; font-family: Georgia, sans-serif;">
                            Target</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:ListBox ID="lbSource" runat="server" Rows="6" Width="100%"></asp:ListBox>
                        </td>
                        <td class="style3" style="text-align: center;">
                            <asp:Button CssClass="buttonnopadding" ID="btnAddAll" runat="server" CausesValidation="False" 
                                onclick="btnAddAll_Click" Text="&gt;&gt;" />
                            <br />
                            <asp:Button CssClass="buttonnopadding" ID="btnAddOne" runat="server" CausesValidation="False" 
                                onclick="btnAddOne_Click" Text=" &gt; " Width="28px" />
                            <br />
                            <asp:Button CssClass="buttonnopadding" ID="btnRemoveOne" runat="server" CausesValidation="False" 
                                onclick="btnRemoveOne_Click" Text=" &lt; " Width="28px" />
                            <br />
                            <asp:Button CssClass="buttonnopadding" ID="btnRemoveAll" runat="server" CausesValidation="False" 
                                onclick="btnRemoveAll_Click" Text="&lt;&lt;" />
                        </td>
                        <td class="style2">
                            <asp:ListBox ID="lbTarget" runat="server" Rows="6" Width="100%"></asp:ListBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left;">
        <asp:Label ID="LClass" runat="server" CssClass="body" Text="Classes:"></asp:Label>
        <div style ="margin-left: 120px">
                        </div>
                <br />
                <br />
            </td>
            <td>
        <asp:CheckBoxList ID="ListClasses" runat="server">
        </asp:CheckBoxList>
                        <br />
                <br />
                <asp:Button CssClass="button1" ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" />
                &nbsp;<asp:Button CssClass="button1" ID="btnCancel" runat="server" CausesValidation="False" 
                    Text="Cancel" onlick ="BtnCancel" />
            </td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
