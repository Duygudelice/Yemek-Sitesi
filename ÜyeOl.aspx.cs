using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Proje1
{
    public partial class ÜyeOl : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Label1.Visible= false;
        }

        protected void ButtonUye_Click(object sender, EventArgs e)
        {
            string aranan = Request.QueryString["ara"];
           SqlCommand komutt = new SqlCommand("Select * from Tbl_Uyeler Where UyeMail Like '%" + TextMail.Text+ "%' Order By UyeID Desc", baglan.baglanti());
            SqlDataReader oku = komutt.ExecuteReader();
            while(oku.Read())
            {
                TextBox2.Text = oku[1].ToString();
            }
            if (TextBox2.Text != TextMail.Text)
            {

                if (TextSifre.Text == TextTekrar.Text)
                {

                    SqlCommand komut = new SqlCommand("insert into Tbl_Uyeler(UyeMail,UyeSifre,UyeAdSoyad,UyeKullanici) values(@t1,@t2,@t3,@t5)", baglan.baglanti());
                    komut.Parameters.AddWithValue("@t1", TextMail.Text);
                    komut.Parameters.AddWithValue("@t2", TextSifre.Text);

                    komut.Parameters.AddWithValue("@t3", TextAd.Text);


                    komut.Parameters.AddWithValue("@t5", TextKulAd.Text);
                    komut.ExecuteNonQuery();


                    baglan.baglanti().Close();
                    TextMail.Text = " ";
                    TextSifre.Text = " ";



                    TextAd.Text = " ";


                    TextKulAd.Text = " ";

                }



            }
            else
                Label1.Visible = true;
                Label1.Text = " Bu mail ile kayıtlı bir hesap var";
        }
    }
}
