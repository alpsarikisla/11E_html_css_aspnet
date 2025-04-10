<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextBoxKontolu.aspx.cs" Inherits="HtmlCssAspNet.AspKontrolleri.TextBoxKontolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>isim = </label><br />
            <asp:TextBox ID="tb_isim" runat="server"></asp:TextBox><br />
            <asp:Button ID="btn_gonder" runat="server" Text="Gönder" OnClick="btn_gonder_Click" /><br />
            <asp:Label ID="lbl_isim" runat="server"></asp:Label>
            <hr />
            Sayı 1 = 
            <asp:TextBox ID="tb_sayi1" runat="server"></asp:TextBox>
            <br />
            Sayı 2 =
            <asp:TextBox ID="tb_sayi2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_Topla" runat="server" OnClick="btn_Topla_Click" Text="Topla" />
            <br />
            Sonuç = 
            <asp:TextBox ID="tb_sonuc" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
