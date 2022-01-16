using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class İletisim : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonMesaj_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar(MesajGonderen,MesajMail,MesajBaslik,Mesajİcerik) values (@t1,@t2,@t3,@t4)", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", TextAd.Text);
            komut.Parameters.AddWithValue("@t2", TextMail.Text);
            komut.Parameters.AddWithValue("@t3", TextKonu.Text);
            komut.Parameters.AddWithValue("@t4", TextMesaj.Text);

            komut.ExecuteNonQuery();

            baglan.baglanti().Close();
           


        }
    }
}