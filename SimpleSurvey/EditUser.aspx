<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="SimpleSurvey.EditUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 440px">
            <asp:Label ID="UserMaintenance" runat="server" style="font-weight: 700" Text="User Maintenance"></asp:Label>
        </div>
        <div style="text-align: right;">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
        </div>
        <br />
        <asp:Label ID="LFirstName" runat="server" Text="First Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFirstName" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LLastName" runat="server" Text="Last Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLastName" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LUserName" runat="server" Text="User ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUserName" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LPassword" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <tr>
                <td style="width: 25%; text-align: left;">
                    &nbsp;</td>
                <td>
                    <br />
        <br />
        <asp:Label ID="LClass" runat="server" Text="Class:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <tr>
                <td style="width: 25%; text-align: left;">
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlClasses" runat="server" Width="200px">
        </asp:DropDownList>
                    <br /><br />
                    <asp:Button ID="btnSubmit" runat="server" Enabled="True" 
                        onclick="btnSubmit_Click" Text="Save" />
                    &nbsp;<asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
                        Text="Cancel" />
                </td>
            </tr>

    &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" Onclick ="btnDelete_Click" />

    &nbsp;<asp:Button ID="btnReset" runat="server" Text="Reset Password" OnClick ="BtnReset" />

    </form>

</body>
</html>