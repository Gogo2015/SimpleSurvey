<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSurvey.aspx.cs" Inherits="SimpleSurvey.EditSurvey"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 25%;
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="txtClass" runat="server" Text=""></asp:Label>
    <div style="text-align: right;">
        
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
    </div>
    <table  class="style1">
        <tr>
            <td style="width: 25%; text-align: left;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
                Description</td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" Width="40%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left;">
                Expires On</td>
            <td>
                <asp:TextBox ID="txtDate" runat="server" Width="40%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left;">
                Select Questions</td>
            <td>
                <table  class="style1">
                    <tr>
                        <td style="width: 40%;">
                            Source</td>
                        <td style="width: 20%;">
                            &nbsp;</td>
                        <td style="width: 40%;">
                            Target</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:ListBox ID="lbSource" runat="server" Rows="6" Width="100%"></asp:ListBox>
                        </td>
                        <td class="style3" style="text-align: center;">
                            <asp:Button ID="btnAddAll" runat="server" CausesValidation="False" 
                                onclick="btnAddAll_Click" Text="&gt;&gt;" />
                            <br />
                            <asp:Button ID="btnAddOne" runat="server" CausesValidation="False" 
                                onclick="btnAddOne_Click" Text=" &gt; " />
                            <br />
                            <asp:Button ID="btnRemoveOne" runat="server" CausesValidation="False" 
                                onclick="btnRemoveOne_Click" Text=" &lt; " />
                            <br />
                            <asp:Button ID="btnRemoveAll" runat="server" CausesValidation="False" 
                                onclick="btnRemoveAll_Click" Text="&lt;&lt;" />
                        </td>
                        <td class="style2">
                            <asp:ListBox ID="lbTarget" runat="server" Rows="6" Width="150%"></asp:ListBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left;">
        <div style ="margin-left: 120px">
                        </div>
                <br />
            </td>
            <td>
                <br />
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" />
                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" onclick="btnSubmit_Click"
                    Text="Cancel" />
                <asp:Button ID="btnDelete" runat="server" OnClick="btn_Delete" Text="Delete" />
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: left;" class="auto-style1">
                </td>
            <td class="auto-style2">
                </td>
        </tr>
    </table>
        <asp:Label ID="txtErrorMessage" runat="server" ForeColor="#993333" Width="300px"></asp:Label>
        </form>
</body>
</html>
