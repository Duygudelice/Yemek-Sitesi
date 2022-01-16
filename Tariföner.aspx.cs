using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Proje1
{
    public partial class Tariföner : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["kullanici"] == null)
            {
                Response.Redirect("girisyapp.aspx");
            }


            else
                Response.Write("hoşgeldiniz");
            {

            }
        }


        protected void ButtonTarifÖner_Click(object sender, EventArgs e)
        {
           
           SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler(TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", TextTarif.Text);
            komut.Parameters.AddWithValue("@t2", TextMalzeme.Text);
            komut.Parameters.AddWithValue("@t3", TextYapilis.Text);
            komut.Parameters.AddWithValue("@t4", FileUploadtarifÖner.FileName);
            komut.Parameters.AddWithValue("@t5", TextÖneren.Text);
            komut.Parameters.AddWithValue("@t6" , TextMail.Text);

            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            
        }

        
    }
}