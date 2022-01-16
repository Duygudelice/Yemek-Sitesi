<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemek.aspx.cs" Inherits="Proje1.Yemek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 100%;
    }
    .auto-style18 {
        text-align: center;
    }
    .auto-style19 {
        text-align: right;
    }
    .auto-style20 {
        width: 362px;
    }
        .auto-style22 {
            width: 58px;
        }
        .auto-style23 {
            text-align: left;
            font-size: large;
        }
        .auto-style24 {
            width: 51px;
        }
        .auto-style28 {
            margin-left: 8px;
        }
        .auto-style29 {
            width: 42px;
            height: 33px;
        }
        .auto-style30 {
            width: 71px;
            height: 33px;
        }
        .auto-style31 {
            height: 33px;
        }
        .auto-style32 {
            width: 606px;
        }
        .auto-style34 {
            width: 429px;
            height: 23px;
        }
        .auto-style35 {
            width: 606px;
            height: 23px;
        }
        .auto-style37 {
            width: 429px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <div class="auto-style18">
        <table class="auto-style17">
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="ButtonArtı" runat="server" Font-Size="Medium" Text="+" Width="46px" Font-Bold="True" OnClick="ButtonArtı_Click"  />
                </td>
                <td class="auto-style22"><strong>
                    <asp:Button ID="ButtonEksi" runat="server" Text="-" Width="46px" Font-Bold="True" Font-Italic="False"  Height="31px" OnClick="ButtonEksi_Click" />
                    </strong></td>
                <td class="auto-style23"><strong><em>YEMEK LİSTESİ</em></strong></td>
            </tr>
        </table>
        </div>
    </asp:Panel>
      <asp:Panel ID="Panel2" runat="server">
          <asp:DataList ID="DataList1" runat="server" Width="627px">
              <ItemTemplate>
                  <table class="auto-style17">
                      <tr>
                          <td class="auto-style20" style="border-style: none none solid none; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                              <asp:Label ID="Label1" runat="server" Text='<%#Eval("YemekAd")%>'></asp:Label></a>
                          </td>

                          <td class="auto-style19" style="border-style: none none solid none; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                              
                             <a href="Yemek.aspx?YemekID=<%#Eval("YemekID")%>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="21px" ImageUrl="~/resimler/delete.jpg" Width="29px" /> </a>
                          </td>
                          <td class="auto-style19" style="border-style: none none solid none; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                          <a href="YemekAdmin.aspx?YemekID=<%#Eval("YemekID")%>"> <asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/resimler/refresh.jpg" Width="27px" /></a>
                          </td>
                      </tr>
                  </table>
                 
              </ItemTemplate>
               
          </asp:DataList>
    </asp:Panel>
  <asp:Panel ID="Panel3" runat="server" style= "margin-top:10px;">
          <table class="auto-style17">
              <tr>
                  <td class="auto-style29">
                      <asp:Button ID="ButtonArtı0" runat="server" Font-Bold="True" Font-Size="Medium" Text="+" Width="46px" OnClick="ButtonArtı0_Click" style="height: 29px" />
                  </td>
                  <td class="auto-style30"><strong>
                      <asp:Button ID="ButtonEksi0" runat="server" CssClass="auto-style28" Font-Bold="True"  Text="-" Width="46px" Height="28px" OnClick="ButtonEksi0_Click" />
                      </strong></td>
                  <td class="auto-style31"><strong><em>YEMEK <span class="auto-style14">EKLEME</span></em></strong></td>
              </tr>
          </table>
      </asp:Panel>
           <asp:Panel ID="Panel4" runat="server">
          <table>
              <tr>
                  <td class="auto-style37">
                  
                      <strong>YEMEK AD:</strong></td>
                  <td class="auto-style32">
                      <asp:TextBox ID="TextBoxAd" runat="server" Height="22px" Width="316px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style37"><strong>YEMEK MALZEME:</strong></td>
                  <td class="auto-style32">
                      <asp:TextBox ID="TextBoxMalzeme" runat="server" Height="109px" TextMode="MultiLine" Width="319px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style37"><strong>YEMEK TARİF:</strong></td>
                  <td class="auto-style32">
                      <asp:TextBox ID="TextBoxTarif" runat="server" Height="143px" TextMode="MultiLine" Width="319px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style37"><strong>YEMEK RESİM:</strong></td>
                  <td class="auto-style32">
                      <asp:FileUpload ID="FileUploadResim" runat="server" Height="25px" Width="322px" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style34"><strong>YEMEK PUAN:</strong></td>
                  <td class="auto-style35">
                      <asp:TextBox ID="TextBoxPuan" runat="server" Height="20px" Width="311px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style37"><strong>YEMEK KATEGORİ:</strong></td>
                  <td class="auto-style32">
                      <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="234px">
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style37">&nbsp;</td>
                  <td class="auto-style32">
                      <asp:Button ID="ButtonEkle0" runat="server" BorderColor="#FFCCFF" Font-Bold="True" Height="34px" OnClick="ButtonEkle_Click" Text="EKLE" Width="108px" />
                  </td>
              </tr>
          </table>
          </asp:Panel>
</asp:Content>
