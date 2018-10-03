<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SCCM.aspx.cs" Inherits="AutomationKit.SCCM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br />
    <br />
    <br />
    <br />

    <br />
    <br />
    <br />
    Server Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CollectionName" DataValueField="CollectionName">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Orchestrator_NSCustomConnectionString %>" SelectCommand="SELECT [CollectionName] FROM [tblSCCMCols] ORDER BY [CollectionName]"></asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" />
</asp:Content>
