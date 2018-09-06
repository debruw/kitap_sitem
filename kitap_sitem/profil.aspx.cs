using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace kitap_sitem
{
    public partial class profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["kitaplar"].ConnectionString);//bağlantı tanımlıyoruz

            string sorgu = "select k_adi from hesap where eposta='" + Session["eposta"] + "' ";//sorgumuzu oluşturuyoruz
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbl_k_adi.Text = dr["k_adi"].ToString();
            }


            cnn.Close();
        }
    }
}