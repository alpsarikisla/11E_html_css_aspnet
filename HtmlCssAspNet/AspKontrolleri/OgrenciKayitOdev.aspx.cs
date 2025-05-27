using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HtmlCssAspNet.AspKontrolleri
{
    public partial class OgrenciKayitOdev : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            string isim = tb_isim.Text;
            string soyisim = tb_soyisim.Text;
            string okul = tb_okul.Text;
            string sinif = tb_sinif.Text;
            string okulNo = tb_okulNumarasi.Text;

            lbl_bilgi.Text = $"İsim = {isim} Soyisim = {soyisim} Okul = {okul} Sınıf = {sinif} OkulNo = {okulNo}";
        }
    }
}