<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountInfo.aspx.cs" Inherits="SimpleSurvey.AccountInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <div id="page-wrapaccount">
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView CssClass="Grid" ID="classView" runat="server" CellPadding="3" CellSpacing="2" Width="335px" AutoGenerateColumns="False" DataKeyNames="ClassID" OnSelectedIndexChanged="classView_SelectedIndexChanged">
            <FooterStyle BackColor="#F7DFB5" ForeColor="Black" />
            <HeaderStyle BackColor="#1b365d" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Center" />
             <Columns>
                <asp:BoundField HeaderText="Class Name" DataField="Class Name" />
            </Columns>
             <Columns>
                <asp:BoundField HeaderText="Registration Code" DataField="Registration Code" />
            </Columns>
            <Columns>
                <asp:TemplateField HeaderText ="Leave Class">
                    <ItemTemplate>
                        <asp:Button CssClass="buttonredtable" runat="server" Text="Leave Class" onclick ="Click_LeaveClass" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <RowStyle BackColor="#FFF7E7" ForeColor="Black" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button CssClass="buttonred" ID="btn_ReturnSurvey" runat="server" Text="Return To Surveys" OnClick ="Take_Survey" Width="165px" />
    &nbsp;<asp:Button CssClass="buttonred" ID="btn_logout" runat="server" Text="Logout" OnClick ="Btn_ClickLogout" Width="169px" />
    </form>
        </div>
</body>
</html>
