<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="SimpleSurvey.ManageUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 440px">
            <asp:Label ID="UserMaintenance" runat="server" style="font-weight: 700" Text="Add User"></asp:Label>
        </div>
            <asp:Button CssClass="buttonblueright" ID="Button1" runat="server" Font-Bold="True" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
        <br />
        <asp:Label CssClass="body" ID="LFirstName" runat="server" Text="First Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFirstName" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label CssClass="body" ID="LLastName" runat="server" Text="Last Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLastName" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label CssClass="body" ID="LUserName" runat="server" Text="User ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUserName" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="txtErrorUser" runat="server" Font-Size="Small" ForeColor="#993333" Width="200px"></asp:Label>
        <br />
        <asp:Label CssClass="body" ID="LPassword" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" MaxLength="200" Width="200px" EnableViewState="False" TextMode="Password"></asp:TextBox>
        <tr>
                <td style="width: 25%; text-align: left;">
                    &nbsp;</td>
                <td>
                    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="txtErrorPass" runat="server" Font-Size="Small" ForeColor="#993333" Width="200px"></asp:Label>
        <br />
        <asp:Label CssClass="body" ID="LClass" runat="server" Text="Classes:"></asp:Label>
        <div style ="margin-left: 120px">
        &nbsp;&nbsp;&nbsp;
        <asp:CheckBoxList ID="ListClasses" runat="server">
        </asp:CheckBoxList>
                        </div>
        <p style="margin-left: 40px">
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button CssClass="button1" ID="btnSubmit" runat="server" Enabled="True" 
                        onclick="btnSubmit_Click" Text="Submit" />
                    &nbsp;<asp:Button CssClass="button1" ID="btnCancel" runat="server" CausesValidation="False" 
                        Text="Cancel" onlick ="BtnCancel"/>
            </p>
                </td>
            </tr>

        

    </form>

</body>
</html>
