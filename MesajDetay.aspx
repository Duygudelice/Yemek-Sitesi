<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="Proje1.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 622px;
    }
        .auto-style18 {
            margin-right: 3px;
        }
        .auto-style19 {
            width: 229px;
        }
        .auto-style20 {
            width: 229px;
            height: 27px;
        }
        .auto-style21 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
        <tr>
            <td class="auto-style20"> </td>
            <td class="auto-style21"></td>
        </tr>



        <tr>
            <td class="auto-style19"> <strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TextBoxAd" runat="server" Width="204px" CssClass="auto-style18" Height="23px"></asp:TextBox>
            </td>
        </tr>



        <tr>
            <td class="auto-style19"> <strong>Mail:</strong></td>
            <td>
                <asp:TextBox ID="TextBoxMail" runat="server" TextMode="Email" Width="205px" Height="24px"></asp:TextBox>
            </td>
        </tr>



        <tr>
            <td class="auto-style19"> <strong>Mesaj Başlığı:</strong></td>
            <td>
                <asp:TextBox ID="TextBoxBaslik" runat="server" Width="204px" Height="23px"></asp:TextBox>
            </td>
        </tr>



        <tr>
            <td class="auto-style19"> <strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="TextBoxİcerik" runat="server" Height="99px" TextMode="MultiLine" Width="210px"></asp:TextBox>
            </td>
        </tr>



        </table>


</asp:Content>
