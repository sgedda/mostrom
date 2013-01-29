<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" Inherits="_Default" Codebehind="Default.aspx.cs" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Markus Moström</title>
    <link href="_lib2/css/screen.css" rel="stylesheet" type="text/css" media="screen" />
    <script src="_lib2/js/jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="_lib2/js/jquery.dimensions.js" type="text/javascript" charset="utf-8"></script>
    <script src="_lib2/js/ui.mouse.js" type="text/javascript" charset="utf-8"></script>
    <script src="_lib2/js/ui.slider.js" type="text/javascript" charset="utf-8"></script>

    <script type="text/javascript" charset="utf-8">
        window.onload = function() {
            var container1 = $('#w1');
            var ul1 = $('ul', container1);

            var itemsWidth1 = ul1.innerWidth() - container1.outerWidth();

            $('.slider', container1).slider({
                minValue: 0,
                maxValue: itemsWidth1,
                handle: '.handle',
                stop: function(event, ui) {
                    ul1.animate({ 'left': ui.value * -1 }, 500);
                },
                slide: function(event, ui) {
                    ul1.css('left', ui.value * -1);
                }
            });
        };
    </script>
</asp:Content>
<asp:content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
	<div class="contentWrap">
		<h1>Welcome</h1>
		
		<div class="content clear">
        <img src="_lib2/img/start/<%= RandomString %>" width="703" height="404" /><br />
			<span><%=StartText %></span>

		</div>
	</div>
		
	<div class="clear_line"></div>
	
	<div class="contentWrap">
        <h1>News</h1>
        <asp:Repeater ID="rptNews2" runat="server">
            <ItemTemplate>
                <%#Eval("Text") %><br />
                <%#Eval("Date") %>
            </ItemTemplate>
        </asp:Repeater>
        
        <div class="workWrap opacity" onMouseOver="this.className = 'workWrap';" onMouseOut="this.className = 'workWrap opacity';">
            <div class="archive" id="w1" style="height:<%=UlHeight%>px;">
                <ul style="width:<%=UlWidthPx %>px;"> <!-- varje 148+10 -->
                
                    <asp:Repeater ID="rptNews" runat="server">
                        <ItemTemplate>
                            <li>
                              <img src='<%#Eval("ImageUrl") %>' />
                              <strong><%#Eval("Date", "{0:yyyy-MM-dd}")%></strong>
                              <span><%#Eval("Text") %></span>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                
                <div class="slider" style="top:<%=UlHeight-5%>px;">
                    <div class="handle"></div>
                </div>
            </div>
	    </div>
       
        <div class="clear_line"></div>
    
    </div>

<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    try {
        var pageTracker = _gat._getTracker("UA-4997289-7");
        pageTracker._trackPageview();
    } catch (err) { }</script>
    </asp:content>
