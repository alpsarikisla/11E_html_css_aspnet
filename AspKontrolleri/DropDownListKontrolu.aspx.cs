using HtmlCssAspNet.AspKontrolleri.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HtmlCssAspNet.AspKontrolleri
{
    public partial class DropDownListKontrolu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Kategori> kategoriler = new List<Kategori>();
            kategoriler.Add(new Kategori() { ID = 1, Isim = "Kitaplar" });
            kategoriler.Add(new Kategori() { ID = 2, Isim = "Kalemler" });
            kategoriler.Add(new Kategori() { ID = 3, Isim = "Defterler" });

            
            ddl_kategoriler.DataSource = kategoriler;
            ddl_kategoriler.DataBind();
        }

        protected void btn_derssec_Click(object sender, EventArgs e)
        {
            lbl_secilenDers.Text ="Text = "+ ddl_dersler.SelectedItem.Text + " - Value = " + ddl_dersler.SelectedItem.Value;
        }
    }
}