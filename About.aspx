<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="Moström.About" Codebehind="About.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="_lib2/css/screen.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<div class="contentWrap clear">
			<h1>Profile</h1>
			
			<div class="content clear">
				<span class="col-1_3 left"><asp:Image runat="server" id="imgProfile" /></span>
				
				<span class="col-2_3 right"><%=ProfileObject.Text.Replace("\n","<br/>") %></span>
			</div>
		</div>
		
		<div class="contentWrap clear">
			<h1>Services</h1>
			
			<div class="content clear">
				<span class="col-1_3 left"><asp:Image ID="imgServices" runat="server" /></span>
				
				<span class="col-2_3 right">
				<%=Services.Text.Replace("\n","<br/>") %>
				</span>
			</div>
		</div>
		
		<div class="contentWrap clear">
			<h1>Design Process</h1>
			
			<div class="content clear">
				<span class="col-1_3 left"><asp:Image ID="imgDesignProcess" runat="server" /></span>
				
				<span class="col-2_3 right">
				    <%=DesignProcess.Text.Replace("\n","<br/>") %>
				</span>

			</div>
		</div>
		
		<div class="contentWrap clear">
			<h1>Network</h1>
			
			<div class="content clear">
				<span class="col-1_3 left"><asp:Image ID="imgNetwork" runat="server" /></span>
				
				<span class="col-2_3 right">
				    <%=Network.Text %>
                </span>

				
			</div>
		</div>
		
		<div class="contentWrap clear">
			<h1>Founder</h1>
			
			<div class="content clear">
				<span class="col-1_3 left"><asp:Image ID="imgFounder" runat="server" /></span>
				
				<span class="col-2_3 right"><%=Founder.Text.Replace("\n","<br/>") %></span>

		  </div>
		</div>
		
		<div class="contentWrap clear">
			<h1>Co-Workers since 1999</h1>
			
			<div class="content clear">
				<span class="col-1_3 left"><asp:Image ID="imgCoWorker" runat="server" /></span>
				
				<span class="col-2_3 right">
				    <%=CoWorkers.Text.Replace("\n","<br/>") %>
                </span>
				
			</div>
		</div>

		<div class="contentWrap clear">
			<h1>Credits</h1>
			
			<div class="content clear">
				<span class="col-1_3 left"><asp:Image ID="imgCredits" runat="server" /></span>
				
				<span class="col-2_3 right">
				    <%=Credits.Text.Replace("\n","<br/>") %>
				</span>
			</div>
		</div>
</asp:Content>

