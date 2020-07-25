<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurveyResponses.aspx.cs" Inherits="SimpleSurvey.SurveyResponses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:GridView ID="SurveyResponseView" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="200px" CellPadding="3" CellSpacing="2" Width="300px" AutoGenerateColumns="False">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
             <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="SurveyID, FilledBy" HeaderText="ID" DataNavigateUrlFormatString="ViewSurveyResponse.aspx?surveyID={0}&filledBy={1}" DataTextField="ID" />
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
                <asp:BoundField HeaderText ="Class" DataField="Class" />
            </Columns>
            <Columns>
                <asp:BoundField HeaderText ="Completion Status" DataField="FilledSurvey" />
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
