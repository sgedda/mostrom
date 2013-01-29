<%@ Page Title="" ValidateRequest="false" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" Inherits="Admin_About" Codebehind="About.aspx.cs" %>
<%@ Register TagName="AuthControl" TagPrefix="authControl" Src="~/Admin/AuthControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../_lib2/css/screenAdmin.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<authControl:AuthControl runat="server" />
    <asp:DropDownList ID="drp" OnSelectedIndexChanged="drp_SelectedIndexChanged" AutoPostBack="true" runat="server" /><br />
    Image url:<br />
    <asp:TextBox ID="txtImageUrl" Width="250" runat="server" /><br />
    Html:<br />
    <asp:TextBox ID="txtText" TextMode="MultiLine" Height="250" Width="800" runat="server" /><br /><br />
    <asp:Label ID="lblResult" runat="server" /><br />
    <asp:Button ID="btnUpdate" runat="server" Text="Update" onclick="btnUpdate_Click" /><br /><br />
    <asp:FileUpload ID="fileUpload" runat="server" />
    <asp:Button style="margin-left:10px;" OnClick="btnUpload_Click" ID="btnUpload" runat="server" Text="Upload" /><br />
    <asp:Label ID="lblResult2" runat="server" />
    <br />
    <asp:Repeater ID="rptImages" OnItemDataBound="rptImages_ItemDataBound" runat="server">
        <ItemTemplate>
            <div style="float:left;width:220px; height:130px;">
                <img src='<%#"../"+Container.DataItem.ToString() %>' width="50px" /><br />
                <%#Container.DataItem.ToString() %><br />
                <asp:LinkButton ID="lnkDelete" Text="Delete" OnClientClick="return confirm('Are you sure?');" CommandArgument='<%#Container.DataItem.ToString() %>' runat="server" OnClick="lnkDelete_Click" />
            </div>
                <asp:Literal ID="litBreaker" runat="server" />            
        </ItemTemplate>
    </asp:Repeater>
    <br clear="all" />
</asp:Content>

