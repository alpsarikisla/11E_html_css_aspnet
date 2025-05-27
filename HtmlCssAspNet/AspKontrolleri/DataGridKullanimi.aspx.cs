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
    public partial class DataGridKullanimi : System.Web.UI.Page
    {
        SqlConnection con; SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Kategori> kategoriler = new List<Kategori>();

            con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=NORTHWND;Integrated Security=True");
            cmd = con.CreateCommand();

            cmd.CommandText = "SELECT CategoryID,CategoryName,Description FROM Categories";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Kategori kat = new Kategori();
                kat.Isim = reader.GetString(1);
                kat.ID = reader.GetInt32(0);
                if (!reader.IsDBNull(2))
                {
                    kat.Aciklama = reader.GetString(2);
                }
                kategoriler.Add(kat);
            }

            gv_kategoriler.DataSource = kategoriler;
            gv_kategoriler.DataBind();
            con.Close();
            
        }
    }
}