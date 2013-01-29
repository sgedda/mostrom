<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="References" Codebehind="References.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="_lib2/css/screen.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Repeater ID="rptReferences" OnItemDataBound="rptReferences_ItemDatabound" runat="server">
    <ItemTemplate>
    <asp:HiddenField ID="hfId" Value='<%#Eval("Id") %>' runat="server" />
    	<div id="contentContainer">
		    <div class="contentWrap clear">
			    <h1><asp:Label ID="lblHeader" runat="server" /></h1>
			    <div class="content clear">
		            <asp:Image ID="imgReference" runat="server" />
			        <asp:Label ID="lblText" Text='<%#Eval("Text") %>' runat="server" />
			        <ul>
			            <asp:Repeater ID="rptReferenceList" OnItemDataBound="rptReferenceList_ItemDataBound" runat="server">
			                <ItemTemplate>
			                    <li>
			                        <asp:Label ID="lblStart" runat="server" />
			                            <asp:Label ID="lblText" Text='<%#Eval("Text") %>' runat="server" />
			                        <asp:Label ID="lblEnd" runat="server" />
			                        <asp:HiddenField ID="hfReferenceId" Value='<%#Eval("Type") %>' runat="server" />
			                    </li>
			                </ItemTemplate>
			            </asp:Repeater>
			        </ul>
			    </div>
		    </div>
		</div>
    </ItemTemplate>
</asp:Repeater>
</asp:Content>

