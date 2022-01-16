<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorum.aspx.cs" Inherits="Proje1.Yorum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style19 {
            width: 67px;
        }
        .auto-style20 {
            width: 64px;
        }
        .auto-style21 {
            width: 347px;
        }
        .auto-style22 {
            width: 354px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style17">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="ButtonArtı" runat="server" Text="+" Height="28px" OnClick="ButtonArtı_Click"  Width="58px" />
                </td>
                <td class="auto-style20">
                    <asp:Button ID="ButtonEksi" runat="server" Text="-" OnClick="ButtonEksi_Click" Width="51px" CssClass="auto-style13" Height="31px" />
                </td>
                <td class="auto-style14"><strong><em>ONAYLI YORUM LİSTESİ</em></strong></td>
            </tr>
            </table>
          </asp:Panel>
      
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:DataList ID="DataList2" runat="server" Width="619px">
                            <ItemTemplate>
                                <table class="auto-style17">
                                    <tr>
                                        <td class="auto-style22" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">
                                            <strong>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                            </strong>
                                        </td>
                                        <td style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">
                                            <a href="Yorum.aspx?YorumID=<%#Eval("YorumID")%>&islem=sil"> <asp:Image ID="Image4" runat="server" Height="32px" ImageUrl="~/resimler/delete.jpg" Width="36px" /></a>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
            
                
               
         
  
<asp:Panel ID="Panel3" runat="server">
        <table class="auto-style17">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="Button1" runat="server" Text="+" Height="28px"   Width="58px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style20">
                    <asp:Button ID="Button2" runat="server" Text="-"  Width="51px" CssClass="auto-style13" Height="31px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style14"><strong><em>ONAYSIZ YORUM LİSTESİ</em></strong></td>
            </tr>
            </table>
          </asp:Panel>


    <asp:Panel ID="Panel4" runat="server">
                        <asp:DataList ID="DataList1" runat="server" Width="621px">
                            <ItemTemplate>
                                <table class="auto-style17">
                                    <tr>
                                        <td class="auto-style21" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                        </td>
                                        <td style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">
                                            <a href="Yorum.aspx?YorumID=<%#Eval("YorumID")%>&islem=sil"> <asp:Image ID="Image4" runat="server" Height="34px" ImageUrl="~/resimler/delete.jpg" Width="37px" /></a>
                                        </td>
                                        <td style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">
                                           <a href="YorumDetay.aspx?YorumID=<%#Eval("YorumID")%>">  <asp:Image ID="Image5" runat="server" Height="27px" ImageUrl="~/resimler/refresh.jpg" Width="30px" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>

</asp:Content>

