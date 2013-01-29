<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="Login" Codebehind="Login.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="_lib2/css/screen.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Log in</h2><br />
Username:<br />
    <asp:TextBox ID="txtUsername" runat="server" /><br /><br />
Password:<br />
    <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" /><br /><br />
<asp:Button ID="btnSubmit" Text="Login" OnClick="btnSubmit_Click" runat="server" /><br />
<asp:Label ID="lblLogin" runat="server" />
</asp:Content>

