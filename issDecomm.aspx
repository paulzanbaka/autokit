<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="issDecomm.aspx.cs" Inherits="AutomationKit.issDecomm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <br />

    <br />

    <br />
    <br />
    <br />
    Server Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hpSmExtendConnectionString %>" SelectCommand="SELECT
  Common.vwRequest_No_LineItems.[Request ID]
  ,Common.vwRequest_No_LineItems.[Opened Time]
  ,Common.vwRequest_No_LineItems.[Closed Time]
  ,Common.vwRequest_No_LineItems.[Current Phase]
  ,Common.vwRequest_No_LineItems.[Computer Name]
FROM
  Common.vwRequest_No_LineItems
WHERE
Common.vwRequest_No_LineItems.[Service Item] like '%EWS Decommission%'
And
Common.vwRequest_No_LineItems.[Computer Name] IS NOT NULL
And
Common.vwRequest_No_LineItems.[Computer Name] = @ComputerName
GROUP BY
  Common.vwRequest_No_LineItems.[Request ID]
  ,Common.vwRequest_No_LineItems.[Opened Time]
  ,Common.vwRequest_No_LineItems.[Current Phase]
  ,Common.vwRequest_No_LineItems.[Computer Name]
  ,Common.vwRequest_No_LineItems.[Closed Time]
ORDER BY
  Common.vwRequest_No_LineItems.[Opened Time] DESC	">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="ComputerName" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="816px">
        <Columns>
            <asp:BoundField DataField="Request ID" HeaderText="Request ID" SortExpression="Request ID" />
            <asp:BoundField DataField="Opened Time" HeaderText="Opened Time" SortExpression="Opened Time" />
            <asp:BoundField DataField="Closed Time" HeaderText="Closed Time" SortExpression="Closed Time" />
            <asp:BoundField DataField="Current Phase" HeaderText="Current Phase" SortExpression="Current Phase" />
            <asp:BoundField DataField="Computer Name" HeaderText="Computer Name" SortExpression="Computer Name" />
        </Columns>
       
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
         <asp:Label ID="Label1" runat="server" BackColor="Red" ForeColor="White"></asp:Label>
<br />
<br />
<br />
    <asp:Button ID="Button1" runat="server" Text="Search Decomm List" OnClick="Button1_Click" BackColor="#337AB7" ForeColor="White" />
 

    <br />
    <br />

    <br />
</asp:Content>
