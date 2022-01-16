<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ÖnerDetay.aspx.cs" Inherits="Proje1.ÖnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 635px;
    }
    .auto-style18 {
        width: 587px;
    }
    .auto-style19 {
        width: 587px;
        height: 23px;
    }
    .auto-style20 {
        width: 635px;
        height: 23px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style18">Tarif Ad:</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBoxAd" runat="server" Width="356px" Height="16px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Tarif Malzeme:</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBoxMalzeme" runat="server" TextMode="MultiLine" Height="94px" Width="361px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Tarif Yapılış:</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBoxYapilis" runat="server" TextMode="MultiLine" Height="269px" Width="362px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Tarif Resmi:</td>
            <td class="auto-style20">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <asp:Image ID="Image3" runat="server" Height="160px" ImageUrl='<%# Eval("TarifResim") %>' Width="346px" />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Tarif Öneren:</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBoxÖneren" runat="server" Width="356px" Height="16px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Mail:</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBoxMail" runat="server" TextMode="Email" Width="354px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Yemeğin Kategorisi:</td>
            <td class="auto-style17">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="364px" Height="17px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style17">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style17">
                <asp:Button ID="ButtonOnay" runat="server" Height="30px" Text="Onayla" Width="101px" OnClick="ButtonOnay_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
