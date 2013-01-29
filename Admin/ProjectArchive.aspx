<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" Inherits="Admin_ProjectArchive" Codebehind="ProjectArchive.aspx.cs" %>
<%@ Register TagName="AuthControl" TagPrefix="authControl" Src="~/Admin/AuthControl.ascx" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../_lib2/css/screenAdmin.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<authControl:AuthControl ID="AuthControl1" runat="server" />
    <asp:ScriptManager ID="scriptManager" runat="server" />
    <asp:DropDownList ID="drpArchive" Width="300" OnSelectedIndexChanged="drpArchive_SelecetedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true" runat="server">
        <asp:ListItem>ADD NEW</asp:ListItem>
    </asp:DropDownList>
    <br />
    Header<br />
    <asp:TextBox Width="300" ID="txtHeader" runat="server" /><br />
    Image url<br />
    <asp:TextBox Width="300" ID="txtImageUrl" runat="server" /><br />
    Text<br />
    <asp:TextBox ID="txtText" Width="800" Height="200" TextMode="MultiLine" runat="server" /><br />
    Order Nr<br />
    <asp:TextBox ID="txtOrderNr" Width="30" runat="server" />
    <cc1:NumericUpDownExtender Minimum="1" Maximum="100" TargetControlID="txtOrderNr" Width="60" ID="NumericUpDownExtender1" runat="server">
    </cc1:NumericUpDownExtender><br /><br />
    <asp:Button ID="btnUpdate" Text="Add/Update" OnClick="btnUpdate_Click" runat="server" />
    <asp:Button ID="btnDelete" Text="Delete" OnClick="btnDelete_Click" runat="server" /><br /><br /><br />
    Ul Height:<br />
    <asp:TextBox ID="txtUlHeight" Width="30" runat="server" /> <asp:Button ID="btnUpdateUl" Text="Update" OnClick="btnUpdateUl_Click" runat="server" />
    <br />
    <asp:Label ID="lblResult" runat="server" />
    <br /><br />
    <asp:FileUpload ID="fileUpload" runat="server" /> <asp:Button ID="btnUpload" Text="Upload" OnClick="btnUpload_Click" runat="server" /><br />
    <asp:Label ID="lblResult2" runat="server" />
    <br />
    <asp:Repeater ID="rptImages" OnItemDataBound="rptImages_ItemDataBound" runat="server">
        <ItemTemplate>
            <div style="float:left; height:150px; padding-right:10px; width:280px;">
                <img src='<%#"../"+Container.DataItem.ToString() %>' width="50px" /><br />
                <%#Container.DataItem.ToString() %><br />
                <asp:LinkButton ID="lnkDelete" Text="Delete" OnClientClick="return confirm('Are you sure?');" CommandArgument='<%#Container.DataItem.ToString() %>' runat="server" OnClick="lnkDelete_Click" />
            </div>
            <asp:Literal ID="litBreaker" runat="server" />
        </ItemTemplate>
    </asp:Repeater>
    <br clear="both" />
</asp:Content>

