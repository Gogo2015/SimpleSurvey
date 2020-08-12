<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListQuestions.aspx.cs" Inherits="SimpleSurvey.ListQuestions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
</head>
<body>
    <div id="page-wrap">
    <form id="form1" runat="server">
        <asp:Button CssClass="buttonredright" ID="Button1" runat="server" Font-Bold="True" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
        <asp:GridView ID="UserView" runat="server" CellPadding="3" CellSpacing="2" Width="1000px" AutoGenerateColumns="False">
            <FooterStyle BackColor="#F7DFB5" ForeColor="Black" />
            <HeaderStyle BackColor="#1b365d" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Center" />
             <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="ID" HeaderText="Edit Question" DataNavigateUrlFormatString="EditQuestions.aspx?ID={0}" DataTextField="ID" />
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
            <RowStyle BackColor="#FFF7E7" ForeColor="Black" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>

        <br />
        <br />
        <asp:Button CssClass="buttonred" ID="btnAddQuestion" runat="server" Text="Add Question" OnClick ="btn_AddQuestion" />

    </form>
        </div>
</body>
</html>
