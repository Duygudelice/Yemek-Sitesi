using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        string yemek = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemek =Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where Kategoriid=@t1", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", yemek);
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
            baglan.baglanti().Close();
        }

       
    }
}