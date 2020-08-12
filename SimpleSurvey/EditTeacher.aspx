<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditTeacher.aspx.cs" Inherits="SimpleSurvey.EditTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 440px">
            <asp:Label CssClass="body" ID="UserMaintenance" runat="server" style="font-weight: 700" Text="Teacher Maintenance"></asp:Label>
        </div>
        <div style="text-align: right;">
        </div>
        <br />
        <asp:Label CssClass="body" ID="LFirstName" runat="server" Text="First Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFirstName" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label CssClass="body" ID="LLastName" runat="server" Text="Last Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLastName" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label CssClass="body" ID="LUserName" runat="server" Text="User ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUserName" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label CssClass="body" ID="LPassword" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <tr>
                <td style="width: 25%; text-align: left;">
                    &nbsp;</td>
                <td>
                    <br />
        <br />
                    <br /><br />
                    <asp:Button CssClass="button1" ID="btnSubmit" runat="server" Enabled="True" 
                        onclick="btnSubmit_Click" Text="Save" />
                    &nbsp;<asp:Button CssClass="button1" ID="btnCancel" runat="server" CausesValidation="False" 
                        Text="Cancel" onlick ="BtnCancel"/>
                </td>
        </tr>

    &nbsp;<asp:Button CssClass="button1" ID="btnDelete" runat="server" Text="Delete" Onclick ="btnDelete_Click" />

    &nbsp;<asp:Button CssClass="button1" ID="btnReset" runat="server" Text="Reset Password" OnClick ="BtnReset" />

    </form>

</body>
</html>
