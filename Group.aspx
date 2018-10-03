<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Group.aspx.cs" Inherits="AutomationKit.Group" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CollectionName" DataValueField="CollectionValue" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Orchestrator_NSCustomConnectionString %>" SelectCommand="SELECT* FROM [tblSCCMCols] ORDER BY [CollectionName]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>

<asp:Label ID="Label1" runat="server"></asp:Label>

</asp:Content>

