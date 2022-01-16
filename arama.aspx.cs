using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class arama : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
    

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["ara"] != null)
            {
                string aranan = Request.QueryString["ara"];
                SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler inner join Tbl_Kategoriler on Tbl_Kategoriler.Kategoriid=Tbl_Yemekler.Kategoriid Where YemekAd Like '%" + aranan + "%' Order By YemekID Desc", baglan.baglanti());

                SqlDataReader tbl = komut.ExecuteReader();

                DataList2.DataSource = tbl;
                DataList2.DataBind();
               
            }
            
              
        }

        
    }
  
}
