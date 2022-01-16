<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Tariföner.aspx.cs" Inherits="Proje1.Tariföner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style13 {
        text-align: right;
        background-color: #FFCCCC;
    }
    .auto-style14 {
        font-weight: bold;
        font-style: italic;
        margin-left: 59px;
        background-color: #99CCFF;
    }
        .auto-style16 {
        text-align: right;
        height: 26px;
       
        background-color: #FCD8D4;
    }
    .auto-style19 {
        height: 26px;
        background-color: #FCD8D4;
    }
    .auto-style20 {
        height: 23px;
        background-color: #FCD8D4;
    }
        .auto-style21 {
            width: 100%;
            margin-left: 0px;
            background-color: #933;
            height: 638px;
        }
    .auto-style24 {
        width: 617px;
        height: 748px;
        margin-left: 5px;
        background-color: #FCD8D4;
    }
    .auto-style25 {
        background-color: #FFCCCC;
    }
    .auto-style28 {
        height: 56px;
        width: 982px;
        margin-left: 451px;
        background-color: #FFCCCC;
    }
    .auto-style29 {
        text-align: right;
        height: 56px;
        width: 981px;
        margin-left: 454px;
        background-color: #FFCCCC;
    }
    .auto-style30 {
        margin-left: 2px;
    }
    .auto-style31 {
        text-align: right;
        height: 38px;
        width: 981px;
        margin-left: 454px;
        background-color: #FFCCCC;
    }
    .auto-style32 {
        height: 38px;
        width: 982px;
        margin-left: 451px;
        background-color: #FFCCCC;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style24">
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style20"></td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Tarif Ad:</strong></td>
        <td class="auto-style25">
            <asp:TextBox ID="TextTarif" runat="server" Width="457px" Height="18px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Tarif Malzeme:</strong></td>
        <td class="auto-style25">
            <asp:TextBox ID="TextMalzeme" runat="server" Height="173px" TextMode="MultiLine" Width="458px" CssClass="auto-style30"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Yapılış:</strong></td>
        <td class="auto-style25">
            <asp:TextBox ID="TextYapilis" runat="server" Height="286px" TextMode="MultiLine" Width="461px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Resim</strong></td>
        <td class="auto-style25">
            <asp:FileUpload ID="FileUploadtarifÖner" runat="server" Width="465px" Height="29px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style29"><strong>Tarif Öneren:</strong></td>
        <td class="auto-style28">
            <asp:TextBox ID="TextÖneren" runat="server" Width="455px" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style31"><strong>Mail Adresi:</strong></td>
        <td class="auto-style32">
            <asp:TextBox ID="TextMail" runat="server" TextMode="Email" Width="458px" Height="18px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25"><strong><em>
            <asp:Button ID="ButtonTarifÖner" runat="server" BackColor="#FFFF99" CssClass="auto-style14" Height="38px" Text="Öner" Width="150px" OnClick="ButtonTarifÖner_Click" />
            </em></strong></td>
    </tr>
</table>
</asp:Content>
