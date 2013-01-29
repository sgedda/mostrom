<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="Inspiration" Codebehind="Inspiration.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="_lib2/css/screen.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="inspirationWrap" class="clear">
	    <div id="col-left">
			<h1>We Enjoy</h1>
			    <asp:Repeater ID="rptEnjoySection" OnItemDataBound="rptEnjoySection_ItemDataBound" runat="server">
			        <ItemTemplate>
			            <div>
		                    <asp:Image ID="imgEnjoy" ImageUrl='<%#Eval("Image") %>' runat="server" />
		                    <asp:Literal ID="litVideo" Text='<%#Eval("Video") %>' runat="server" />
		                    <p class="topic"><%#Eval("Header") %></p>
                            <p><asp:Label ID="lblText" Text='<%#Eval("Text") %>' runat="server" /></p>
		                    <p class="date">Posted  <%#Eval("Date","{0:MMMM dd, yyy}") %></p>
			            </div>
			        </ItemTemplate>
			    </asp:Repeater>
	    </div>
	    <div id="col-right"> 
			<h1>Thoughts on Design</h1>
			    <asp:Repeater ID="rptDesignSection" OnItemDataBound="rptDesignSection_ItemDataBound" runat="server">
			        <ItemTemplate>
			            <div>
					        <p class="topic"><%#Eval("Header") %></p>
					        <p><asp:Label ID="lblText" Text='<%#Eval("Text") %>' runat="server" /></p>
					        <p class="date">Posted  <%#Eval("Date", "{0:MMMM dd, yyy}")%></p>								    
			            </div>
			        </ItemTemplate>
			    </asp:Repeater>
	    </div>
	</div>
</asp:Content>

