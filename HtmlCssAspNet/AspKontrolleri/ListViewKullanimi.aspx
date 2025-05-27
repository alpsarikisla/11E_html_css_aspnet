<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewKullanimi.aspx.cs" Inherits="HtmlCssAspNet.AspKontrolleri.ListViewKullanimi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="lv_kategoriler" runat="server">
                <LayoutTemplate>
                    <table border="1" cellspacing="0" cellpadding="10">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Kategori Adı</th>
                                <th>Açıklama</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                        </tbody>
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Isim") %></td>
                        <td><%# Eval("Aciklama") %></td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="background-color:#efefef">
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Isim") %></td>
                        <td><%# Eval("Aciklama") %></td>
                    </tr>
                </AlternatingItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
