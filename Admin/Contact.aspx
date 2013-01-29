<%@ Page Title="" Language="C#" ValidateRequest="false" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" Inherits="Admin_Contact" Codebehind="Contact.aspx.cs" %>
<%@ Register TagName="AuthControl" TagPrefix="authControl" Src="~/Admin/AuthControl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../_lib2/css/screenAdmin.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<authControl:AuthControl ID="AuthControl1" runat="server" />
<asp:TextBox ID="txtText" TextMode="MultiLine" Height="200" Width="800" runat="server" /><br /><br />
Image url<br /><asp:TextBox ID="txtImageUrl" Width="200" runat="server" /><br /><br />
<asp:Button ID="btnUpdate" OnClick="btnUpdate_Click" runat="server" Text="Update" /><br /><br /><br />
<asp:FileUpload ID="fileUpload" runat="server" /> <asp:Button ID="btnUpload" OnClick="btnUpload_Click" Text="Upload" runat="server" /><br />
<asp:Label ID="lblResult" runat="server" /><br />
<asp:Repeater ID="rptImages" OnItemDataBound="rptImages_ItemDataBound" runat="server">
    <ItemTemplate>
        <div style="float:left; height:150px; padding-right:10px; width:170px;">
            <img src='<%#"../"+Container.DataItem.ToString() %>' width="50px" /><br />
            <%#Container.DataItem.ToString() %><br />
            <asp:LinkButton ID="lnkDelete" Text="Delete" OnClientClick="return confirm('Are you sure?');" CommandArgument='<%#Container.DataItem.ToString() %>' runat="server" OnClick="lnkDelete_Click" />
        </div>
        <asp:Literal ID="litBreaker" runat="server" />
    </ItemTemplate>
</asp:Repeater><br clear="both" />
</asp:Content>

