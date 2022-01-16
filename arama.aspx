<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="arama.aspx.cs" Inherits="Proje1.arama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style19 {
        width: 100%;
    }
    .auto-style20 {
        font-size: x-large;
    }
        .auto-style24 {
            width: 623px;
            height: 429px;
            background-color: #FFFFFF;
        }
        .auto-style27 {
            text-align: center;
            height: 52px;
            background-color:#FCD8D4;
        }
        .auto-style28 {
            width: 195px;
            background-color: #FCD8D4;
        }
        .auto-style29 {
            background-color: #FCD8D4;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="626px">
    <ItemTemplate>
        <table class="auto-style24">
            <tr>
                <td class="auto-style27" colspan="2"><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style20" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Yemek Malzeme:</strong></td>
                <td class="auto-style29">
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Yemek Tarif:</strong></td>
                <td class="auto-style29">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Yemek Resim:</strong></td>
                <td class="auto-style29">
                    <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("YemekResim") %>' Height="255px" Width="414px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Yemek Tarih:</strong></td>
                <td class="auto-style29">
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Yemek Puan:</strong></td>
                <td class="auto-style29">
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Yemek Kategori:</strong></td>
                <td class="auto-style29">
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
