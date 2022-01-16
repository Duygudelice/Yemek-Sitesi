<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriAdminDetay.aspx.cs" Inherits="Proje1.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            width: 245px;
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
            <td class="auto-style18" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF"><strong>KATEGORİ AD:</strong></td>
            <td style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">
                <asp:TextBox ID="TextBoxKatAd" runat="server" Height="24px" Width="190px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF"><strong>ADET:</strong></td>
            <td style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">
                <asp:TextBox ID="TextBoxAdet" runat="server" Height="20px" Width="190px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>
                <asp:Button ID="ButtonGüncelle" runat="server" Height="29px" OnClick="ButtonGüncelle_Click" Text="Güncelle" Width="117px" />
            </td>
        </tr>
    </table>
</asp:Content>
