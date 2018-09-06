using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Configuration;


namespace kitap_sitem
{
    public partial class kayıt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        protected void kayit_click(object sender, EventArgs e)
        {

            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["kitaplar"].ConnectionString);//bağlantı tanımlıyoruz

            string sorgu = "insert into hesap (eposta,k_adi,sifre) values (@eposta,@k_adi,@sifre)";//sorgumuzu oluşturuyoruz
            SqlCommand cmd = new SqlCommand(sorgu, cnn);//komutumuzu tanımladık
            string sorgu2 = "insert into profil (k_adi) values (@k_adi2)";//sorgumuzu oluşturuyoruz
            SqlCommand cmd2 = new SqlCommand(sorgu2, cnn);//komutumuzu tanımladık
            cnn.Open();//bağlantıyı açtık
            try
            {
                if (eposta_txtbox.Text.Length != 0 && k_adi_txtbox.Text.Length != 0)
                {
                    if (sifre_txtbox.Text == sifre2_txtbox.Text && sifre_txtbox.Text.Length >= 6)
                    {
                        cmd.Parameters.AddWithValue("@eposta", eposta_txtbox.Text);
                        cmd.Parameters.AddWithValue("@k_adi", k_adi_txtbox.Text);
                        cmd.Parameters.AddWithValue("@sifre", sifre_txtbox.Text);

                        cmd2.Parameters.AddWithValue("@k_adi2", Session["k_adi"]);

                        Session["k_adi"] = k_adi_txtbox.Text;//bilgileri yüklenecek sayfada kullanmak için
                        Session["eposta"] = eposta_txtbox.Text;

                        cmd.ExecuteNonQuery(); 
                        cmd2.ExecuteNonQuery();
                        Page.Response.Redirect("profil.aspx");

                    }//veri tabanına ekleme yaptık
                    else
                    {
                        hatalbl.Text = "Şifreniz en az altı karakter olmalıdır!";
                    }
                }
                else
                {
                    hatalbl.Text = "E-posta veya kullanıcı adı boş girilemez!";
                }
            }
            catch {
                hatalbl.Text = "Kullanıcı adı yada e-posta mevcut!";
            }
            finally
            {
                cnn.Close();//bağlantımızı kapattık
            }
        }
            

            
        }

    }
