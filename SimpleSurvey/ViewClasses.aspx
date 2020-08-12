<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewClasses.aspx.cs" Inherits="SimpleSurvey.ViewClasses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <div id="page-wrap">
        <form id="form1" runat="server">
            <asp:Button ID="Button1" runat="server" CssClass="buttonredright" Font-Bold="True" onclick="btnReturn_Menu" Text="Return To Menu" Width="169px" />
            <br />
            <asp:GridView ID="classView" runat="server" CellPadding="3" CellSpacing="2" Width="666px" AutoGenerateColumns="False">
                <FooterStyle BackColor="#F7DFB5" ForeColor="Black" />
                <HeaderStyle BackColor="#1b365d" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Center" />
                 <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="ID" HeaderText="Edit Class" DataNavigateUrlFormatString="EditClass.aspx?ID={0}" DataTextField="ID" />
                </Columns>
                 <Columns>
                    <asp:BoundField HeaderText="Class Name" DataField="Class Name" />
                </Columns>
                 <Columns>
                    <asp:BoundField HeaderText="Registration Code" DataField="Registration Code" />
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
            <asp:Button CssClass="buttonred" ID="btn_AddClass" runat="server" Text="Add Class" OnClick ="btn_AddClass_Click" />
        </form>
    </div>
</body>
</html>
