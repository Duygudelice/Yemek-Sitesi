using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        string yemek = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemek = Request.QueryString["YemekID"];
            SqlCommand komut = new SqlCommand("select YemekAd from Tbl_Yemekler where YemekID=@p1", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", yemek);
            
           SqlDataReader oku = komut.ExecuteReader();
            while(oku.Read())
            {
                Label7.Text = oku[0].ToString();
            }
            baglan.baglanti().Close();

            yemek = Request.QueryString["YemekID"];
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where YemekID=@p2", baglan.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemek);
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();

            SqlCommand komutt = new SqlCommand("select * from Tbl_Yemekler where YemekID=@t1", baglan.baglanti());
            komutt.Parameters.AddWithValue("@t1", yemek);

            SqlDataReader okuu = komutt.ExecuteReader();
            
            DataList1.DataSource = okuu;
            DataList1.DataBind();

        }

        protected void ButtonYorum_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into Tbl_Yorumlar(YorumAdSoyad,YorumMail,Yorumİcerik,YemekID) values(@t1,@t2,@t3,@t4)", baglan.baglanti());
            komut3.Parameters.AddWithValue("@t1",TextYorumAd.Text);
            komut3.Parameters.AddWithValue("@t2", TextYorumMail.Text);
            komut3.Parameters.AddWithValue("@t3", TextYorumİcer.Text);
            komut3.Parameters.AddWithValue("@t4", yemek);
            komut3.ExecuteNonQuery();
         
            TextYorumAd.Text = "";
            TextYorumMail.Text = "";
            TextYorumİcer.Text = "";
            baglan.baglanti().Close();
        }

       
    }
}