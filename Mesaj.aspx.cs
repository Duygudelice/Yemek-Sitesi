using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    
    public partial class Mesaj : System.Web.UI.Page
    {    
        sqlsinifi baglan= new sqlsinifi();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("select * from Tbl_Mesajlar", baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            baglan.baglanti().Close();

            id = Request.QueryString["MesajID"];
            islem = Request.QueryString["islem"];


            if (islem == "sil")
            {
                SqlCommand komut3 = new SqlCommand("delete from Tbl_Mesajlar where MesajID=@t1", baglan.baglanti());

                komut3.Parameters.AddWithValue("@t1", id);
                komut3.ExecuteNonQuery();

                baglan.baglanti().Close();

            }
        }

        protected void ButtonArtı_Click(object sender, EventArgs e)
        {
            Panel2.Visible =true;
        }

        protected void ButtonEksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

       
    }
}