<%@ Page Title="" Language="C#" ValidateRequest="false" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" Inherits="Admin_References" Codebehind="References.aspx.cs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagName="AuthControl" TagPrefix="authControl" Src="~/Admin/AuthControl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../_lib2/css/screenAdmin.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager runat="server" />
<authControl:AuthControl ID="AuthControl1" runat="server" />
<asp:DropDownList ID="drpReferenceTypes" AutoPostBack="true" Width="200" runat="server" onselectedindexchanged="drpReferenceTypes_SelectedIndexChanged" />
<br /><br />ImageUrl:<br />
<asp:TextBox ID="txtImageUrl" Width="250" runat="server" /><br /><br />
<asp:TextBox ID="txtText" Width="800" Height="200px" TextMode="MultiLine" runat="server" /><br /><br />
<asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
<br /><br />
<asp:Panel ID="pnlAddToList" runat="server">
<h2>Item list</h2>
<asp:GridView ID="grdReferenceList" AutoGenerateColumns="false" Width="800" OnRowDataBound="grdReferenceList_RowDataBound" OnRowUpdating="grdReferenceList_RowUpdating" OnRowDeleting="grdReferenceList_RowDeleting" OnRowEditing="grdReferenceList_RowEditing" OnRowCancelingEdit="grdReferenceList_RowCancelingEdit" runat="server">
    <Columns>
        <asp:CommandField ShowEditButton="true" EditText="Edit" ItemStyle-Width="40" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="lblOrderNr" runat="server" Text='<%#Eval("OrderNr") %>' />
                <asp:Label Text='<%#Eval("Text") %>' Width="500" ID="lblText" runat="server" />
            </ItemTemplate>
            <EditItemTemplate>
                <cc1:NumericUpDownExtender ID="NumericUpDownExtender2" Width="50" TargetControlID="txtOrderNr" Minimum="1" Maximum="100" runat="server">
                </cc1:NumericUpDownExtender>
                Order Nr:<br /><asp:TextBox Text='<%#Bind("OrderNr") %>' Width="40" ID="txtOrderNr" runat="server" /><br />
                Text: <br /><asp:TextBox TextMode="MultiLine" Width="600" Height="150" ID="txtText" runat="server" Text='<%#Bind("Text") %>' />
                <br /><br />   
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HiddenField ID="HiddenField1" Value='<%#Eval("Id") %>' runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HiddenField ID="HiddenField2" Value='<%#Eval("Type") %>' runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowDeleteButton="true" DeleteText="Delete" ItemStyle-Width="40" />
    </Columns>
</asp:GridView><br />
<h2>Add new</h2><br />
    <cc1:NumericUpDownExtender ID="NumericUpDownExtender1" Width="50" Minimum="1" Maximum="100" TargetControlID="txtOrderNr" runat="server">
    </cc1:NumericUpDownExtender>
    Order nr:<br /><asp:TextBox ID="txtOrderNr" runat="server" /><br />
    Text:<br /><asp:TextBox TextMode="MultiLine" Width="800" Height="200" ID="txtListText" runat="server" /><br /><br />
    <asp:Button ID="btnAddToList" runat="server" Text="Add" OnClick="btnAddToList_Click" /><br />
</asp:Panel>
<br />
<asp:FileUpload ID="fileUpload" runat="server" />
<asp:Button style="margin-left:10px;" OnClick="btnUpload_Click" ID="btnUpload" runat="server" Text="Upload" /><br />
<asp:Label ID="lblResult2" runat="server" />
<div style="margin-top:30px;">
<asp:Repeater ID="rptImages" OnItemDataBound="rptImages_ItemDataBound" runat="server">
    <ItemTemplate>
        <div style="float:left; height:120px; width:220px;">
        <img src='<%#"../"+Container.DataItem.ToString() %>' width="50px" /><br />
        <%#Container.DataItem.ToString() %><br />
        <asp:LinkButton ID="lnkDelete" Text="Delete" OnClientClick="return confirm('Are you sure?');" CommandArgument='<%#Container.DataItem.ToString() %>' runat="server" OnClick="lnkDelete_Click" />
        </div>
        <asp:Literal ID="litLineBreak" runat="server" />
    </ItemTemplate>
</asp:Repeater>
</div>
</asp:Content>

