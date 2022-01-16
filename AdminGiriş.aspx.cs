using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class AdminGiriş : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kullanici = TextBox1.Text;
            string sifre = TextBox2.Text;

            SqlCommand komut = new SqlCommand("select * from Tbl_Yonetici where YoneticiAd=@KullaniciAdi AND YoneticiSifre=@Sifre", baglan.baglanti());
            komut.Parameters.AddWithValue("KullaniciAdi", kullanici);
            komut.Parameters.AddWithValue("Sifre", sifre);

            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session["Kullanici"] = oku["YoneticiAd"].ToString();
                Response.Redirect("Yemek.aspx");

            }
            else
                Response.Write("yanlış");

            oku.Close();
            baglan.baglanti().Close();
            baglan.baglanti().Dispose();
        }
    }
}