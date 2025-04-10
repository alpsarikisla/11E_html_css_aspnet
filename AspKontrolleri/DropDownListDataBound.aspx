<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownListDataBound.aspx.cs" Inherits="HtmlCssAspNet.AspKontrolleri.DropDownListDataBound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DropDownListDataBound</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>Kategori Seçiniz</label><br />
            <asp:DropDownList ID="ddl_kategoriler" runat="server" DataTextField="Isim" DataValueField="ID"></asp:DropDownList>
            <br />
            <asp:Button ID="btn_sec" runat="server" Text="Kategori Seç" OnClick="btn_sec_Click" />
            <br />
            <asp:Label ID="lbl_ekran" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
