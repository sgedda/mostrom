<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="Works" Codebehind="Works.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="_lib2/js/jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="_lib2/js/jquery.dimensions.js" type="text/javascript" charset="utf-8"></script>
    <link href="_lib2/css/screen.css" rel="stylesheet" type="text/css" media="screen" />
    <script src="_lib2/js/ui.mouse.js" type="text/javascript" charset="utf-8"></script>
    <script src="_lib2/js/ui.slider.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8">
    window.onload = MM_showHideLayers('contentContainer', '', 'show'); GoWithScroll();
    function MM_showHideLayers() { //v9.0
        var i, p, v, obj, args = MM_showHideLayers.arguments;
        for (i = 0; i < (args.length - 2); i += 3)
            with (document) if (getElementById && ((obj = getElementById(args[i])) != null)) {
                                v = args[i + 2];
                                if (obj.style) { obj = obj.style; v = (v == 'show') ? 'visible' : (v == 'hide') ? 'hidden' : v; }
                                obj.visibility = v;
                            }
    }

    function GoWithScroll(id) {
        var container15 = $('#'+id);
        var ul15 = $('ul', container15);

        var itemsWidth15 = ul15.innerWidth() - container15.outerWidth();

        $('.slider', container15).slider({
            minValue: 0,
            maxValue: itemsWidth15,
            handle: '.handle',
            stop: function(event, ui) {
                ul15.animate({ 'left': ui.value * -1 }, 500);
            },
            slide: function(event, ui) {
                ul15.css('left', ui.value * -1);
            }
        });

    };
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="lblLoading" style="color:White;font-size:30px;" runat="server">Loading...</asp:Label>
	<asp:Panel ID="pnlProjects" Visible="false" runat="server">
	<div class="contentWrap">
        <h1>Typical Projects AAA</h1>
        <asp:Repeater ID="rptTypicalProject" OnItemDataBound="rptTypicalProject_ItemDataBound" runat="server">
            <ItemTemplate>
                <asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("Id") %>' />
                <div class="workWrap opacity" onMouseOver="this.className = 'workWrap';" onMouseOut="this.className = 'workWrap opacity';">
                    <div class="gallery" id="w<%#Eval("Id") %>">
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
                
                <script type="text/javascript">
                    MM_showHideLayers('contentContainer', '', 'show');
                    GoWithScroll('<%#"w"+Eval("Id") %>');
                </script>
                
            </ItemTemplate>
        </asp:Repeater>
    </div><!-- end of typical projects -->
    
    <div class="contentWrap">
        <h1>Mixed Zone</h1>
        
        <asp:Repeater ID="rptMixedZone" OnItemDataBound="rptMixedZone_ItemDataBound" runat="server">
            <ItemTemplate>
                <asp:HiddenField ID="hfId" Value='<%#Eval("Id") %>' runat="server" />
                <div class="workWrap opacity" onMouseOver="this.className = 'workWrap';" onMouseOut="this.className = 'workWrap opacity';">
                    <div class="gallery" id="w<%#Eval("Id") %>">
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

                <script type="text/javascript">
                    MM_showHideLayers('contentContainer', '', 'show');
                    GoWithScroll('<%#"w"+Eval("Id") %>');
                </script>
            </ItemTemplate>
        </asp:Repeater></div>
        <div class="contentWrap">
        <h1>Archive</h1>
        
        <div class="workWrap opacity" onMouseOver="this.className = 'workWrap';" onMouseOut="this.className = 'workWrap opacity';">
            <div class="archive" id="wa14" style="height: <%=UlHeight%>px;">
                <ul style="width:<%=UlWidthPx %>px;">
            	    <asp:Repeater ID="rptArchive" runat="server">
            	        <ItemTemplate>
                          <li>
                            <asp:Image ImageUrl='<%#Eval("ImageUrl") %>' runat="server" />
                            <strong><%#Eval("Header") %></strong>
                            <span><%#Eval("Text") %></span>
                          </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <div class="slider" style="top: <%=UlHeight-5%>px;">
                    <div class="handle"></div>
                </div>
                <script type="text/javascript">
                    MM_showHideLayers('contentContainer', '', 'show');
                    GoWithScroll('wa14');
                </script>
            </div>
		</div>       
        <div class="clear_line"></div>
        
        </div><!-- end of archive -->
        </asp:Panel>
</asp:Content>

