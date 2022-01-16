<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Proje1.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 100%;
            height: 278px;
        }
    .auto-style18 {
        height: 21px;
    }
    .auto-style19 {
        height: 21px;
        font-size: large;
            width: 200px;
        }
    .auto-style20 {
        font-size: large;
        height: 26px;
            width: 200px;
        }
    .auto-style21 {
        height: 26px;
    }
        .auto-style22 {
            width: 200px;
        }
        .auto-style23 {
            font-size: large;
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style23"><strong><em>AD SOYAD:</em></strong></td>
        <td>
            <asp:TextBox ID="TextBoxAd" runat="server" Width="319px" Height="19px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style19"><strong><em>MAİL:</em></strong></td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBoxMail" runat="server" Width="319px" Height="21px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style20"><strong><em>İÇERİK:</em></strong></td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBoxİcerik" runat="server" Height="108px" TextMode="MultiLine" Width="322px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23"><strong><em>YEMEK:</em></strong></td>
        <td>
            <asp:TextBox ID="TextBoxYemek" runat="server" Width="318px" Height="22px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td>
            <asp:Button ID="ButtonGüncelle" runat="server" Height="36px" OnClick="ButtonGüncelle_Click" Text="Onayla" Width="115px" />
        </td>
    </tr>
</table>
</asp:Content>
