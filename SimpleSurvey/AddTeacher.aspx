<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="SimpleSurvey.AddTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 440px">
            <asp:Label CssClass="body" ID="UserMaintenance" runat="server" style="font-weight: 700" Text="Edit Teacher"></asp:Label>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtUserName" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label CssClass="body" ID="LPassword" runat="server" Text="Password:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" MaxLength="200" Width="200px" EnableViewState="False" TextMode="Password"></asp:TextBox>
                    <br />
        <br />
        <br />
                    <asp:Button CssClass="button1" ID="btnSubmit" class="button1" runat="server" Enabled="True" 
                        onclick="btnSubmit_Click" Text="Submit" />
                    &nbsp;<asp:Button CssClass="button1" ID="btnCancel" runat="server" CausesValidation="False" 
                        Text="Cancel" onlick ="BtnCancel"/>
                

        

    </form>

</body>
</html>
