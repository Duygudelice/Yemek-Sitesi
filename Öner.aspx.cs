using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class Öner : System.Web.UI.Page
    {
        sqlsinifi baglan = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=1", baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=0", baglan.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList1.DataSource = oku2;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
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