<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonKontrolu.aspx.cs" Inherits="HtmlCssAspNet.AspKontrolleri.ButtonKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Button Kontrolu</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Asp Nedir Nasıl Kullanılır</h1>
            <p>Asp(Active Server Page) Browser tabanlı yazılımlar üretmek için kullanılan Server Side Yazılım yapısıdır. Kodların tamamı sunucuda derlenip, Html formatında istemci bilgisayara(Client) gönderilir. Button gibi kontroller ile etkileşime girmeye <b>POST</b>. Verilerin sunucudan istemciye dönmesine (GET/BACK) denir. POST-BACK yapısıyla çalışır. Asp Sayfamızı çalıştırdığımızda local bilgisayarımızda localhost isminde IIS(Internet Information Services) yapısı yalışır.</p>
            <p>Asp Sayfaları .aspx ve .aspx.cs olmak üzere 2 kısımdan oluşur. .aspx html css asp kodlarını barındırıp sayfada görsel öğelerin hazırlanmasını sağlar. .aspx.cs ise adından da anlaşılacağı gibi bir c# sınıfıdır. ve c# kodlarını bu alanda barındırır. </p>
            <p>ASP kontrollerini başında asp: belirteci bulunur. <b>Tüm ASP kontrolleri runat="server" attributuna sahip olmak zorundadır. run-at=server yani sunucuda çalıştır şeklinde yorumlanabilir. ID tanımlaması da zorunludur. ID tanımlanan kontrolün adını belirler böylece CodeBehind(aspx.cs) kısmında kontrole ID'si ile erişilebilir</b></p>
            
            <asp:Button ID="btn_tikla" runat="server" Text="Tıkla" OnClick="btn_tikla_Click"/>
            <p> Butona tıklanınca yapılacak olan işlemler OnClick event'ı ile tanımlanır. OnClick event'ı tanımlanınca event adını kendimiz yazmıyoruz asp bunu otomatik olarak oluşturur. </p>
        </div>
    </form>
</body>
</html>
