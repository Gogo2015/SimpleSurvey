<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurveyResponses.aspx.cs" Inherits="SimpleSurvey.SurveyResponses" %>

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

    </style>
</head>
<body>
    <div id="page-wrap">
    <form id="form1" runat="server">
        
        <asp:Button CssClass="buttonredright" ID="Button1" runat="server" Font-Bold="True" Text="Return To Menu" Width="169px" onclick="btnReturn_Menu" />
        <br />
        
        &nbsp;&nbsp;&nbsp;
        <asp:GridView ID="SurveyResponseView" runat="server"  CellPadding="3" CellSpacing="2" Width="700px" AutoGenerateColumns="False" HorizontalAlign="Center">
            <FooterStyle BackColor="#F7DFB5" ForeColor="Black" />
            <HeaderStyle BackColor="#1b365d" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Center" />
             <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="SurveyID, FilledBy, teacherid" HeaderText="View Response" DataNavigateUrlFormatString="ViewSurveyResponse.aspx?surveyID={0}&filledBy={1}&id={2}" DataTextField="ID" />
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
            <Columns>
                <asp:BoundField HeaderText ="Completion Status" DataField="FilledSurvey" />
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
