using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class Yorum : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];
            islem = Request.QueryString["islem"];
            Panel2.Visible = false;
            Panel4.Visible = false;
            SqlCommand komut = new SqlCommand("select *  from Tbl_Yorumlar where YorumOnay=1", baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();

            SqlCommand komut2 = new SqlCommand("select *  from Tbl_Yorumlar where YorumOnay=0", baglan.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList1.DataSource = oku2;
            DataList1.DataBind();
            if (islem=="sil")
            {
                SqlCommand komut3 = new SqlCommand("delete from Tbl_Yorumlar where YorumID=@t1",baglan.baglanti());
  
         komut3.Parameters.AddWithValue("@t1",id);
                komut3.ExecuteNonQuery();
                
                baglan.baglanti().Close();
  
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

        protected void Button1_Click(object sender, EventArgs e)
        {
Panel4.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
 Panel4.Visible = false;
        }
    }
}