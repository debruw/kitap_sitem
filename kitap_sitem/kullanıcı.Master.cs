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
    public partial class kullanıcı : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["kitaplar"].ConnectionString);//bağlantı tanımlıyoruz
            
            string sorgu = "select k_adi from hesap where eposta='"+Session["eposta"]+"' ";//sorgumuzu oluşturuyoruz
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();
            
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblkadi.Text = dr["k_adi"].ToString();
                Session.Add("k_adi", dr["k_adi"].ToString());
            }
            

            cnn.Close();

        }
    }
}