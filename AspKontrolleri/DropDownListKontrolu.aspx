<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownListKontrolu.aspx.cs" Inherits="HtmlCssAspNet.AspKontrolleri.DropDownListKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Dropdown List Birden çok seçenek arasından sadece bir tanesini seçtirmeye yarar</p>
            <p>WinForms Uygulamalarındaki ComboBox ile ayı işe yarar</p>
            <div>
                <label>Ders Seçiniz</label>
                <asp:DropDownList ID="ddl_dersler" runat="server">
                    <asp:ListItem Value="-1" Text="Ders Seçiniz"></asp:ListItem>
                    <asp:ListItem Value="1" Text="Web Yazılım Uzmanlığı"></asp:ListItem>
                    <asp:ListItem Value="2" Text="İleri Yazılım Uzmanlığı"></asp:ListItem>
                    <asp:ListItem Value="3" Text="Front-end Yazılım"></asp:ListItem>
                    <asp:ListItem Value="4" Text="Mobil Yazılım"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <asp:Button ID="btn_derssec" runat="server" Text="Ders Seç" OnClick="btn_derssec_Click"/>
                <asp:Label ID="lbl_secilenDers" runat="server"></asp:Label>
            </div>

            <br /><br />

            <div>
                <label>Kategori Seçiniz = </label>
                <asp:DropDownList ID="ddl_kategoriler" runat="server" DataValueField="ID" DataTextField="Isim"></asp:DropDownList>
            </div>
        </div>
    </form>
</body>
</html>
