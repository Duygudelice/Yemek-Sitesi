using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Proje1
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlsinifi bgl = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
             if (Session["Kullanici"]!=null)
            {
                Button4.Visible = true;
                Button2.Visible = false;
                Button3.Visible = false;
            }
             else
            Button4.Visible = false;
            SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler",bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
          
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Remove("Kullanici");
            Button2.Visible = true;
            Button3.Visible =true;
            
            Button4.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("GirişYap.aspx");
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ÜyeOl.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text.Trim() != "") // Textboximizin bos olup olmadigini kontrol edelim. 
            {
                // Kontrolümüzü yaptiktan sonra eger kelime varsa bu kelimeyi bir degiskene alalim. 
                string aranacakKelime = TextBox1.Text.Trim();
                // Ve aranacak kelimeyi Query String kullanarak gönderelim. 
                Response.Redirect("arama.aspx?ara=" + aranacakKelime);

            }
            else
                Response.Write("kelime giriniz");
        }

       
    }
}