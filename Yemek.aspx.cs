using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class Yemek : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        string id = "";
        string islem = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            islem = Request.QueryString["islem"];
            id = Request.QueryString["YemekID"];
            Panel2.Visible = false;
            Panel4.Visible = false;
           

            if (Page.IsPostBack==false) { 
            SqlCommand komut=new SqlCommand ("select * from Tbl_Yemekler", baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", baglan.baglanti());
                SqlDataReader okur = komut2.ExecuteReader();

                DropDownList1.DataTextField = "kategoriAd";
                DropDownList1.DataValueField = "kategoriid";
                DropDownList1.DataSource = okur;
                DropDownList1.DataBind();



            if(islem=="sil") 
            {
               
                SqlCommand komut3 = new SqlCommand("delete from Tbl_Yemekler  where YemekID=@t1", baglan.baglanti());
                komut3.Parameters.AddWithValue("@t1", id);
                komut3.ExecuteNonQuery();
               
                baglan.baglanti().Close();

               


                    SqlCommand komut4 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet-1 where Kategoriid=@t1", baglan.baglanti());
                    komut4.Parameters.AddWithValue("t1", DropDownList1.SelectedValue);
                    komut4.ExecuteNonQuery();
                  
                    baglan.baglanti().Close();

                }
        
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

        protected void ButtonArtı0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void ButtonEksi0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false ;
        }

        protected void ButtonEkle_Click(object sender, EventArgs e)
        {
            FileUploadResim.SaveAs(Server.MapPath("/resimler/" + FileUploadResim.FileName));
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,YemekResim,YemekPuan,Kategoriid) values(@t1,@t2,@t3,@t4,@t5,@t6)", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", TextBoxAd.Text);
            komut.Parameters.AddWithValue("@t2", TextBoxMalzeme.Text);
            komut.Parameters.AddWithValue("@t3", TextBoxTarif.Text);
            komut.Parameters.AddWithValue("@t4", "~/resimler/" + FileUploadResim.FileName);
            komut.Parameters.AddWithValue("@t5", TextBoxPuan.Text);
            komut.Parameters.AddWithValue("@t6", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
           
            baglan.baglanti().Close();

            TextBoxAd.Text= "";
            TextBoxMalzeme.Text = "";
            TextBoxTarif.Text = "";
           
            TextBoxPuan.Text="";

            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@t1",baglan.baglanti());
            komut2.Parameters.AddWithValue("t1",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
          
            baglan.baglanti().Close();



        }
    }
}