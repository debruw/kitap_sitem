using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;

namespace kitap_sitem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void giris_kontrol_click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["kitaplar"].ConnectionString);//bağlantı tanımlıyoruz
            SqlDataReader dr;//veri okuyucu tanımlıyoruz
            string sorgu = "select * from hesap where eposta='"+girismail_txtbox.Text+"' and sifre='"+girissifre_txtbox.Text+"'";//sorgumuzu oluşturuyoruz
            SqlCommand cmd = new SqlCommand(sorgu, cnn);//komutumuzu tanımladık
            cnn.Open();//bağlantıyı açtık
            dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Session.Add("eposta", dr["eposta"].ToString());
                Session.Add("sifre", dr["sifre"].ToString());
                Response.Redirect("profil.aspx");
            }//e-posta ve şifre kontrolü ile giriş yaptık
            else
            {
                girislbl.Text="E-posta veya şifre yanlış!";
            }

            cnn.Close();//bağlantımızı kapattık

        }

    }
}