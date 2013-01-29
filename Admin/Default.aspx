<%@ Page Inherits="Moström.Admin.Admin_Default" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="True" EnableEventValidation="false" CodeBehind="~/Admin/Default.aspx.cs" %>

<%@ Register TagName="AuthControl" TagPrefix="authControl" Src="~/Admin/AuthControl.ascx" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <link href="../_lib2/css/screenAdmin.css" rel="stylesheet" type="text/css" media="screen" />

</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <authControl:AuthControl ID="AuthControl1" runat="server" />
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <h2>Random images</h2>
    <br />
    <asp:FileUpload Width="300px" ID="fileUpload" runat="server" />
    <asp:Button ID="btnUpload" Text="Upload" runat="server" OnClick="btnUpload_Click" /><br />
    <table>
        <asp:Repeater ID="rptFileNames" runat="server">
            <ItemTemplate>
                <tr>
                    <td valign="middle" width="200" height="50"><%#Container.DataItem.ToString() %><br />
                        <img src='<%#"../"+Container.DataItem.ToString() %>' width="60" />
                    </td>
                    <td valign="middle">
                        <asp:Button ID="btnDelete" CommandArgument='<%#Container.DataItem.ToString() %>' Text="Delete" OnClientClick="return confirm('Delete this image?');" OnClick="btnDelete_Click" runat="server" /></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <br />
    <asp:Label ID="lblResult" runat="server" />
    <br />
    <br />
    <h2>Text</h2>
    <br />
    <asp:TextBox ID="txtText" Width="700" Height="200" TextMode="MultiLine" runat="server" />
    <asp:RequiredFieldValidator ID="rfText" runat="server" ControlToValidate="txtText" />
    <br />
    <br />
    <asp:Button ID="btnUpdate" OnClick="btnUpdate_Click" Text="Update" runat="server" OnClientClick="return confirm('Are you sure?');" />
    <br />
    <br />
    <h2>News</h2>
    <br />
    <br />
    <div style="float: none; height: 200px;">
        <div style="float: left;">
            <cc1:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDate" runat="server">
            </cc1:CalendarExtender>
            <asp:Label ID="Label1" runat="server" Width="100">Date</asp:Label><asp:TextBox ID="txtDate" Width="230" runat="server" /> * 
            <asp:CompareValidator
                ID="dateValidator" runat="server"
                Type="Date" Display="Dynamic"
                Operator="DataTypeCheck" ValidationGroup="ValidationAddNews"
                ControlToValidate="txtDate"
                ErrorMessage="Please enter a valid date.">
            </asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="ValidationAddNews" ControlToValidate="txtDate" ErrorMessage="Requiered" runat="server"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label runat="server" Width="100">Image url</asp:Label><asp:TextBox ID="txtImageUrl" Width="230" runat="server" />
            <br />
            <br />
            <asp:Label runat="server" Width="100" Style="vertical-align: top;">Text</asp:Label>
            <asp:TextBox Width="600" Height="100" TextMode="MultiLine" ID="txtNewsText" runat="server" /> * 
            <asp:RequiredFieldValidator ValidationGroup="ValidationAddNews" ControlToValidate="txtNewsText" ErrorMessage="Requiered" runat="server"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btnAddNews" Text="Add" ValidationGroup="ValidationAddNews" OnClick="btnAddNews_Click" runat="server" />
        </div>
        <asp:Label ID="lblResult2" runat="server" />
    </div>
    <div style="height: 20px;"></div>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:GridView Height="150" OnRowDeleted="grdNews_RowDeleted" OnRowDataBound="grdNews_RowDataBound" AutoGenerateColumns="false" AllowSorting="true" ID="grdNews" DataSourceID="ObjDSNews" DataKeyNames="Id" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="Text" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="350" SortExpression="Text">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkText" CommandName="Select" Text='<% #Eval("Text")%>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField ItemStyle-Width="250" DataField="ImageUrl" />
                    <asp:BoundField DataField="Date" SortExpression="Date" HeaderText="Date" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure?');" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:DetailsView ID="dwNews" OnItemUpdated="dwNews_ItemUpdated" AutoGenerateRows="false" DefaultMode="Edit" DataKeyNames="Id" DataSourceID="ObjDSNewsDW" runat="server">
                <Fields>
                    <asp:BoundField HeaderText="Date" DataField="Date" />
                    <asp:TemplateField HeaderText="Text">
                        <ItemTemplate>
                            <br />
                            <asp:TextBox ID="txtText" Text='<%#Bind("Text") %>' Width="650px" Height="150px" TextMode="MultiLine" runat="server" />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="ImageUrl" ControlStyle-Width="300px" DataField="ImageUrl" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div style="height: 20px;"></div>
                            <asp:Button CommandName="Update" runat="server" Text="Update"></asp:Button>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <asp:Label ID="lblResultDV" runat="server"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <h2>News height(UL):</h2>
    <br />
    <asp:TextBox ID="txtUlHeight" Width="50" runat="server" /><asp:Button ID="btnUpdateUL" OnClick="btnUpdateUL_Click" runat="server" Text="Update" />

    <div style="height: 20px;"></div>
    <h2>Images</h2>
    <i>(copy the url under an image to use it in a news item.)</i>
    <div style="height: 20px;"></div>
    <asp:FileUpload ID="fileUploadNews" Width="210" runat="server" />
    <asp:Button ID="btnAddImage" Text="Add" OnClick="btnAddImage_Click" runat="server" />
    <div style="height: 20px;"></div>
    <asp:Repeater ID="rptFileNamesNews" OnItemDataBound="rptFileNamesNews_ItemDataBound" runat="server">
        <ItemTemplate>
            <div style="float: left; width: 200px;">
                <%#Container.DataItem.ToString() %><br />
                <img width="70" src='<%#"../"+Container.DataItem.ToString() %>' /><br />
                <asp:Button ID="btnDelete" CommandArgument='<%#Container.DataItem.ToString() %>' Text="Delete" OnClientClick="return confirm('Delete this image?');" OnClick="btnDeleteNewsImage_Click" runat="server" />
            </div>
            <asp:Literal ID="litBreaker" runat="server" />
        </ItemTemplate>
    </asp:Repeater>
    <br clear="all" />
    <asp:Label ID="lblNewsImageResult" runat="server" />
    <asp:ObjectDataSource ID="ObjDSNews" TypeName="NewsDAL" SelectMethod="GetNewsDataSet" UpdateMethod="UpdateNews" DeleteMethod="DeleteNews" runat="server" />
    <asp:ObjectDataSource ID="ObjDSNewsDW" UpdateMethod="UpdateNews" TypeName="NewsDAL" SelectMethod="GetNews" runat="server">
        <SelectParameters>
            <asp:ControlParameter ControlID="grdNews" Name="Id" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
