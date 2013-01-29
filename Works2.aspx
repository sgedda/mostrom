<%@ Page Language="C#" AutoEventWireup="true" Inherits="Works2" Codebehind="Works2.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>Markus Moström | Selected Works</title>

<link href="_lib2/css/screen.css" rel="stylesheet" type="text/css" media="screen" />

<!--[if IE]>
    <link href="_lib2/css/ie.css" rel="stylesheet" type="text/css" media="screen" />
<![endif]-->

<script src="_lib2/js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="_lib2/js/jquery.dimensions.js" type="text/javascript" charset="utf-8"></script>
<script src="_lib2/js/ui.mouse.js" type="text/javascript" charset="utf-8"></script>
<script src="_lib2/js/ui.slider.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    function MM_showHideLayers() { //v9.0
        var i, p, v, obj, args = MM_showHideLayers.arguments;
        for (i = 0; i < (args.length - 2); i += 3)
            with (document) if (getElementById && ((obj = getElementById(args[i])) != null)) {
            v = args[i + 2];
            if (obj.style) { obj = obj.style; v = (v == 'show') ? 'visible' : (v == 'hide') ? 'hidden' : v; }
            obj.visibility = v;
        }
    }
</script>
<asp:Literal ID="litScriptTypicalProjects" runat="server" />
<asp:Literal ID="litScriptMixedProjects" runat="server" />
</head>
<body onload="MM_showHideLayers('contentContainer','','show'); GoWithScroll();">
<form runat="server">
<div id="container">
  <div id="header">
		<div id="logo"><a href="./"><img src="_lib2/img/logo.jpg" /></a></div>
		
		<ul>
			<li id="index"><a href="Default2.aspx">Start</a></li>
			<li id="about"><a href="About.aspx">About</a></li>
			<li id="work" class="active"><a href="Works.aspx">Selected Works</a></li>
			<li id="inspiration"><a href="Inspiration.aspx">Inspiration</a></li>
			<li id="ref"><a href="References.aspx">References</a></li>
			<li id="contact"><a href="Contact.aspx">Contact</a></li>
		</ul>
	</div>
<asp:Label ID="lblLoading" style="color:White;font-size:30px;" runat="server">Loading...</asp:Label>
	<div id="contentContainer" style="visibility:hidden">
	<asp:Panel ID="pnlProjects" Visible="true" runat="server">
	<div class="contentWrap">
        <h1>Typical Projects</h1>
        <asp:Repeater ID="rptTypicalProject" OnItemDataBound="rptTypicalProject_ItemDataBound" runat="server">
            <ItemTemplate>
                <asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("Id") %>' />
                <div class="workWrap opacity" onMouseOver="this.className = 'workWrap';" onMouseOut="this.className = 'workWrap opacity';">
                    <div class="gallery" id="t<%#Eval("Id") %>">
                        <asp:Literal ID="litStartGallery" runat="server" />
                            <ul>
                                <asp:Repeater ID="rptTypicalImages" runat="server">
                                    <ItemTemplate>
                                        <li><img src='<%#Container.DataItem.ToString() %>' /></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                            
                            <asp:Literal ID="litStartSlider" runat="server"/>
                                <div class="handle"></div>
                            <asp:Literal ID="litEndSlider" runat="server" />
                        <asp:Literal ID="litEndGallery" runat="server" />
                    </div>
                    <div class="workDesc clear">
                        <div class="col-1">
                            <dl>
                            <dt><%#Eval("Name") %></dt>
                            </dl>
                        </div>
                        
                        <div class="col-2">
                            <asp:Panel ID="pnlDescriptionLeft" Visible="false" runat="server">
                                <dl>
                                    <dt>Description</dt>
                                    <dd><%#Eval("Description") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlCollaborationLeft" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="lblCollaborators" runat="server">Collaborators</asp:Label></dt>
                                    <dd><%#Eval("Collaborators") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlClientLeft" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label1" runat="server">Client</asp:Label></dt>
                                    <dd><%#Eval("Client") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlCopyLeft" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label10" runat="server">Copy</asp:Label></dt>
                                    <dd><%#Eval("Copy") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlLocationLeft" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label2" runat="server">Location</asp:Label></dt>
                                    <dd><%#Eval("Location") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlPhotographyLeft" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label3" runat="server">Photography</asp:Label></dt>
                                    <dd><%#Eval("Photography") %></dd>
                                </dl>
                            </asp:Panel>
                        </div>
                        
                        <div class="col-3">
                            <asp:Panel ID="pnlDescriptionRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label4" runat="server">Description</asp:Label></dt>
                                    <dd><%#Eval("Description") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlCollaborationRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label5" runat="server">Collaborators</asp:Label></dt>
                                    <dd><%#Eval("Collaborators") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlClientRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label6" runat="server">Client</asp:Label></dt>
                                    <dd><%#Eval("Client") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlCopyRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label9" runat="server">Copy</asp:Label></dt>
                                    <dd><%#Eval("Copy") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlLocationRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label7" runat="server">Location</asp:Label></dt>
                                    <dd><%#Eval("Location") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlPhotographyRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label8" runat="server">Photography</asp:Label></dt>
                                    <dd><%#Eval("Photography") %></dd>
                                </dl>
                            </asp:Panel>
                        </div>
                    </div>
		        </div>
                <div class="clear_line"></div>
                <div class="workBottom"></div>
                

            </ItemTemplate>
        </asp:Repeater>

    </div><!-- end of typical projects -->
    
    <div class="contentWrap">
        <h1>Mixed Zone</h1>
        
        
        <asp:Repeater ID="rptMixedZone" OnItemDataBound="rptMixedZone_ItemDataBound" runat="server">
            <ItemTemplate>
                <asp:HiddenField ID="hfId" Value='<%#Eval("Id") %>' runat="server" />
                <div class="workWrap opacity" onMouseOver="this.className = 'workWrap';" onMouseOut="this.className = 'workWrap opacity';">
                    <div class="gallery" id="m<%#Eval("Id") %>">
                        <asp:Literal ID="litStartGallery" runat="server" />
                            <ul>
                                <asp:Repeater ID="rptMixedZoneImages" runat="server">
                                    <ItemTemplate>
                                        <li><img src='<%#Container.DataItem.ToString() %>' /></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                            
                            <asp:Literal ID="litStartSlider" runat="server"/>
                                <div class="handle"></div>
                            <asp:Literal ID="litEndSlider" runat="server" />
                        <asp:Literal ID="litEndGallery" runat="server" />
                    </div>
                    
                    <div class="workDesc clear">
                        <div class="col-1">
                          <dl>
                            <dt><%#Eval("Name") %></dt>
                            <dd>&nbsp;</dd>
                          </dl>
                        </div>
                        <div class="col-2">
                            <asp:Panel ID="pnlDescriptionLeft" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="lblDescription" runat="server">Description</asp:Label></dt>
                                    <dd><%#Eval("Description") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlCollaborationLeft" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="lblCollaborators" runat="server">Collaborators</asp:Label></dt>
                                    <dd><%#Eval("Collaborators") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlClientLeft" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label1" runat="server">Client</asp:Label></dt>
                                    <dd><%#Eval("Client") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlCopyLeft" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label10" runat="server">Copy</asp:Label></dt>
                                    <dd><%#Eval("Copy") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlLocationLeft" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label2" runat="server">Location</asp:Label></dt>
                                    <dd><%#Eval("Location") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlPhotographyLeft" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label3" runat="server">Photography</asp:Label></dt>
                                    <dd><%#Eval("Photography") %></dd>
                                </dl>
                            </asp:Panel>
                        </div>
                        
                        <div class="col-3">
                            <asp:Panel ID="pnlDescriptionRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label4" runat="server">Description</asp:Label></dt>
                                    <dd><%#Eval("Description") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlCollaborationRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label5" runat="server">Collaborators</asp:Label></dt>
                                    <dd><%#Eval("Collaborators") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlClientRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label6" runat="server">Client</asp:Label></dt>
                                    <dd><%#Eval("Client") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlCopyRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label9" runat="server">Copy</asp:Label></dt>
                                    <dd><%#Eval("Copy") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlLocationRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label7" runat="server">Location</asp:Label></dt>
                                    <dd><%#Eval("Location") %></dd>
                                </dl>
                            </asp:Panel>
                            <asp:Panel ID="pnlPhotographyRight" Visible="false" runat="server">
                                <dl>
                                    <dt><asp:Label ID="Label8" runat="server">Photography</asp:Label></dt>
                                    <dd><%#Eval("Photography") %></dd>
                                </dl>
                            </asp:Panel>
                        </div>
                    </div>
                </div>
                
                <div class="clear_line"></div>
                <div class="workBottom"></div>


            </ItemTemplate>
        </asp:Repeater>
        </div>
        
        <div class="contentWrap">
        <h1>Archive</h1>
        
        <div class="workWrap opacity" onMouseOver="this.className = 'workWrap';" onMouseOut="this.className = 'workWrap opacity';">
            <div class="archive" id="w14" style="height: <%=UlHeight%>px;">
                <ul style="width:<%=UlWidthPx %>px;">
            	    <asp:Repeater ID="rptArchive" runat="server">
            	        <ItemTemplate>
                          <li>
                            <asp:Image ID="Image1" ImageUrl='<%#Eval("ImageUrl") %>' runat="server" />
                            <strong><%#Eval("Header") %></strong>
                            <span><%#Eval("Text") %></span>
                          </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <div class="slider" style="top: <%=UlHeight-15%>px;">
                    <div class="handle"></div>
                </div>
                
            </div>
		</div>       
        <div class="clear_line"></div>
        
        </div><!-- end of archive -->
        </asp:Panel>
	</div>
	
</div>

<div id="footer">
	<div id="copyright">All rights reserved &copy; 2009 Markus Moström Design</div>
</div>

<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-4997289-7");
pageTracker._trackPageview();
} catch(err) {}</script>
</form>
</body>
</html>
