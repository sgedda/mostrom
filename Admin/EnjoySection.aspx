<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" Inherits="Admin_Inspiration" Codebehind="EnjoySection.aspx.cs" %>
<%@ Register TagName="AuthControl" TagPrefix="authControl" Src="~/Admin/AuthControl.ascx" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../_lib2/css/screenAdmin.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<authControl:AuthControl ID="AuthControl1" runat="server" />
    <asp:ScriptManager ID="scriptManager" runat="server" />
    <cc1:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDate" runat="server">
    </cc1:CalendarExtender>
    <asp:DropDownList ID="drpEnjoySections" Width="350" AutoPostBack="true" OnSelectedIndexChanged="drpEnjoySections_SelectedIndexChanged" AppendDataBoundItems="true" runat="server">
        <asp:ListItem>ADD NEW</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    Header:<br /><asp:TextBox ID="txtHeader" Width="350" runat="server" /><br />
    Date:<br /><asp:TextBox ID="txtDate" Width="350" runat="server" /><br />
    Text:<br /><asp:TextBox TextMode="MultiLine" Width="800" Height="150" ID="txtText" runat="server" /><br />
    Image:<br /><asp:TextBox ID="txtImage" Width="350" runat="server" /><br />
    Video:<br /><asp:TextBox ID="txtVideo" Width="350" runat="server" /><br /><br />
    <asp:Button ID="btnSubmit" Text="Add/Update" runat="server" OnClick="btnSubmit_Click" /> 
    <asp:Button ID="btnDelete" OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure you want to delete this section?');" Text="Delete" runat="server" />
    <br /><br />
    <asp:Label ID="lblResult" runat="server" />
    <asp:FileUpload ID="fileUpload" runat="server" />
    <asp:Button style="margin-left:10px;" OnClick="btnUpload_Click" ID="btnUpload" runat="server" Text="Upload" /><br />
    <asp:Label ID="lblResult2" runat="server" />
    <br />
    <asp:Repeater ID="rptImages" OnItemDataBound="rptImages_ItemDataBound" runat="server">
        <ItemTemplate>
            <div style="float:left; height:150px; padding-right:10px; width:280px;">
                <img src='<%#"../"+Container.DataItem.ToString() %>' width="50px" /><br />
                <asp:Label ID="lblText" Text='<%#Container.DataItem.ToString() %>' runat="server" /><br />
                <asp:LinkButton ID="lnkDelete" Text="Delete" OnClientClick="return confirm('Are you sure?');" CommandArgument='<%#Container.DataItem.ToString() %>' runat="server" OnClick="lnkDelete_Click" />
            </div>
            <asp:Literal ID="litBreaker" runat="server" />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

