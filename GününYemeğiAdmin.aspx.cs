using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class GününYemeğiAdmin : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        string id = " ";
        string islem = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekID"];
            islem = Request.QueryString["islem"];
            Panel2.Visible = false;
            
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
         

            SqlCommand komut3 = new SqlCommand("Select YemekAd from Tbl_Yemekler where YemekDurum=1", baglan.baglanti());
            SqlDataReader oku2 = komut3.ExecuteReader();
            DataList1.DataSource = oku2;
            DataList1.DataBind();
            baglan.baglanti().Close();

            if (islem=="sec")
            {
                SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set YemekDurum=1 where YemekID=@t1",baglan.baglanti());
                komut2.Parameters.AddWithValue("@t1", id);
                komut2.ExecuteNonQuery();
               
            }

            if (islem =="kaldir")
            {
                SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set YemekDurum=0 where YemekID=@t1",baglan.baglanti());
                komut2.Parameters.AddWithValue("@t1", id);
                komut2.ExecuteNonQuery();
                
            }

        }

        protected void ButtonArtı_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void ButtonEksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}