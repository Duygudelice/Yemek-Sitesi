<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekAdmin.aspx.cs" Inherits="Proje1.YemekAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            width: 223px;
        }
        .auto-style19 {
            width: 223px;
            height: 40px;
        }
        .auto-style20 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBoxAd" runat="server" Height="27px" Width="379px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yemek Malzeme:</strong></td>
            <td>
                <asp:TextBox ID="TextBoxMalzeme" runat="server" Height="135px" TextMode="MultiLine" Width="383px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yemek Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBoxTarif" runat="server" Height="204px" TextMode="MultiLine" Width="382px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yemek Puan:</strong></td>
            <td>
                <asp:TextBox ID="TextBoxPuan" runat="server" Height="29px" Width="343px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yemek Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="240px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yemek Fotoğraf:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="235px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Var Olan Fotoğraf:</strong></td>
            <td>
                <asp:DataList ID="DataList1" runat="server" Width="358px">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("YemekResim") %>' Width="368px" Height="212px" />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>Slider Fotoğraf Durum:</strong></td>
            <td class="auto-style20">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Seçili" />
&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Seçili Değil" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>
                <asp:Button ID="ButtonGüncelle" runat="server" Height="34px" OnClick="ButtonGüncelle_Click" Text="GÜNCELLE" Width="101px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
