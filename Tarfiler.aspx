<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Tarfiler.aspx.cs" Inherits="Proje1.Tarfiler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 100%;
        }
        .auto-style21 {
            height: 23px;
        }
    .auto-style25 {
        width: 1202px;
        height: 23px;
         background-color: #FFCCCC;
    }
    .auto-style26 {
        width: 1202px;
        height: 20px;
        background-color: #FFCCCC;
        margin-left: 100px;
    }
    .auto-style27 {
        height: 20px;
        width: 181px;
        margin-left: 100px;
        background-color: #FFCCCC;
            font-size: larger;
        }
    .auto-style28 {
        height: 23px;
            width: 181px;
            background-color: #FFCCCC;
        }
    .auto-style29 {
        width: 626px;
        height: 20px;
        margin-left: 0px;
        background-color: #FFFFFF;
    }
        .auto-style30 {
            margin-right: 5px;
        }
        .auto-style31 {
            background-color: #FFCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="620px" CssClass="auto-style30">
        <ItemTemplate>
            <table class="auto-style29">
                <tr>
                    <td colspan="2" class="auto-style31">
                        <a href="YemekDetay.aspx?YemekID=<%# Eval("YemekID") %>"> <asp:Image ID="Image3" runat="server" Height="299px" ImageUrl='<%# Eval("YemekResim") %>' Width="618px" /></a>
                    </td>
                </tr>
                <tr>
                   <td class="auto-style27"><strong>Yemek Ad:</strong></td>
                    <td class="auto-style26">
                      <a href="YemekDetay.aspx?YemekID=<%# Eval("YemekID") %>">  <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>' Font-Size="Large"></asp:Label></a>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28"></td>
                    <td class="auto-style25"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
