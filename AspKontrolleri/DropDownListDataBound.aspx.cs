using HtmlCssAspNet.AspKontrolleri.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HtmlCssAspNet.AspKontrolleri
{
    public partial class DropDownListDataBound : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sayfamızda butona tıklama, seçili elemanı değiştirme gibi OnClick Tarzı event kullanılmışsa olay her gerçekleştiğinde PostBack yapılmış olur
            if (!IsPostBack)
            {
                SqlConnection baglanti = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=NORTHWND; Integrated Security=True");
                try
                {
                    List<Kategori> kategoriler = new List<Kategori>();

                    SqlCommand komut = baglanti.CreateCommand();
                    komut.CommandText = "SELECT CategoryID, CategoryName FROM Categories";
                    baglanti.Open();
                    SqlDataReader okuyucu = komut.ExecuteReader();
                    while (okuyucu.Read())
                    {
                        Kategori kat = new Kategori();
                        kat.ID = okuyucu.GetInt32(0);
                        kat.Isim = okuyucu.GetString(1);
                        kategoriler.Add(kat);
                    }
                    ddl_kategoriler.DataSource = kategoriler;
                    ddl_kategoriler.DataBind();
                }
                finally
                {
                    baglanti.Close();
                }
            }
        }

        protected void btn_sec_Click(object sender, EventArgs e)
        {
            string id = ddl_kategoriler.SelectedItem.Value;
            string isim = ddl_kategoriler.SelectedItem.Text;
            lbl_ekran.Text = "ID = " + id + " Isim = " + isim;
        }
    }
}