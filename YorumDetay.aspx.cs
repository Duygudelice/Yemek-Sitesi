using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YorumID"];
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumİcerik,YemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.YemekID=Tbl_Yemekler.YemekID where YorumID =@t1 ", baglan.baglanti());
                komut.Parameters.AddWithValue("@t1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBoxAd.Text = oku[0].ToString();
                    TextBoxMail.Text = oku[1].ToString();
                    TextBoxİcerik.Text = oku[2].ToString();
                    TextBoxYemek.Text = oku[3].ToString();




                }
                baglan.baglanti().Close();

                                                                                                                                          

            }
        }
    

        protected void ButtonGüncelle_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];
            SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set YorumOnay=1 where YorumID=@t1 ", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", id);
           
            komut.ExecuteNonQuery();
         
            baglan.baglanti().Close();
        
    }
}
}
