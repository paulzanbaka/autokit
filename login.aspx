<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AutomationKit.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
  
    <br /><br />


    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <br />
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="LogOut" OnClick="Button2_Click"/>
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <asp:Label ID="Label3" runat="server"></asp:Label>
</asp:Content>
