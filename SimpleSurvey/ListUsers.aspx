<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListUsers.aspx.cs" Inherits="SimpleSurvey.ListUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style ="text-align: center">
            <asp:Label ID="lbClass" runat="server" Font-Bold="True"></asp:Label>

        </div>
        
        <div style="text-align: right;">
            
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
        </div>
        
        <asp:GridView ID="UserView" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="200px" CellPadding="3" CellSpacing="2" Width="300px" AutoGenerateColumns="False">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
             <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="ID,teacher" HeaderText="ID" DataNavigateUrlFormatString="EditUser.aspx?ID={0}&teacher={1}" DataTextField="ID" />
            </Columns>
             <Columns>
                <asp:BoundField HeaderText="First Name" DataField="First Name" />
            </Columns>
             <Columns>
                <asp:BoundField HeaderText="Last Name" DataField="Last Name" />
            </Columns>
             <Columns>
                <asp:BoundField HeaderText="User Name" DataField="User Name" />
            </Columns>
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>

        <br />
        <br />
        <asp:Button ID="btnAddUser" runat="server" Text="Add Users" OnClick ="btn_AddUser" />

    </form>
</body>
</html>
