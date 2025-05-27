<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabelKontrolu.aspx.cs" Inherits="HtmlCssAspNet.AspKontrolleri.LabelKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>ASP Label</h2>
            <p>asp:label HTML'deki span'in programlanabilir halidir</p>
            <asp:Label ID="lbl_mesaj" runat="server">Standart Asp Label</asp:Label><br />
            <asp:Label ID="lbl_isim" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
