<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesaj.aspx.cs" Inherits="Proje1.Mesaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style19 {
            height: 22px;
            font-size: x-large;
        }
        .auto-style20 {
            height: 22px;
            width: 58px;
        }
        .auto-style21 {
            height: 22px;
            width: 43px;
        }
        .auto-style22 {
            margin-left: 5px;
        }
        .auto-style23 {
            height: 22px;
            width: 632px;
        }
        .auto-style24 {
            width: 313px;
        }
        .auto-style26 {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style17">
            <tr>
                <td class="auto-style21">
                    <asp:Button ID="ButtonArtı" runat="server" Text="+" Width="50px" Height="28px" OnClick="ButtonArtı_Click" />
                </td>
                <td class="auto-style20">
                    <asp:Button ID="ButtonEksi" runat="server" CssClass="auto-style22" Text="-" Width="52px" Height="27px" OnClick="ButtonEksi_Click" />
                </td>
                <td class="auto-style19"><strong>MESAJ LİSTESİ</strong></td>
            </tr>
            </table>
        <table>
            <tr>
                <td class="auto-style23">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:DataList ID="DataList1" runat="server" Width="623px">
                            <ItemTemplate>
                                <table class="auto-style17">
                                    <tr>
                                        <td class="auto-style24" style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                                        </td>
                                        <td style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF" class="auto-style26">
                                            <a href="MesajDetay.aspx?MesajID=<%# Eval("MesajID")%> "> <asp:Image ID="Image2" runat="server" Height="34px" ImageUrl="~/resimler/indir (1).png" Width="43px" /> </a>
                                            <td style="border-bottom-style: groove; border-width: thin; border-color: #FFFFFF">


                                                 <a href="Mesaj.aspx?MesajID=<%#Eval("MesajID")%>&islem=sil"> <asp:Image ID="Image4" runat="server" Height="34px" ImageUrl="~/resimler/delete.jpg" Width="37px" /></a>
                                                
                                            </td>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>
                </td>
                
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
