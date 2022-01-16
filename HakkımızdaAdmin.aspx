<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="Proje1.HakkımızdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            width: 75px;
        }
        .auto-style20 {
            text-align: center;
        }
        .auto-style22 {
            margin-left: 156px;
        }
        .auto-style24 {
            width: 75px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style20">
            <strong><em><span class="auto-style14">HAKKIMIZDA YAZISI GÜNCELLEME</span></em></strong></div>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
         <table class="auto-style17">
             <tr>
                 <td class="auto-style18">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style24"><strong>METİN:</strong></td>
                 <td>
                     <asp:TextBox ID="TextBoxMetin" runat="server" Height="385px" TextMode="MultiLine" Width="535px" CssClass="auto-style13"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style24">&nbsp;</td>
                 <td>
                     <asp:Button ID="ButtonGüncelle" runat="server" Height="39px" OnClick="ButtonGüncelle_Click" Text="Güncelle" Width="167px" CssClass="auto-style22" />
                 </td>
             </tr>
         </table>
    </asp:Panel>
</asp:Content>
