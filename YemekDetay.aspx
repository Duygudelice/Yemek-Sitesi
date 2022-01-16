<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Proje1.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style16 {
            font-size: small;
        }
        .auto-style19 {
            height: 26px;
             background-color:#FCD8D4;
        }
        .auto-style20 {
            text-decoration: underline;
            font-size: large;
        }
        .auto-style21 {
            margin-left: 2px;
        }
    .auto-style22 {
        width: 100%;
    }
    .auto-style23 {
        height: 23px;
    }
        .auto-style24 {
            width: 100%;
            margin-left: 0px;
        }
        .auto-style27 {
            width: 623px;
        }
        .auto-style29 {
            text-align: center;
            width: 222px;
        }
        .auto-style31 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style34 {
            width: 621px;
        }
    .auto-style35 {
        width: 234px;
    }
    .auto-style36 {
        width: 493px;
    }
    .auto-style37 {
        height: 38px;
        width: 141px;
    }
    .auto-style38 {
        width: 234px;
        height: 38px;
    }
    .auto-style39 {
        width: 141px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p class="auto-style7">
        <strong>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style15" Text="Label"></asp:Label>
        </strong>
    </p>
    <p>
        <div class="auto-style27">
        <asp:DataList ID="DataList1" runat="server" Width="624px">
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td><strong>Yemek Resim:</strong></td>
                        <td>
                            <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("YemekResim") %>' Height="277px" Width="493px" />
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Yemek Malzeme:</strong></td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style23">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><strong>Yemek Tarif:</strong></td>
                        <td class="auto-style23">
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style23">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><strong>Yemek Tarih:</strong></td>
                        <td class="auto-style23"><strong>
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong>Yemek Puan:</strong></td>
                        <td>
                            <strong>
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: none; border-width: thick; border-color: #C0C0C0">&nbsp;</td>
                        <td style="border-bottom-style: none; border-width: thick; border-color: #C0C0C0">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
           
        </asp:DataList>
            </div>
        <asp:DataList ID="DataList2" runat="server" Width="618px">
            <ItemTemplate>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style31" style="border-style: inset; border-width: thick; border-color: #C0C0C0; font-family: 'Felix Titling';"><strong>YORUMLAR</strong></td>
                    </tr>
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label9" runat="server" CssClass="auto-style13" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: solid; border-bottom-color: #FFFFFF">
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Yorumİcerik") %>'></asp:Label>
                            &nbsp;-<asp:Label ID="Label11" runat="server" CssClass="auto-style16" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <div CssClass="auto-style32" >
                <table CssClass="auto-style25" class="auto-style34"  >
                    <tr >
                        <td class="auto-style29" style="border-bottom-style: solid; border-bottom-color: #FFFFFF" >
                            <br />
                            <span class="auto-style20" ><strong ><em >Yorum Yapma Paneli</em></strong></span></td>
                    </tr>
                    <tr >
                        <td style="border-bottom-style: solid; border-bottom-color: #FFFFFF" >
                            <table class="auto-style36">
                                <tr >
                                    <td class="auto-style39" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF" >Ad Soyad:</td>
                                    <td class="auto-style35" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF" >
                                        <asp:TextBox ID="TextYorumAd" runat="server" Height="16px" Width="324px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr >
                                    <td class="auto-style39" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF" >Mail:</td>
                                    <td class="auto-style35" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF" >
                                        <asp:TextBox ID="TextYorumMail" runat="server" Height="16px" Width="323px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr >
                                    <td class="auto-style39" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF" >Yorumunuz:</td>
                                    <td class="auto-style35" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF"  >
                                        <asp:TextBox ID="TextYorumİcer" runat="server" Height="165px" TextMode="MultiLine" Width="329px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr >
                                    <td class="auto-style37"></td>
                                    <td class="auto-style38"  >
                                        <asp:Button ID="Button5" runat="server" Height="30px" Text="Gönder" Width="92px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
        </div>
            </asp:Content>

