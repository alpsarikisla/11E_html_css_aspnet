using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HtmlCssAspNet.AspKontrolleri.Model
{
    public class DataModel
    {
        SqlConnection baglanti; SqlCommand komut;
        public DataModel()//Constructor
        {
            baglanti = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=NORTHWND;Integrated Security=True");
            komut = baglanti.CreateCommand();
        }

        #region Kategori Metotları

        public List<Kategori> KategoriListele()
        {
            List<Kategori> kategoriler = new List<Kategori>();
            try
            {
                komut.CommandText = "SELECT CategoryID, CategoryName, Description FROM Categories";
                komut.Parameters.Clear();
                baglanti.Open();
                SqlDataReader okuyucu = komut.ExecuteReader();
                while (okuyucu.Read())
                {
                    Kategori kat = new Kategori();
                    kat.ID = okuyucu.GetInt32(0);
                    kat.Isim = okuyucu.GetString(1);
                    if (!okuyucu.IsDBNull(2))
                    {
                        kat.Aciklama = okuyucu.GetString(2);
                    }
                    kategoriler.Add(kat);
                }
                return kategoriler;
            }
            finally
            {
                baglanti.Close();
            }
        }

        #endregion

    }
}