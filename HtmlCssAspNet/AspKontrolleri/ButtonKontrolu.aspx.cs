using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HtmlCssAspNet.AspKontrolleri
{
    public partial class ButtonKontrolu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sayfa yüklenmeden önce otomatik olarak çalışır
        }

        protected void btn_tikla_Click(object sender, EventArgs e)
        {
            //Onclick Event'ı butona eklendikten sonra createNewEvent Seçeneği ile bu fonksiyonun(btn_tikla_Click) otomatik olarak oluşmasını sağladık.
            btn_tikla.Text = "Evet Butona Tıkladınız";
        }
    }
}