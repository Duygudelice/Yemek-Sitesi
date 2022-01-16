using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class YemekAdmin : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        string id = "";
        string idd;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YemekID"];
                SqlCommand komut = new SqlCommand("select * from  Tbl_Yemekler where YemekID=@t7", baglan.baglanti());
                komut.Parameters.AddWithValue("@t7", id);
                SqlDataReader okur = komut.ExecuteReader();

                while (okur.Read())
                {
                    TextBoxAd.Text = okur[1].ToString();
                    TextBoxMalzeme.Text = okur[2].ToString();
                    TextBoxTarif.Text = okur[3].ToString();
                    TextBoxPuan.Text = okur[6].ToString();
                    

                }
                baglan.baglanti().Close();

                id = Request.QueryString["YemekID"];
                SqlCommand komutt = new SqlCommand("select YemekResim from Tbl_Yemekler where YemekID=@t9", baglan.baglanti());
                komutt.Parameters.AddWithValue("@t9", id);
                SqlDataReader oku = komutt.ExecuteReader();
                DataList1.DataSource = oku;
                DataList1.DataBind(); 
                if (Page.IsPostBack == false)
                {

                    SqlCommand komut3 = new SqlCommand("select * from Tbl_Kategoriler", baglan.baglanti());
                    SqlDataReader okur2 = komut3.ExecuteReader();

                    DropDownList1.DataTextField = "kategoriAd";
                    DropDownList1.DataValueField = "kategoriid";
                    DropDownList1.DataSource = okur2;
                    DropDownList1.DataBind();


                    baglan.baglanti().Close();



                }
            }
        }
        protected void ButtonGüncelle_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekID"];

          
                


                SqlCommand komutt = new SqlCommand("select * from Tbl_Yemekler Kategoriid where YemekID=@t1", baglan.baglanti());
                komutt.Parameters.AddWithValue("@t1", id);


                SqlDataReader okuu = komutt.ExecuteReader();
                while (okuu.Read())
                {
                    idd = okuu[7].ToString();
                }
             
                Response.Write(idd);
                baglan.baglanti().Close();
            



            SqlCommand komut = new SqlCommand("update  Tbl_Yemekler set YemekAd=@t1 ,YemekMalzeme=@t2, YemekTarif =@t3,YemekPuan=@t4 ,Kategoriid=@t6 where YemekID=@t7", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", TextBoxAd.Text);
            komut.Parameters.AddWithValue("@t2", TextBoxMalzeme.Text);
            komut.Parameters.AddWithValue("@t3", TextBoxTarif.Text);
            komut.Parameters.AddWithValue("@t4", Convert.ToDouble(TextBoxPuan.Text));


            komut.Parameters.AddWithValue("@t6", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@t7", id);
            komut.ExecuteNonQuery();
            
            baglan.baglanti().Close();

            if (idd != DropDownList1.SelectedValue)
            {
                SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@t6", baglan.baglanti());
                komut2.Parameters.AddWithValue("t6", DropDownList1.SelectedValue);
                komut2.ExecuteNonQuery();
                

                SqlCommand komutt2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet-1 where Kategoriid=@t6", baglan.baglanti());
                komutt2.Parameters.AddWithValue("t6", idd);
                komutt2.ExecuteNonQuery();
              

            }
            if (FileUpload1.HasFile)
            {
                id = Request.QueryString["YemekID"];
                FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
                SqlCommand komut3 = new SqlCommand("update Tbl_Yemekler set YemekResim=@t8 where YemekID = @t7", baglan.baglanti());

                komut3.Parameters.AddWithValue("@t7", id);
                komut3.Parameters.AddWithValue("t8", "~/resimler/" + FileUpload1.FileName);
                komut3.ExecuteNonQuery();
                baglan.baglanti().Close();

            }
                if (CheckBox1.Checked)
                {
                
                    id = Request.QueryString["YemekID"];
                    SqlCommand komut4 = new SqlCommand("insert into Tbl_Slider(Resim,Ad,Tarih,Malzeme,Tarif) select YemekResim,YemekAd,YemekTarih,YemekMalzeme,YemekTarif from Tbl_Yemekler where YemekID=@t1",baglan.baglanti());
                    komut4.Parameters.AddWithValue("@t1", id);
                    komut4.ExecuteReader();
                  

                    SqlCommand komut5 = new SqlCommand("Update Tbl_Slider  set ResimDurum=1", baglan.baglanti());
                    
                komut5.Parameters.AddWithValue("@t2", id);
                komut5.ExecuteReader();
                
                baglan.baglanti().Close();

                }
            if (CheckBox2.Checked)
            {
                id = Request.QueryString["YemekID"];
               

                SqlCommand komut6 = new SqlCommand("Update Tbl_Slider set ResimDurum=0 ", baglan.baglanti());
             
                komut6.Parameters.AddWithValue("@t3", id);
                komut6.ExecuteReader();
                

            }








        }
    }
}