<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" Inherits="Admin_Works" CodeBehind="Works.aspx.cs" %>
<%@ Import Namespace="System.IO" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register TagName="AuthControl" TagPrefix="authControl" Src="~/Admin/AuthControl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../_lib2/css/screenAdmin.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <authControl:AuthControl ID="AuthControl1" runat="server" />
    <asp:DropDownList ID="drpFilterSections" OnSelectedIndexChanged="drpFilterSections_SelectedIndexChanged" AutoPostBack="true" Width="300" AppendDataBoundItems="true" runat="server">
        <asp:ListItem Text="Filter Section" Value="0" />
        <asp:ListItem Text="Mixed zone" Value="Mixed zone"></asp:ListItem>
        <asp:ListItem Text="Typical projects" Value="Typical projects"></asp:ListItem>
    </asp:DropDownList><br />
    <br />
    <asp:DropDownList ID="drpWorks" OnSelectedIndexChanged="drpWorks_SelectedIndexChanged" AutoPostBack="true" Width="300" AppendDataBoundItems="true" runat="server">
        <asp:ListItem Text="ADD NEW" />
    </asp:DropDownList><br />
    <br />
    Section:<br />
    <asp:DropDownList ID="drpSections" Width="300" runat="server">
        <asp:ListItem Text="Mixed zone" Value="Mixed zone"></asp:ListItem>
        <asp:ListItem Text="Typical projects" Value="Typical projects"></asp:ListItem>
    </asp:DropDownList><br />
    Name:<br />
    <asp:TextBox ID="txtName" Width="300" runat="server" /><br />
    Description:<br />
    <asp:TextBox ID="txtDescription" Width="400" Height="100" TextMode="MultiLine" runat="server" />
    <asp:DropDownList ID="drpDescription" runat="server">
        <asp:ListItem>Left</asp:ListItem>
        <asp:ListItem>Right</asp:ListItem>
    </asp:DropDownList>
    <br />
    Collaborators:<br />
    <asp:TextBox ID="txtCollaborators" Width="400" Height="80" TextMode="MultiLine" runat="server" />
    <asp:DropDownList ID="drpCollaborators" runat="server">
        <asp:ListItem>Left</asp:ListItem>
        <asp:ListItem>Right</asp:ListItem>
    </asp:DropDownList>
    <br />
    Clients:<br />
    <asp:TextBox ID="txtClient" Width="400" Height="80" TextMode="MultiLine" runat="server" />
    <asp:DropDownList ID="drpClients" runat="server">
        <asp:ListItem>Left</asp:ListItem>
        <asp:ListItem>Right</asp:ListItem>
    </asp:DropDownList>
    <br />
    Photography:<br />
    <asp:TextBox ID="txtPhotography" Width="400" Height="80" TextMode="MultiLine" runat="server" />
    <asp:DropDownList ID="drpPhotography" runat="server">
        <asp:ListItem>Left</asp:ListItem>
        <asp:ListItem>Right</asp:ListItem>
    </asp:DropDownList>
    <br />
    Location:<br />
    <asp:TextBox ID="txtLocation" Width="400" Height="40" TextMode="MultiLine" runat="server" />
    <asp:DropDownList ID="drpLocation" runat="server">
        <asp:ListItem>Left</asp:ListItem>
        <asp:ListItem>Right</asp:ListItem>
    </asp:DropDownList>
    <br />
    Copy:<br />
    <asp:TextBox ID="txtCopy" Width="400" Height="40" TextMode="MultiLine" runat="server" />
    <asp:DropDownList ID="drpCopy" runat="server">
        <asp:ListItem>Left</asp:ListItem>
        <asp:ListItem>Right</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="btnUpdate" runat="server" Text="Add/Update" OnClick="btnUpdate_Click" />
    <asp:Button ID="btnDelete" Text="Delete" OnClientClick="return confirm('This will delete this project and its images, continue?');" OnClick="btnDelete_Click" runat="server" />
    <br />
    <br />
    <asp:NumericUpDownExtender ID="numOrderNr" Minimum="0" Width="50" Maximum="100" TargetControlID="txtUpAndDown" runat="server">
    </asp:NumericUpDownExtender>
    <asp:TextBox Width="50" ID="txtUpAndDown" runat="server" />
    <asp:Label ID="lblResult" runat="server" /><br />
    <br />
    Add image:<br />
    <asp:FileUpload ID="fileUpload" runat="server" />
    <asp:Button ID="btnAddImage" runat="server" Text="Add" OnClick="btnAddImage_Click" />
    <br />
    <asp:Label ID="lblFileUploadResult" runat="server" /><br />
    <asp:Repeater ID="rptImages" runat="server">
        <ItemTemplate>
            <div style="float: left; width: 100px;height:120px;">
                <img src='<%#"../"+Container.DataItem.ToString() %>' height="50px" width="50px" /><br /><br/>
                <asp:TextBox ID="txtFileName" Width="60" runat="server" Text='<%#Path.GetFileNameWithoutExtension(Container.DataItem.ToString()) %>'></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFileName" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br/>
                <br/>
                <asp:HiddenField runat="server" ID="hfFilePath" Value='<%#Container.DataItem %>'/>
                <asp:LinkButton ID="lnkUpdate" Text="Update" CommandArgument='<%#Container.ItemIndex %>' runat="server" OnClick="lnkUpdate_Click" />
                <asp:LinkButton ID="lnkDelete" Text="Delete" OnClientClick="return confirm('Are you sure?');" CommandArgument='<%#Container.DataItem.ToString() %>' runat="server" OnClick="lnkDelete_Click" />
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <br clear="all"/>
    <br clear="all"/>
    <asp:Label id="lblFileHandlingResult" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

