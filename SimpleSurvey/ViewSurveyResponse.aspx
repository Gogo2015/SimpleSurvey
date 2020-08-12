<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSurveyResponse.aspx.cs" Inherits="SimpleSurvey.ViewSurveyResponse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" media="screen" runat="server" />
    <title></title>
    <style type="text/css">



.buttonredright {
    background-color: #dd2b00;
    color: white;
    border-color: #dd2b00;
    padding: 5px 20px 5px 20px;
    transition: all 0.2s;
    outline: none;
    font-family: Georgia, sans-serif;
    float: right;
}

    .buttonredright {
    background-color: #dd2b00;
    color: white;
    border-color: #dd2b00;
    padding: 5px 20px 5px 20px;
    transition: all 0.2s;
    outline: none;
    font-family: Georgia, sans-serif;
    float: right;
}

        .auto-style2 {
            margin-left: 440px;
        }

    </style>
</head>
<body>
    <div id="page-wrap">
    <form id="form1" runat="server">
        <div class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Width="200px" Font-Bold="True"></asp:Label>
        </div>
        
        <asp:Button CssClass="buttonredright" ID="Button1" runat="server" Font-Bold="True" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
        <br />
        <asp:GridView ID="SurveyResponseView" runat="server" CellPadding="3" CellSpacing="2" Width="632px" AutoGenerateColumns="False" HorizontalAlign="Center">
            <FooterStyle BackColor="#F7DFB5" ForeColor="Black" />
            <HeaderStyle BackColor="#1b365d" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Center" />
             <Columns>
                <asp:BoundField HeaderText="Question" DataField="Question" />
            </Columns>
             <Columns>
                <asp:BoundField HeaderText="Response" DataField="Response" />
            </Columns>
            <RowStyle BackColor="#FFF7E7" ForeColor="Black" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </form>
        </div>
</body>
</html>
