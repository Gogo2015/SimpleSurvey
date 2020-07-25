﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSurveyResponse.aspx.cs" Inherits="SimpleSurvey.ViewSurveyResponse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Width="200px"></asp:Label>
        <br />
        <asp:GridView ID="SurveyResponseView" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="200px" CellPadding="3" CellSpacing="2" Width="300px" AutoGenerateColumns="False">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
             <Columns>
                <asp:BoundField HeaderText="Question" DataField="Question" />
            </Columns>
             <Columns>
                <asp:BoundField HeaderText="Response" DataField="Response" />
            </Columns>
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </form>
</body>
</html>
