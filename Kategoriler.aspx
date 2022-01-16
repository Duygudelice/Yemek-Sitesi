<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Proje1.Kategoriler" %>
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
            width: 355px;
        }
        .auto-style35 {
            margin-left: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <div class="auto-style18">
        <table class="auto-style17">
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="ButtonArtı" runat="server" Font-Size="Medium" Text="+" Width="46px" Font-Bold="True" OnClick="ButtonArtı_Click" />
                </td>
                <td class="auto-style22"><strong>
                    <asp:Button ID="ButtonEksi" runat="server" Text="-" Width="46px" Font-Bold="True" Font-Italic="False" OnClick="ButtonEksi_Click" Height="31px" />
                    </strong></td>
                <td class="auto-style23"><strong><em>KATEGORİ LİSTESİ</em></strong></td>
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
                              <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label></a>
                          </td>

                          <td class="auto-style19" style="border-style: none none solid none; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                              <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil">
                              <asp:Image ID="Image2" runat="server" Height="21px" ImageUrl="~/resimler/delete.jpg" Width="29px" /></a>
                          </td>
                          <td class="auto-style19" style="border-style: none none solid none; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                              <a href="KategoriAdminDetay.aspx?Kategoriid=<%#Eval("Kategoriid")%>"><asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/resimler/refresh.jpg" Width="27px" /></a>
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
                      <asp:Button ID="ButtonArtı0" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="ButtonArtı0_Click" Text="+" Width="46px" />
                  </td>
                  <td class="auto-style30"><strong>
                      <asp:Button ID="ButtonEksi0" runat="server" CssClass="auto-style28" Font-Bold="True" OnClick="ButtonEksi0_Click" Text="-" Width="46px" Height="28px" />
                      </strong></td>
                  <td class="auto-style31"><strong><em>KATEGORİ <span class="auto-style14">EKLEME</span></em></strong></td>
              </tr>
          </table>
      </asp:Panel>
           <asp:Panel ID="Panel4" runat="server">
          <table>
              <tr>
                  <td class="auto-style34" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">
                  
                      <strong>KATEGORİ AD:</strong></td>
                  <td class="auto-style32" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">
                      <asp:TextBox ID="TextBoxAd" runat="server" Height="25px" Width="235px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style34">&nbsp;</td>
                  <td class="auto-style32">
                      <asp:Button ID="ButtonEkle" runat="server" BorderColor="#FFCCFF" Font-Bold="True" Height="34px" Text="EKLE" Width="136px" OnClick="ButtonEkle_Click" CssClass="auto-style35" />
                  </td>
              </tr>
          </table>
          </asp:Panel>
</asp:Content>
