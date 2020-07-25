<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListQuestions.aspx.cs" Inherits="SimpleSurvey.ListQuestions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: right;">
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
    </div>
        <asp:GridView ID="UserView" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1000px" AutoGenerateColumns="False">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
             <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="ID" HeaderText="ID" DataNavigateUrlFormatString="EditQuestions.aspx?ID={0}" DataTextField="ID" />
            </Columns>
             <Columns>
                <asp:BoundField HeaderText="Question" DataField="Question" />
            </Columns>
             <Columns>
                <asp:BoundField HeaderText="Question Type" DataField="Question Type" />
            </Columns>
             <Columns>
                <asp:BoundField HeaderText="Answer Choices" DataField="Answer Choices" />
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
        <asp:Button ID="btnAddQuestion" runat="server" Text="Add Question" OnClick ="btn_AddQuestion" />

    </form>
</body>
</html>
