<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="Contact" Codebehind="Contact.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="_lib2/css/screen.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<div class="contentWrap clear">
			<h1>Office</h1>
			
			<div class="content clear">
			    <asp:Image ID="img" runat="server" />
			    <%=Text.Replace("\n","<br/>") %>
			</div>
		</div>
</asp:Content>

