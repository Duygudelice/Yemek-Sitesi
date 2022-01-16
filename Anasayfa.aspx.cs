using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class Anasayfa : System.Web.UI.Page { 
    
        sqlsinifi baglan = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            SqlCommand komut = new SqlCommand("select *  from Tbl_Slider where ResimDurum=1 ",baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            baglan.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("select *  from Tbl_Slider where ResimDurum=1 ", baglan.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();


        }

        
    }
}