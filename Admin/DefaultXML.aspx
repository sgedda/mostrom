<%@ Page CodeBehind="DefaultXML.aspx.cs" Language="C#" AutoEventWireup="True" Inherits="Moström.Admin.DefaultXML" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:FileUpload ID="fileUpload" runat="server" />
    <asp:Button ID="btnUpload" Text="Upload" runat="server" onclick="btnUpload_Click" /><br />
    <asp:Label ID="lblResult" runat="server" /><br />
    <asp:Repeater ID="rptFileNames" runat="server">
        <ItemTemplate>
            <%#Container.DataItem.ToString() %>
            <asp:CheckBox runat="server" ID="chk" />
            <asp:Button ID="btnDelete" Text="Delete" OnClick="btnDelete_Click" runat="server" />
            <br>
        </ItemTemplate>
    </asp:Repeater>
    <asp:Repeater ID="rptImages" runat="server">
        <ItemTemplate>
            <asp:Image runat="server" ImageUrl='<%#Container.DataItem.ToString() %>' />
        </ItemTemplate>
    </asp:Repeater>
    </div>
    </form>
</body>
</html>
