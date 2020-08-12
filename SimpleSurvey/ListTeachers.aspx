<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListTeachers.aspx.cs" Inherits="SimpleSurvey.ListTeachers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <div id="page-wrap">
        <form id="form1" runat="server">
            <asp:Button CssClass="buttonredright" ID="btnMenu" runat="server" Font-Bold="True" Text="Logout" Width="169px" onclick="btn_Logout_Click" />

            <asp:GridView ID="TeacherView" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="200px" CellPadding="3" CellSpacing="2" Width="567px" AutoGenerateColumns="False">
                <FooterStyle BackColor="#F7DFB5" ForeColor="Black" />
                <HeaderStyle BackColor="#1b365d" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Center" />
                 <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="ID" HeaderText="Edit Teacher" DataNavigateUrlFormatString="EditTeacher.aspx?ID={0}" DataTextField="ID" />
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
                <RowStyle BackColor="#FFF7E7" ForeColor="Black" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>

            <br />
            <br />
            <asp:Button CssClass="buttonred" ID="btnAddTeacher" runat="server" Text="Add Teacher" OnClick ="btn_AddTeacher" Height="29px" />
        </form>
    </div>
</body>
</html>
