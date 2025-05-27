<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OgrenciKayitOdev.aspx.cs" Inherits="HtmlCssAspNet.AspKontrolleri.OgrenciKayitOdev" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Öğrenci Kayıt Ödev - Çözümü</title>
    <style>
        .satir{
            margin-top:10px;
            margin-bottom:20px;
        }
        .tasiyici {
            width: 500px;
            padding: 15px;
            border: 1px solid gray;
            margin-left:auto; margin-right:auto;
            margin-top:100px;
        }

        .metinkutu {
            width: 100%;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            padding: 10px;
            margin-top: 5px;
        }

        .kenarkivrim {
            border-radius: 5px;
            border: 1px solid gray;
        }
        .kaydetbuton
        {
            padding:10px 30px;
            background-color:#d40bbd;
            color:white;
            font-size:15pt;
            border:1px;
            border-radius:7px;
            cursor:pointer;
        }
        .kaydetbuton:hover
        {
            background-color:#930182;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="tasiyici">
            <h2 style="margin-top:0">Öğrenci Kayıt</h2>
            <hr />
            <div class="satir">
                <label>Öğrenci Adı</label><br />
                <asp:TextBox ID="tb_isim" runat="server" class="metinkutu kenarkivrim"></asp:TextBox>
            </div>
            <div class="satir">
                <label>Öğrenci Soyadı</label><br />
                <asp:TextBox ID="tb_soyisim" runat="server" CssClass="metinkutu kenarkivrim"></asp:TextBox>
            </div>
            <div class="satir">
                <label>Okul İsmi</label>
                <asp:TextBox ID="tb_okul" runat="server" CssClass="metinkutu kenarkivrim"></asp:TextBox>
            </div>
            <div class="satir">
                <label>Sınıf / Şube</label>
                <asp:TextBox ID="tb_sinif" runat="server" CssClass="metinkutu kenarkivrim"></asp:TextBox>
            </div>
            <div class="satir">
                <label>Okul Numarası</label>
                <asp:TextBox ID="tb_okulNumarasi" runat="server" CssClass="metinkutu kenarkivrim"></asp:TextBox>
            </div>
            <div class="satir">
                <asp:Button ID="btn_kaydet" runat="server" CssClass="kaydetbuton" Text="Öğrenci Kaydet" OnClick="btn_kaydet_Click"/>
            </div>
            <div class="satir">
                <asp:Label ID="lbl_bilgi" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
