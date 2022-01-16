<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GününYemeğiAdmin.aspx.cs" Inherits="Proje1.GününYemeğiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            width: 53px;
            height: 30px;
        }
        .auto-style19 {
            width: 55px;
            height: 30px;
        }
    .auto-style20 {
        width: 621px;
    }
        .auto-style21 {
            font-size: large;
            height: 30px;
        }
        .auto-style22 {
            width: 441px;
        }
    .auto-style23 {
        width: 619px;
        text-align: center;
        text-decoration: underline;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style17">
            <tr>
                <td class="auto-style18">
                    <asp:Button ID="ButtonArtı" runat="server" Text="+" Width="49px" OnClick="ButtonArtı_Click" Height="31px" />
                </td>
                <td class="auto-style19">
                    <asp:Button ID="ButtonEksi" runat="server" Text="-" Width="47px" OnClick="ButtonEksi_Click" Height="33px" />
                </td>
                <td class="auto-style21"><strong>GÜNÜN YEMEĞİ LİSTE</strong></td>
            </tr>
           
                </table>
        <table> <tr>
                <td class="auto-style20">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:DataList ID="DataList2" runat="server"  Width="620px">
                            <ItemTemplate>
                                <table class="auto-style17">
                                    <tr>
                                        <td class="auto-style22" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                        </td>
                                        <td style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF"><a href="GününYemeğiAdmin.aspx?YemekID=<%# Eval("YemekID") %>&islem=sec">
                                            <asp:Image ID="Image3" runat="server" CssClass="auto-style13" Height="32px" ImageUrl="~/resimler/tik.png" Width="29px" />
                                            </a>

                                        </td>
                                        <td style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">

                                           <a href="GününYemeğiAdmin.aspx?YemekID=<%# Eval("YemekID") %>&islem=kaldir"> <asp:Image ID="Image4" runat="server" Height="32px" ImageUrl="~/resimler/carp.jpg" Width="28px" /></a>

                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
                </td>
               
            </tr>
        </table>
        <table>
            <tr>
                <td class="auto-style23"><strong>SEÇİLİ OLAN GÜNÜN YEMEĞİ</strong></td>
            </tr>
        </table>
          <table> <tr>
                <td class="auto-style20">
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:DataList ID="DataList1" runat="server"  Width="620px">
                            <ItemTemplate>
                                <table class="auto-style17">
                                  
                                    <tr>

                                        <td class="auto-style22">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekAd") %>' CssClass="auto-style14"></asp:Label>
                                        </td>
                                    
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
                </td>
               
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
