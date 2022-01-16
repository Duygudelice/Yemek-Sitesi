using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class GününYemeği : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where YemekDurum=1", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList3.DataSource = oku;
             DataList3.DataBind();
        }

        
    }
}