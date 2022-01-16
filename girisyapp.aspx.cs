using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
   
    public partial class WebForm3 : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string kullanici = TextBox1.Text;
            string sifre = TextBox2.Text;

            SqlCommand komut = new SqlCommand("select * from Tbl_Uyeler where UyeKullanici=@KullaniciAdi AND UyeSifre=@Sifre", baglan.baglanti());
            komut.Parameters.AddWithValue("KullaniciAdi", kullanici);
            komut.Parameters.AddWithValue("Sifre", sifre);

            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session["Kullanici"] = oku["UyeKullanici"].ToString();
                Response.Redirect("TarifÖner.aspx");

            }
            else
                Response.Write("yanlış");

            oku.Close();
            baglan.baglanti().Close();
            baglan.baglanti().Dispose();
        }
    }
    }
