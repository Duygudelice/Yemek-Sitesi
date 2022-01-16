<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="Proje1.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
       

           .button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 1px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;

}


.button2:hover {

    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}

        
        .auto-style16 {
            height: 23px;
            text-decoration: underline;
            text-align: center;
            font-size: x-large;
        }
        .auto-style23 {
            height: 105px;
            text-decoration: underline;
            text-align: center;
            font-size: x-large;
            width: 981px;
            margin-left: 454px;
            background-color:#FCD8D4;
        }
        .auto-style24 {
            width: 169px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style23" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24"><strong><em>Ad Soyad:</em></strong></td>
            <td>
                <asp:TextBox ID="TextAd" runat="server" Width="419px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong><em>Mail Adresiniz:</em></strong></td>
            <td>
                <asp:TextBox ID="TextMail" runat="server" TextMode="Email" Width="419px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong><em>Konu:</em></strong></td>
            <td>
                <asp:TextBox ID="TextKonu" runat="server" Width="417px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong><em>Mesaj İçerik:</em></strong></td>
            <td>
                <asp:TextBox ID="TextMesaj" runat="server" Height="140px" TextMode="MultiLine" Width="421px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>
                <asp:Button ID="ButtonMesaj" runat="server" CssClass="button button2" Height="35px" OnClick="ButtonMesaj_Click" Text="Gönder" Width="186px" />
            </td>
        </tr>
    </table>
</asp:Content>
