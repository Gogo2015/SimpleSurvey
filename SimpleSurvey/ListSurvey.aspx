<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListSurvey.aspx.cs" Inherits="SimpleSurvey.ListSurvey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="float: right;">
            <asp:Button ID="Button1" CssClass="buttonredright" runat="server" Font-Bold="True" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
        </div>
        <asp:GridView ID="UserView" runat="server" CellPadding="3" CellSpacing="2" Width="1000px" AutoGenerateColumns="False">
            <FooterStyle BackColor="#F7DFB5" ForeColor="Black" />
            <HeaderStyle BackColor="#1b365d" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Center" />
             <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="ID,teacherid,classid" HeaderText="Edit Survey" DataNavigateUrlFormatString="EditSurvey.aspx?ID={0}&teacherid={1}&classid={2}" DataTextField="ID" />
            </Columns>
             <Columns>
                <asp:BoundField HeaderText="Title" DataField="Title" />
            </Columns>
             <Columns>
                <asp:BoundField HeaderText="Description" DataField="Description" />
            </Columns>
            <Columns>
                <asp:BoundField HeaderText="Created On" DataField="Created On" />
            </Columns>
            <Columns>
                <asp:BoundField HeaderText="Expires On" DataField="Expires On" />
            </Columns>
            <Columns>
                <asp:BoundField HeaderText="Class" DataField="Class" />
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
        <asp:Button ID="btnAddSurvey" CssClass="buttonred" runat="server" Text="Add Survey" OnClick ="btn_AddSurvey" />

    </form>
</body>
</html>
